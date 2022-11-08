.class public Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;
.super Ljava/lang/Object;
.source "TaskOverlayFactory.java"

# interfaces
.implements Lcom/android/quickstep/TaskOverlayFactory$OverlayUICallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "OverlayUICallbacksImpl"
.end annotation


# instance fields
.field protected final mIsAllowedByPolicy:Z

.field protected final mTask:Lcom/android/systemui/shared/recents/model/Task;

.field final synthetic this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;ZLcom/android/systemui/shared/recents/model/Task;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;
    .param p2, "isAllowedByPolicy"    # Z
    .param p3, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 380
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.OverlayUICallbacksImpl;"
    iput-object p1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    iput-boolean p2, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mIsAllowedByPolicy:Z

    .line 382
    iput-object p3, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 383
    return-void
.end method

.method static synthetic lambda$onSplit$1(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V
    .locals 0
    .param p0, "rec$"    # Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    .line 392
    invoke-static {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->-$$Nest$menterSplitSelect(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$onClearAll$3$com-android-quickstep-TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl()V
    .locals 1

    .line 402
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.OverlayUICallbacksImpl;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->startClearAll()V

    return-void
.end method

.method synthetic lambda$onScreenshot$0$com-android-quickstep-TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl()V
    .locals 2

    .line 387
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.OverlayUICallbacksImpl;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    iget-object v1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->saveScreenshot(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method synthetic lambda$onSomcFreeForm$2$com-android-quickstep-TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl()V
    .locals 2

    .line 397
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.OverlayUICallbacksImpl;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    iget-object v1, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->startSomcFreeForm(Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public onClearAll()V
    .locals 2

    .line 402
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.OverlayUICallbacksImpl;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    new-instance v1, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    .line 403
    return-void
.end method

.method public onScreenshot()V
    .locals 2

    .line 387
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.OverlayUICallbacksImpl;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    new-instance v1, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    .line 388
    return-void
.end method

.method public onSomcFreeForm()V
    .locals 2

    .line 397
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.OverlayUICallbacksImpl;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    new-instance v1, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    .line 398
    return-void
.end method

.method public onSplit()V
    .locals 2

    .line 392
    .local p0, "this":Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;, "Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay<TT;>.OverlayUICallbacksImpl;"
    iget-object v0, p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->this$0:Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    new-instance v1, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->endLiveTileMode(Ljava/lang/Runnable;)V

    .line 393
    return-void
.end method
