.class public Lcom/android/launcher3/taskbar/TaskbarDragController;
.super Lcom/android/launcher3/dragndrop/DragController;
.source "TaskbarDragController.java"

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragController<",
        "Lcom/android/launcher3/taskbar/BaseTaskbarContext;",
        ">;",
        "Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;"
    }
.end annotation


# static fields
.field private static DEBUG_DRAG_SHADOW_SURFACE:Z


# instance fields
.field mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

.field private final mDragIconSize:I

.field private mIsSystemDragInProgress:Z

.field private mRegistrationX:I

.field private mRegistrationY:I

.field private mReturnAnimator:Landroid/animation/ValueAnimator;

.field private final mTempXY:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDragIconSize(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationX(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegistrationY(Lcom/android/launcher3/taskbar/TaskbarDragController;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmReturnAnimator(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/animation/ValueAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$mmaybeOnDragEnd(Lcom/android/launcher3/taskbar/TaskbarDragController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG_DRAG_SHADOW_SURFACE()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->DEBUG_DRAG_SHADOW_SURFACE:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 84
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->DEBUG_DRAG_SHADOW_SURFACE:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V
    .locals 2
    .param p1, "activity"    # Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    .line 102
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    .line 87
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, "resources":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->taskbar_icon_drag_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/taskbar/TaskbarDragController;)Lcom/android/launcher3/DropTarget$DragObject;
    .locals 1
    .param p0, "x0"    # Lcom/android/launcher3/taskbar/TaskbarDragController;

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    return-object v0
.end method

.method private animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V
    .locals 21
    .param p1, "btv"    # Lcom/android/launcher3/BubbleTextView;
    .param p2, "dragEvent"    # Landroid/view/DragEvent;

    .line 430
    move-object/from16 v9, p0

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v10

    .line 433
    .local v10, "dragSurface":Landroid/view/SurfaceControl;
    move-object/from16 v0, p1

    .line 434
    .local v0, "target":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v11

    .line 435
    .local v11, "tag":Ljava/lang/Object;
    instance-of v1, v11, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_2

    .line 436
    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 437
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v2, v9, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v2, v2, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarViewController:Lcom/android/launcher3/taskbar/TaskbarViewController;

    .line 438
    .local v2, "taskbarViewController":Lcom/android/launcher3/taskbar/TaskbarViewController;
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v4, -0x66

    if-ne v3, v4, :cond_0

    .line 440
    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getAllAppsButtonView()Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 441
    :cond_0
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v3, :cond_1

    .line 443
    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    aput v5, v3, v4

    .line 444
    invoke-static {v3}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofItemIds(Lcom/android/launcher3/util/IntSet;)Ljava/util/function/Predicate;

    move-result-object v3

    .line 443
    invoke-static {v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->forFolderMatch(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v3

    .line 445
    .local v3, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    .line 446
    .end local v3    # "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    move-object v12, v0

    goto :goto_0

    :cond_1
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_2

    .line 448
    nop

    .line 449
    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    iget-object v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 448
    invoke-static {v3, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->ofPackages(Ljava/util/Set;Landroid/os/UserHandle;)Ljava/util/function/Predicate;

    move-result-object v3

    .line 450
    .local v3, "packageUserMatcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {v2, v3}, Lcom/android/launcher3/taskbar/TaskbarViewController;->getFirstIconMatch(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    goto :goto_0

    .line 455
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v2    # "taskbarViewController":Lcom/android/launcher3/taskbar/TaskbarViewController;
    .end local v3    # "packageUserMatcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_2
    move-object v12, v0

    .end local v0    # "target":Landroid/view/View;
    .local v12, "target":Landroid/view/View;
    :goto_0
    iget-object v0, v9, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 456
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 459
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getOffsetX()F

    move-result v1

    sub-float v13, v0, v1

    .line 460
    .local v13, "fromX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getOffsetY()F

    move-result v1

    sub-float v14, v0, v1

    .line 461
    .local v14, "fromY":F
    invoke-virtual {v12}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v15

    .line 462
    .local v15, "toPosition":[I
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, v9, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    int-to-float v1, v1

    div-float v16, v0, v1

    .line 463
    .local v16, "toScale":F
    move-object/from16 v8, p1

    if-ne v12, v8, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    move v3, v0

    .line 464
    .local v3, "toAlpha":F
    invoke-virtual {v12}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v7

    .line 465
    .local v7, "viewRoot":Landroid/view/ViewRootImpl;
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    move-object v6, v0

    .line 466
    .local v6, "tx":Landroid/view/SurfaceControl$Transaction;
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    .line 467
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 468
    iget-object v0, v9, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 469
    iget-object v5, v9, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/launcher3/taskbar/TaskbarDragController$3;

    move-object v0, v4

    move-object/from16 v1, p0

    move/from16 v2, v16

    move-object/from16 v17, v11

    move-object v11, v4

    .end local v11    # "tag":Ljava/lang/Object;
    .local v17, "tag":Ljava/lang/Object;
    move-object v4, v6

    move-object/from16 v18, v12

    move-object v12, v5

    .end local v12    # "target":Landroid/view/View;
    .local v18, "target":Landroid/view/View;
    move-object v5, v10

    move-object/from16 v19, v6

    .end local v6    # "tx":Landroid/view/SurfaceControl$Transaction;
    .local v19, "tx":Landroid/view/SurfaceControl$Transaction;
    move v6, v13

    move/from16 v20, v13

    move-object v13, v7

    .end local v7    # "viewRoot":Landroid/view/ViewRootImpl;
    .local v13, "viewRoot":Landroid/view/ViewRootImpl;
    .local v20, "fromX":F
    move-object v7, v15

    move v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/taskbar/TaskbarDragController$3;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;FFLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;F[IF)V

    invoke-virtual {v12, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 483
    iget-object v0, v9, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragController$4;

    move-object/from16 v2, v19

    .end local v19    # "tx":Landroid/view/SurfaceControl$Transaction;
    .local v2, "tx":Landroid/view/SurfaceControl$Transaction;
    invoke-direct {v1, v9, v2, v10, v13}, Lcom/android/launcher3/taskbar/TaskbarDragController$4;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/ViewRootImpl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 515
    iget-object v0, v9, Lcom/android/launcher3/taskbar/TaskbarDragController;->mReturnAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 516
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static synthetic lambda$startDrag$2(Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "ev"    # Landroid/view/MotionEvent;

    .line 258
    return-void
.end method

.method static synthetic lambda$startInternalDrag$1(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 0
    .param p0, "target"    # Landroid/view/View;
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "success"    # Z

    .line 212
    return-void
.end method

.method private maybeOnDragEnd()V
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    .line 418
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onDragEnd()V

    .line 420
    :cond_0
    return-void
.end method

.method private onSystemDragStarted(Lcom/android/launcher3/BubbleTextView;)V
    .locals 2
    .param p1, "btv"    # Lcom/android/launcher3/BubbleTextView;

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    .line 384
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 401
    return-void
.end method

.method private startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "dragPreviewProvider"    # Lcom/android/launcher3/graphics/DragPreviewProvider;
    .param p3, "iconShift"    # Landroid/graphics/Point;

    .line 132
    instance-of v0, p1, Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return v0

    .line 135
    :cond_0
    const-string v0, "Main"

    const-string v1, "onTaskbarItemLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 137
    .local v0, "btv":Lcom/android/launcher3/BubbleTextView;
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->onDragStart()V

    .line 138
    new-instance v1, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->post(Ljava/lang/Runnable;)Z

    .line 147
    const/4 v1, 0x1

    return v1
.end method

.method private startInternalDrag(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 23
    .param p1, "btv"    # Lcom/android/launcher3/BubbleTextView;
    .param p2, "dragPreviewProvider"    # Lcom/android/launcher3/graphics/DragPreviewProvider;

    .line 152
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v15

    .line 155
    .local v15, "iconScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->clearFocus()V

    .line 156
    const/4 v0, 0x0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/BubbleTextView;->setPressed(Z)V

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    .line 159
    if-nez p2, :cond_0

    .line 160
    new-instance v1, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v1, v14}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    move-object v12, v1

    .line 161
    .local v12, "previewProvider":Lcom/android/launcher3/graphics/DragPreviewProvider;
    invoke-virtual {v12}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 162
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, v13, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    invoke-virtual {v12, v11, v1}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v16

    .line 163
    .local v16, "scale":F
    iget-object v1, v13, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    aget v17, v1, v0

    .line 164
    .local v17, "dragLayerX":I
    const/4 v2, 0x1

    aget v1, v1, v2

    .line 166
    .local v1, "dragLayerY":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object v10, v2

    .line 167
    .local v10, "dragRect":Landroid/graphics/Rect;
    invoke-virtual {v14, v10}, Lcom/android/launcher3/BubbleTextView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 168
    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int v18, v1, v2

    .line 170
    .end local v1    # "dragLayerY":I
    .local v18, "dragLayerY":I
    new-instance v1, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v1}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    move-object v9, v1

    .line 171
    .local v9, "dragOptions":Lcom/android/launcher3/dragndrop/DragOptions;
    const/4 v1, 0x0

    iput-object v1, v9, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 172
    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_TASKBAR_POPUP_MENU:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, v13, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarPopupController:Lcom/android/launcher3/taskbar/TaskbarPopupController;

    .line 174
    invoke-virtual {v1, v14}, Lcom/android/launcher3/taskbar/TaskbarPopupController;->showForIcon(Lcom/android/launcher3/BubbleTextView;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v1

    .line 175
    .local v1, "popupContainer":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<Lcom/android/launcher3/taskbar/BaseTaskbarContext;>;"
    if-eqz v1, :cond_1

    .line 176
    invoke-virtual {v1, v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 179
    .end local v1    # "popupContainer":Lcom/android/launcher3/popup/PopupContainerWithArrow;, "Lcom/android/launcher3/popup/PopupContainerWithArrow<Lcom/android/launcher3/taskbar/BaseTaskbarContext;>;"
    :cond_1
    iget-object v0, v9, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-nez v0, :cond_2

    .line 180
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragController$1;

    invoke-direct {v0, v13}, Lcom/android/launcher3/taskbar/TaskbarDragController$1;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;)V

    iput-object v0, v9, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 206
    :cond_2
    const/4 v2, 0x0

    new-instance v6, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda2;-><init>()V

    .line 213
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v8, 0x0

    mul-float v19, v16, v15

    .line 206
    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v3, p1

    move/from16 v4, v17

    move/from16 v5, v18

    move-object/from16 v20, v9

    .end local v9    # "dragOptions":Lcom/android/launcher3/dragndrop/DragOptions;
    .local v20, "dragOptions":Lcom/android/launcher3/dragndrop/DragOptions;
    move-object v9, v10

    move-object/from16 v21, v10

    .end local v10    # "dragRect":Landroid/graphics/Rect;
    .local v21, "dragRect":Landroid/graphics/Rect;
    move/from16 v10, v19

    move-object/from16 v19, v11

    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v19, "drawable":Landroid/graphics/drawable/Drawable;
    move/from16 v11, v16

    move-object/from16 v22, v12

    .end local v12    # "previewProvider":Lcom/android/launcher3/graphics/DragPreviewProvider;
    .local v22, "previewProvider":Lcom/android/launcher3/graphics/DragPreviewProvider;
    move-object/from16 v12, v20

    invoke-virtual/range {v0 .. v12}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    return-object v0
.end method

.method private startSystemDrag(Lcom/android/launcher3/BubbleTextView;)V
    .locals 14
    .param p1, "btv"    # Lcom/android/launcher3/BubbleTextView;

    .line 294
    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragController$2;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController$2;-><init>(Lcom/android/launcher3/taskbar/TaskbarDragController;Landroid/view/View;Lcom/android/launcher3/BubbleTextView;)V

    .line 320
    .local v0, "shadowBuilder":Landroid/view/View$DragShadowBuilder;
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 321
    .local v1, "tag":Ljava/lang/Object;
    const/4 v2, 0x0

    .line 322
    .local v2, "clipDescription":Landroid/content/ClipDescription;
    const/4 v3, 0x0

    .line 323
    .local v3, "intent":Landroid/content/Intent;
    instance-of v4, v1, Lcom/android/launcher3/model/data/ItemInfo;

    const-string v5, "android.intent.extra.USER"

    const/4 v6, 0x0

    if-eqz v4, :cond_2

    .line 324
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 325
    .local v4, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v7, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v7, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    const-class v8, Landroid/content/pm/LauncherApps;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/LauncherApps;

    .line 326
    .local v7, "launcherApps":Landroid/content/pm/LauncherApps;
    new-instance v8, Landroid/content/ClipDescription;

    iget-object v9, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    .line 328
    iget v12, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_0

    .line 329
    const-string v12, "application/vnd.android.shortcut"

    goto :goto_0

    .line 330
    :cond_0
    const-string v12, "application/vnd.android.activity"

    :goto_0
    aput-object v12, v10, v11

    invoke-direct {v8, v9, v10}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    move-object v2, v8

    .line 332
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    move-object v3, v8

    .line 333
    iget v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const-string v9, "android.intent.extra.PENDING_INTENT"

    if-ne v8, v13, :cond_1

    .line 334
    move-object v8, v4

    check-cast v8, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getDeepShortcutId()Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "deepShortcutId":Ljava/lang/String;
    nop

    .line 337
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    .line 336
    invoke-virtual {v7, v10, v8, v6, v11}, Landroid/content/pm/LauncherApps;->getShortcutIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    .line 335
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 341
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v9

    const-string v10, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v3, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v9, "android.intent.extra.shortcut.ID"

    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    .end local v8    # "deepShortcutId":Ljava/lang/String;
    goto :goto_1

    .line 344
    :cond_1
    nop

    .line 345
    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    iget-object v10, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v8, v6, v10}, Landroid/content/pm/LauncherApps;->getMainActivityLaunchIntent(Landroid/content/ComponentName;Landroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v8

    .line 344
    invoke-virtual {v3, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 348
    :goto_1
    iget-object v8, v4, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .end local v4    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v7    # "launcherApps":Landroid/content/pm/LauncherApps;
    goto :goto_2

    .line 349
    :cond_2
    instance-of v4, v1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v4, :cond_3

    .line 350
    move-object v4, v1

    check-cast v4, Lcom/android/systemui/shared/recents/model/Task;

    .line 351
    .local v4, "task":Lcom/android/systemui/shared/recents/model/Task;
    new-instance v7, Landroid/content/ClipDescription;

    iget-object v8, v4, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    const-string v9, "application/vnd.android.task"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    move-object v2, v7

    .line 355
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    move-object v3, v7

    .line 356
    iget-object v7, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const-string v8, "android.intent.extra.TASK_ID"

    invoke-virtual {v3, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 357
    iget-object v7, v4, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_3

    .line 349
    .end local v4    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_3
    :goto_2
    nop

    .line 360
    :goto_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 362
    new-instance v4, Lcom/android/internal/logging/InstanceIdSequence;

    const/high16 v5, 0x100000

    invoke-direct {v4, v5}, Lcom/android/internal/logging/InstanceIdSequence;-><init>(I)V

    .line 363
    invoke-virtual {v4}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v4

    .line 364
    .local v4, "internalInstanceId":Lcom/android/internal/logging/InstanceId;
    new-instance v5, Lcom/android/launcher3/logging/InstanceId;

    .line 365
    invoke-virtual {v4}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result v7

    invoke-direct {v5, v7}, Lcom/android/launcher3/logging/InstanceId;-><init>(I)V

    .line 367
    .local v5, "launcherInstanceId":Lcom/android/launcher3/logging/InstanceId;
    const-string v7, "android.intent.extra.LOGGING_INSTANCE_ID"

    invoke-virtual {v3, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 369
    new-instance v7, Landroid/content/ClipData;

    new-instance v8, Landroid/content/ClipData$Item;

    invoke-direct {v8, v3}, Landroid/content/ClipData$Item;-><init>(Landroid/content/Intent;)V

    invoke-direct {v7, v2, v8}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 370
    .local v7, "clipData":Landroid/content/ClipData;
    const/16 v8, 0xb00

    invoke-virtual {p1, v7, v0, v6, v8}, Lcom/android/launcher3/BubbleTextView;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 373
    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarDragController;->onSystemDragStarted(Lcom/android/launcher3/BubbleTextView;)V

    .line 375
    iget-object v6, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v6, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v6}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v6

    iget-object v8, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v6, v8}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v6

    .line 376
    invoke-interface {v6, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v6

    sget-object v8, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 377
    invoke-interface {v6, v8}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 380
    .end local v4    # "internalInstanceId":Lcom/android/internal/logging/InstanceId;
    .end local v5    # "launcherInstanceId":Lcom/android/launcher3/logging/InstanceId;
    .end local v7    # "clipData":Landroid/content/ClipData;
    :cond_4
    return-void
.end method


# virtual methods
.method public addDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 0
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 550
    return-void
.end method

.method protected callOnDragEnd()V
    .locals 0

    .line 424
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    .line 425
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    .line 426
    return-void
.end method

.method protected callOnDragStart()V
    .locals 1

    .line 287
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    .line 289
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 290
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startSystemDrag(Lcom/android/launcher3/BubbleTextView;)V

    .line 291
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TaskbarDragController:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "%s\tmDragIconSize=%dpx"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTempXY:[I

    invoke-static {v3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmTempXY=%s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmRegistrationX=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%s\tmRegistrationY=%d"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    new-array v1, v0, [Ljava/lang/Object;

    aput-object p1, v1, v2

    iget-boolean v3, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    .line 566
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v4

    .line 565
    const-string v3, "%s\tmIsSystemDragInProgress=%b"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 568
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v4

    .line 567
    const-string v1, "%s\tisInternalDragInProgess=%b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method protected exitDrag()V
    .locals 2

    .line 541
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 544
    :cond_0
    return-void
.end method

.method protected getClampedDragLayerPos(FF)Landroid/graphics/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 535
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTmpPoint:Landroid/graphics/Point;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 536
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mTmpPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method protected getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
    .locals 1
    .param p1, "dropCoordinates"    # [I

    .line 554
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    return v0
.end method

.method protected getY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 529
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    return v0
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .locals 0
    .param p1, "controllers"    # Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 108
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    .line 109
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 405
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isSystemDragInProgress()Z
    .locals 1

    .line 410
    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    return v0
.end method

.method synthetic lambda$onSystemDragStarted$3$com-android-launcher3-taskbar-TaskbarDragController(Lcom/android/launcher3/BubbleTextView;Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 3
    .param p1, "btv"    # Lcom/android/launcher3/BubbleTextView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "dragEvent"    # Landroid/view/DragEvent;

    .line 385
    invoke-virtual {p3}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_0

    .line 399
    return v1

    .line 390
    :sswitch_0
    iput-boolean v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsSystemDragInProgress:Z

    .line 391
    invoke-virtual {p3}, Landroid/view/DragEvent;->getResult()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->maybeOnDragEnd()V

    goto :goto_0

    .line 395
    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/taskbar/TaskbarDragController;->animateGlobalDragViewToOriginalPosition(Lcom/android/launcher3/BubbleTextView;Landroid/view/DragEvent;)V

    .line 397
    :goto_0
    return v2

    .line 388
    :sswitch_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x4 -> :sswitch_0
    .end sparse-switch
.end method

.method synthetic lambda$startDragOnLongClick$0$com-android-launcher3-taskbar-TaskbarDragController(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)V
    .locals 4
    .param p1, "btv"    # Lcom/android/launcher3/BubbleTextView;
    .param p2, "dragPreviewProvider"    # Lcom/android/launcher3/graphics/DragPreviewProvider;
    .param p3, "iconShift"    # Landroid/graphics/Point;

    .line 139
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startInternalDrag(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/graphics/DragPreviewProvider;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    .line 140
    .local v0, "dragView":Lcom/android/launcher3/dragndrop/DragView;
    if-eqz p3, :cond_0

    .line 141
    iget v1, p3, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, p3, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v1, v1, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAutohideSuspendController:Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;

    const/4 v3, 0x2

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarAutohideSuspendController;->updateFlag(IZ)V

    .line 146
    return-void
.end method

.method protected startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 17
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "originalView"    # Lcom/android/launcher3/dragndrop/DraggableView;
    .param p4, "dragLayerX"    # I
    .param p5, "dragLayerY"    # I
    .param p6, "source"    # Lcom/android/launcher3/DragSource;
    .param p7, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p8, "dragOffset"    # Landroid/graphics/Point;
    .param p9, "dragRegion"    # Landroid/graphics/Rect;
    .param p10, "initialDragViewScale"    # F
    .param p11, "dragViewScaleOnDrop"    # F
    .param p12, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 226
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p9

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 228
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mMotionDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int v4, v4, p4

    iput v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    .line 229
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mMotionDown:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int v4, v4, p5

    iput v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    .line 231
    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    iget v5, v2, Landroid/graphics/Rect;->left:I

    .line 232
    .local v5, "dragRegionLeft":I
    :goto_0
    if-nez v2, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    iget v6, v2, Landroid/graphics/Rect;->top:I

    .line 234
    .local v6, "dragRegionTop":I
    :goto_1
    const/4 v7, 0x0

    iput-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 236
    new-instance v7, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v8, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v8, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    invoke-virtual {v8}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 237
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v8, p3

    iput-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    .line 238
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v4, v7, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 240
    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v7, v7, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    const-wide/16 v9, 0x0

    .line 241
    invoke-interface {v7, v9, v10}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v7

    if-nez v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    move v7, v4

    :goto_2
    iput-boolean v7, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsInPreDrag:Z

    .line 243
    iget v7, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragIconSize:I

    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v7, v9

    int-to-float v7, v7

    .line 244
    .local v7, "scalePx":F
    iget-object v15, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    new-instance v14, Lcom/android/launcher3/taskbar/TaskbarDragView;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object v10, v9

    check-cast v10, Lcom/android/launcher3/taskbar/BaseTaskbarContext;

    iget v12, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationX:I

    iget v13, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mRegistrationY:I

    move-object v9, v14

    move-object/from16 v11, p1

    move-object v4, v14

    move/from16 v14, p10

    move-object v3, v15

    move/from16 v15, p11

    move/from16 v16, v7

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/taskbar/TaskbarDragView;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;Landroid/graphics/drawable/Drawable;IIFFF)V

    iput-object v4, v3, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v3, v4

    .line 252
    .local v3, "dragView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual {v3, v1}, Lcom/android/launcher3/dragndrop/DragView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 253
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v9, 0x0

    iput-boolean v9, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 255
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mMotionDown:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int v10, p4, v5

    sub-int/2addr v9, v10

    iput v9, v4, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 256
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mMotionDown:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int v10, p5, v6

    sub-int/2addr v9, v10

    iput v9, v4, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 258
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    new-instance v9, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda3;

    invoke-direct {v9}, Lcom/android/launcher3/taskbar/TaskbarDragController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0, v4, v9}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 259
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v4, v4, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v4, :cond_3

    .line 260
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v3}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v9

    iput-object v9, v4, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 263
    :cond_3
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v9, p6

    iput-object v9, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 264
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object v1, v4, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 265
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v10, v10, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/model/data/ItemInfo;->makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v10

    iput-object v10, v4, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 267
    if-eqz v2, :cond_4

    .line 268
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 271
    :cond_4
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mLastTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mLastTouch:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v10}, Lcom/android/launcher3/dragndrop/DragView;->show(II)V

    .line 272
    const/4 v4, 0x0

    iput v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDistanceSinceScroll:I

    .line 274
    iget-boolean v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mIsInPreDrag:Z

    if-nez v4, :cond_5

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->callOnDragStart()V

    goto :goto_3

    .line 276
    :cond_5
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v4, v4, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v4, :cond_6

    .line 277
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v4, v4, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v4, v10}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 280
    :cond_6
    :goto_3
    iget-object v4, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mLastTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/launcher3/taskbar/TaskbarDragController;->mLastTouch:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v10}, Lcom/android/launcher3/taskbar/TaskbarDragController;->handleMoveEvent(II)V

    .line 282
    return-object v3
.end method

.method public startDragOnLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method

.method protected startDragOnLongClick(Lcom/android/launcher3/shortcuts/DeepShortcutView;Landroid/graphics/Point;)Z
    .locals 3
    .param p1, "shortcutView"    # Lcom/android/launcher3/shortcuts/DeepShortcutView;
    .param p2, "iconShift"    # Landroid/graphics/Point;

    .line 122
    nop

    .line 123
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;

    .line 124
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/android/launcher3/shortcuts/ShortcutDragPreviewProvider;-><init>(Landroid/view/View;Landroid/graphics/Point;)V

    .line 122
    invoke-direct {p0, v0, v1, p2}, Lcom/android/launcher3/taskbar/TaskbarDragController;->startDragOnLongClick(Landroid/view/View;Lcom/android/launcher3/graphics/DragPreviewProvider;Landroid/graphics/Point;)Z

    move-result v0

    return v0
.end method
