.class public final synthetic Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic f$1:Lcom/android/launcher3/statemanager/StateManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/statemanager/StateManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/TaskViewUtils$7$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/statemanager/StateManager;

    invoke-static {v0, v1}, Lcom/android/quickstep/TaskViewUtils$7;->lambda$onAnimationEnd$1(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statemanager/StateManager;)V

    return-void
.end method
