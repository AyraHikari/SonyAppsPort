.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic f$1:Lcom/android/quickstep/views/TaskView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Lcom/android/quickstep/views/TaskView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda12;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda12;->f$1:Lcom/android/quickstep/views/TaskView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda12;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda12;->f$1:Lcom/android/quickstep/views/TaskView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$startNewTask$19$com-android-quickstep-AbsSwipeUpHandler(Lcom/android/quickstep/views/TaskView;Ljava/lang/Boolean;)V

    return-void
.end method
