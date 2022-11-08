.class Lcom/android/quickstep/AbsSwipeUpHandler$3;
.super Ljava/lang/Object;
.source "AbsSwipeUpHandler.java"

# interfaces
.implements Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->getMotionPauseListener()Lcom/android/quickstep/util/MotionPauseDetector$OnMotionPauseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 612
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$3;, "Lcom/android/quickstep/AbsSwipeUpHandler$3;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$3;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionPauseChanged(Z)V
    .locals 1
    .param p1, "isPaused"    # Z

    .line 622
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$3;, "Lcom/android/quickstep/AbsSwipeUpHandler$3;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$3;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {v0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->-$$Nest$fputmIsMotionPaused(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V

    .line 623
    return-void
.end method

.method public onMotionPauseDetected()V
    .locals 2

    .line 615
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$3;, "Lcom/android/quickstep/AbsSwipeUpHandler$3;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$3;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->-$$Nest$fputmHasMotionEverBeenPaused(Lcom/android/quickstep/AbsSwipeUpHandler;Z)V

    .line 616
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$3;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-static {v0, v1, v1}, Lcom/android/quickstep/AbsSwipeUpHandler;->-$$Nest$mmaybeUpdateRecentsAttachedState(Lcom/android/quickstep/AbsSwipeUpHandler;ZZ)V

    .line 617
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$3;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-virtual {v0}, Lcom/android/quickstep/AbsSwipeUpHandler;->performHapticFeedback()V

    .line 618
    return-void
.end method
