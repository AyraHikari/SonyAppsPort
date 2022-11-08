.class public final synthetic Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/statemanager/StateManager;

.field public final synthetic f$1:I

.field public final synthetic f$2:Lcom/android/launcher3/statemanager/BaseState;

.field public final synthetic f$3:Lcom/android/launcher3/statemanager/BaseState;

.field public final synthetic f$4:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/statemanager/StateManager;ILcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/statemanager/StateManager;

    iput p2, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p4, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$3:Lcom/android/launcher3/statemanager/BaseState;

    iput-object p5, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$4:Landroid/animation/Animator$AnimatorListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/statemanager/StateManager;

    iget v1, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$2:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v3, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$3:Lcom/android/launcher3/statemanager/BaseState;

    iget-object v4, p0, Lcom/android/launcher3/statemanager/StateManager$$ExternalSyntheticLambda0;->f$4:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/statemanager/StateManager;->lambda$goToState$0$com-android-launcher3-statemanager-StateManager(ILcom/android/launcher3/statemanager/BaseState;Lcom/android/launcher3/statemanager/BaseState;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
