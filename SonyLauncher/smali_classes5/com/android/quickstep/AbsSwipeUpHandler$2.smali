.class Lcom/android/quickstep/AbsSwipeUpHandler$2;
.super Ljava/lang/Object;
.source "AbsSwipeUpHandler.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/AbsSwipeUpHandler;->onLauncherStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mHandled:Z

.field final synthetic this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

.field final synthetic val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field final synthetic val$dragLayer:Landroid/view/View;

.field final synthetic val$traceToken:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/quickstep/AbsSwipeUpHandler;Ljava/lang/Object;Landroid/view/View;Lcom/android/launcher3/statemanager/StatefulActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/AbsSwipeUpHandler;

    .line 511
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$2;, "Lcom/android/quickstep/AbsSwipeUpHandler$2;"
    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iput-object p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$traceToken:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$dragLayer:Landroid/view/View;

    iput-object p4, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$onDraw$0$com-android-quickstep-AbsSwipeUpHandler$2(Landroid/view/View;)V
    .locals 1
    .param p1, "dragLayer"    # Landroid/view/View;

    .line 523
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$2;, "Lcom/android/quickstep/AbsSwipeUpHandler$2;"
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method

.method public onDraw()V
    .locals 2

    .line 516
    .local p0, "this":Lcom/android/quickstep/AbsSwipeUpHandler$2;, "Lcom/android/quickstep/AbsSwipeUpHandler$2;"
    iget-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    if-eqz v0, :cond_0

    .line 517
    return-void

    .line 519
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->mHandled:Z

    .line 521
    sget-object v0, Lcom/android/launcher3/util/TraceHelper;->INSTANCE:Lcom/android/launcher3/util/TraceHelper;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$traceToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/TraceHelper;->endSection(Ljava/lang/Object;)V

    .line 522
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$dragLayer:Landroid/view/View;

    new-instance v1, Lcom/android/quickstep/AbsSwipeUpHandler$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/quickstep/AbsSwipeUpHandler$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/AbsSwipeUpHandler$2;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 524
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->val$activity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v1, v1, Lcom/android/quickstep/AbsSwipeUpHandler;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eq v0, v1, :cond_1

    .line 525
    return-void

    .line 528
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$2;->this$0:Lcom/android/quickstep/AbsSwipeUpHandler;

    iget-object v0, v0, Lcom/android/quickstep/AbsSwipeUpHandler;->mStateCallback:Lcom/android/quickstep/MultiStateCallback;

    sget v1, Lcom/android/quickstep/AbsSwipeUpHandler;->STATE_LAUNCHER_DRAWN:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/MultiStateCallback;->setState(I)V

    .line 529
    return-void
.end method
