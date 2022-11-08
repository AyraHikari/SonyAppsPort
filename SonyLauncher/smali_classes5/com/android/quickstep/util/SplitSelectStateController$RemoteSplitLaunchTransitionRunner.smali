.class Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;
.super Ljava/lang/Object;
.source "SplitSelectStateController.java"

# interfaces
.implements Lcom/android/systemui/shared/system/RemoteTransitionRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/SplitSelectStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteSplitLaunchTransitionRunner"
.end annotation


# instance fields
.field private final mInitialTaskId:I

.field private final mInitialTaskPendingIntent:Landroid/app/PendingIntent;

.field private final mSecondTaskId:I

.field private final mSuccessCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/quickstep/util/SplitSelectStateController;


# direct methods
.method constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController;ILandroid/app/PendingIntent;ILjava/util/function/Consumer;)V
    .locals 0
    .param p2, "initialTaskId"    # I
    .param p3, "initialTaskPendingIntent"    # Landroid/app/PendingIntent;
    .param p4, "secondTaskId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/PendingIntent;",
            "I",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 231
    .local p5, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iput-object p1, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput p2, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mInitialTaskId:I

    .line 233
    iput-object p3, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mInitialTaskPendingIntent:Landroid/app/PendingIntent;

    .line 234
    iput p4, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSecondTaskId:I

    .line 235
    iput-object p5, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    .line 236
    return-void
.end method


# virtual methods
.method synthetic lambda$startAnimation$0$com-android-quickstep-util-SplitSelectStateController$RemoteSplitLaunchTransitionRunner(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "finishCallback"    # Ljava/lang/Runnable;

    .line 243
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 244
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSuccessCallback:Ljava/util/function/Consumer;

    if-eqz v0, :cond_0

    .line 245
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 247
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "transition"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/window/TransitionInfo;
    .param p3, "t"    # Landroid/view/SurfaceControl$Transaction;
    .param p4, "finishCallback"    # Ljava/lang/Runnable;

    .line 241
    iget v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mInitialTaskId:I

    iget-object v1, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mInitialTaskPendingIntent:Landroid/app/PendingIntent;

    iget v2, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->mSecondTaskId:I

    new-instance v5, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, p4}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Ljava/lang/Runnable;)V

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsSplitLaunchAnimator(ILandroid/app/PendingIntent;ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    .line 249
    iget-object v0, p0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->this$0:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->resetState()V

    .line 250
    return-void
.end method
