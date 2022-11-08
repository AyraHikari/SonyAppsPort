.class Lcom/android/quickstep/AbsSwipeUpHandler$4;
.super Ljava/lang/Object;
.source "AbsSwipeUpHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->onGestureStarted(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHandled:Z

.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 874
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$4;, "Lcom/android/quickstep/AbsSwipeUpHandler$4;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->mHandled:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onDraw$0$com-android-quickstep-AbsSwipeUpHandler$4()V
    .locals 1

    .line 890
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$4;, "Lcom/android/quickstep/AbsSwipeUpHandler$4;"
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 4

    .line 879
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$4;, "Lcom/android/quickstep/AbsSwipeUpHandler$4;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->mHandled:Z

    if-eqz v0, :cond_0

    .line 880
    return-void

    .line 882
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->mHandled:Z

    .line 884
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/16 v1, 0xb

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;IJ)V

    .line 886
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;I)V

    .line 889
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$4;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mRecentsView:Lcom/android/quickstep/views/RecentsView;

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/AbsSwipeUpHandler$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler$4;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 891
    return-void
.end method
