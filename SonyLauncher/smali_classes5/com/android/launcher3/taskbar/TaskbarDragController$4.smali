.class Lcom/android/launcher3/taskbar/TaskbarDragController$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskbarDragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarDragController;->animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCanceled:Z

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field final synthetic val$dragSurface:Landroid/view/SurfaceControl;

.field final synthetic val$tx:Landroid/view/SurfaceControl$Transaction;

.field final synthetic val$viewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/ViewRootImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 483
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$tx:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$dragSurface:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$viewRoot:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 484
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->mCanceled:Z

    return-void
.end method

.method private cleanUpSurface()V
    .locals 5

    .line 501
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$tx:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V

    .line 502
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->-$$Nest$mmaybeOnDragEnd(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    .line 505
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 506
    .local v0, "transaction":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$dragSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 507
    new-instance v1, Landroid/window/SurfaceSyncer;

    invoke-direct {v1}, Landroid/window/SurfaceSyncer;-><init>()V

    .line 508
    .local v1, "syncer":Landroid/window/SurfaceSyncer;
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarDragController$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/launcher3/taskbar/TaskbarDragController$4$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1, v2}, Landroid/window/SurfaceSyncer;->setupSync(Ljava/lang/Runnable;)I

    move-result v2

    .line 509
    .local v2, "syncId":I
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->val$viewRoot:Landroid/view/ViewRootImpl;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/window/SurfaceSyncer;->addToSync(ILandroid/view/View;)Z

    .line 510
    invoke-virtual {v1, v2, v0}, Landroid/window/SurfaceSyncer;->addTransactionToSync(ILandroid/view/SurfaceControl$Transaction;)V

    .line 511
    invoke-virtual {v1, v2}, Landroid/window/SurfaceSyncer;->markSyncReady(I)V

    .line 512
    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->this$0:Lcom/android/launcher3/taskbar/TaskbarDragController;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher3/taskbar/TaskbarDragController;->-$$Nest$fputmReturnAnimator(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/animation/ValueAnimator;)V

    .line 513
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 488
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->cleanUpSurface()V

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->mCanceled:Z

    .line 490
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 494
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 495
    return-void

    .line 497
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController$4;->cleanUpSurface()V

    .line 498
    return-void
.end method
