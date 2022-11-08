.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda35;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field public final synthetic f$1:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda35;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda35;->f$1:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda35;->f$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda35;->f$1:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->lambda$startNewTask$32$com-android-quickstep-AbsSwipeUpHandler(Ljava/util/function/Consumer;)V

    return-void
.end method
