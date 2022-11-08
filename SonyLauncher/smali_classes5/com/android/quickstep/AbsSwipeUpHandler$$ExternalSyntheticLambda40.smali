.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic f$1:Ljava/util/function/Consumer;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;->f$1:Ljava/util/function/Consumer;

    iput-boolean p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;->f$1:Ljava/util/function/Consumer;

    iget-boolean v2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda40;->f$2:Z

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$startNewTask$31$com-android-quickstep-AbsSwipeUpHandler(Ljava/util/function/Consumer;ZLjava/lang/Boolean;)V

    return-void
.end method
