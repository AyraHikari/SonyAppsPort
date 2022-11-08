.class public abstract Lcom/android/launcher3/dragndrop/DragController;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragDriver$EventListener;
.implements Lcom/android/launcher3/util/TouchController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/DragController$DragListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/dragndrop/DragDriver$EventListener;",
        "Lcom/android/launcher3/util/TouchController;"
    }
.end annotation


# static fields
.field private static final DEEP_PRESS_DISTANCE_FACTOR:I = 0x3


# instance fields
.field protected final mActivity:Lcom/android/launcher3/views/ActivityContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mCoordinatesTemp:[I

.field protected mDistanceSinceScroll:I

.field protected mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

.field protected mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field private final mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsInPreDrag:Z

.field protected mLastDropTarget:Lcom/android/launcher3/DropTarget;

.field protected final mLastTouch:Landroid/graphics/Point;

.field private mLastTouchClassification:I

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field protected final mMotionDown:Landroid/graphics/Point;

.field protected mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

.field private final mRectTemp:Landroid/graphics/Rect;

.field protected final mTmpPoint:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 114
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    .local p1, "activity":Lcom/android/launcher3/views/ActivityContext;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 62
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 74
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    .line 76
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    .line 78
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 115
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 116
    return-void
.end method

.method private checkTouchMove(Lcom/android/launcher3/DropTarget;)V
    .locals 2
    .param p1, "dropTarget"    # Lcom/android/launcher3/DropTarget;

    .line 470
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    if-eqz p1, :cond_2

    .line 471
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eq v0, p1, :cond_1

    .line 472
    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 477
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v0}, Lcom/android/launcher3/DropTarget;->onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_3

    .line 480
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 483
    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 484
    return-void
.end method

.method private dispatchDropComplete(Landroid/view/View;Z)V
    .locals 2
    .param p1, "dropTarget"    # Landroid/view/View;
    .param p2, "accepted"    # Z

    .line 265
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    if-nez p2, :cond_0

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->exitDrag()V

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 272
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/launcher3/DragSource;->onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 273
    return-void
.end method

.method private findDropTarget(II[I)Lcom/android/launcher3/DropTarget;
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "dropCoordinates"    # [I

    .line 547
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput p1, v0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 548
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput p2, v0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 551
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 552
    .local v1, "dropTargets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/DropTarget;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 553
    .local v2, "count":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v3, :cond_2

    .line 554
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/DropTarget;

    .line 555
    .local v6, "target":Lcom/android/launcher3/DropTarget;
    invoke-interface {v6}, Lcom/android/launcher3/DropTarget;->isDropEnabled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 556
    goto :goto_1

    .line 558
    :cond_0
    invoke-interface {v6, v0}, Lcom/android/launcher3/DropTarget;->getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 559
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 560
    aput p1, p3, v4

    .line 561
    aput p2, p3, v5

    .line 562
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v4

    move-object v5, v6

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5, p3}, Lcom/android/launcher3/views/BaseDragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 563
    return-object v6

    .line 553
    .end local v6    # "target":Lcom/android/launcher3/DropTarget;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 568
    .end local v3    # "i":I
    :cond_2
    aput p1, p3, v4

    .line 569
    aput p2, p3, v5

    .line 570
    invoke-virtual {p0, p3}, Lcom/android/launcher3/dragndrop/DragController;->getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;

    move-result-object v3

    return-object v3
.end method

.method static synthetic lambda$getLogInstanceId$0(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher3/logging/InstanceId;
    .locals 1
    .param p0, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 225
    iget-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    return-object v0
.end method


# virtual methods
.method public addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 579
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    return-void
.end method

.method public addDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 593
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 594
    return-void
.end method

.method public animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V
    .locals 4
    .param p1, "onComplete"    # Ljava/lang/Runnable;
    .param p2, "originalIcon"    # Landroid/view/View;
    .param p3, "duration"    # I

    .line 310
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    new-instance v0, Lcom/android/launcher3/dragndrop/DragController$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/dragndrop/DragController$1;-><init>(Lcom/android/launcher3/dragndrop/DragController;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 321
    .local v0, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v1, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0, p3}, Lcom/android/launcher3/dragndrop/DragView;->animateTo(IILjava/lang/Runnable;I)V

    .line 322
    return-void
.end method

.method protected callOnDragEnd()V
    .locals 3

    .line 325
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v2, v1}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 328
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 331
    .local v1, "listener":Lcom/android/launcher3/dragndrop/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DragController$DragListener;->onDragEnd()V

    .line 332
    .end local v1    # "listener":Lcom/android/launcher3/dragndrop/DragController$DragListener;
    goto :goto_0

    .line 333
    :cond_1
    return-void
.end method

.method protected callOnDragStart()V
    .locals 4

    .line 210
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    .line 211
    const-string v0, "b/195031154"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 216
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    .line 217
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->onDragStart()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 219
    .local v1, "listener":Lcom/android/launcher3/dragndrop/DragController$DragListener;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/dragndrop/DragController$DragListener;->onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 220
    .end local v1    # "listener":Lcom/android/launcher3/dragndrop/DragController$DragListener;
    goto :goto_0

    .line 221
    :cond_2
    return-void
.end method

.method public cancelDrag()V
    .locals 3

    .line 250
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 252
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 255
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 256
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 257
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-nez v0, :cond_1

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->dispatchDropComplete(Landroid/view/View;Z)V

    .line 261
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 262
    return-void
.end method

.method public completeAccessibleDrag([I)V
    .locals 5
    .param p1, "location"    # [I

    .line 491
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 494
    .local v0, "coordinates":[I
    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-direct {p0, v2, v4, v0}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v2

    .line 495
    .local v2, "dropTarget":Lcom/android/launcher3/DropTarget;
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v1, v0, v1

    iput v1, v4, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 496
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    aget v3, v0, v3

    iput v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 497
    invoke-direct {p0, v2}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    .line 499
    invoke-interface {v2}, Lcom/android/launcher3/DropTarget;->prepareAccessibilityDrop()V

    .line 501
    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/dragndrop/DragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    .line 502
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 503
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 239
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "dropTarget"    # Lcom/android/launcher3/DropTarget;
    .param p2, "flingAnimation"    # Ljava/lang/Runnable;

    .line 506
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 507
    .local v0, "coordinates":[I
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x0

    aget v2, v0, v2

    iput v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 508
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v2, 0x1

    aget v3, v0, v2

    iput v3, v1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 511
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eq p1, v1, :cond_1

    .line 512
    if-eqz v1, :cond_0

    .line 513
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v1, v3}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 515
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 516
    if-eqz p1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v1}, Lcom/android/launcher3/DropTarget;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 521
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-boolean v2, v1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 522
    iget-boolean v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v1, :cond_3

    .line 523
    if-eqz p1, :cond_2

    .line 524
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 526
    :cond_2
    return-void

    .line 530
    :cond_3
    const/4 v1, 0x0

    .line 531
    .local v1, "accepted":Z
    if-eqz p1, :cond_5

    .line 532
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v2}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 533
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {p1, v2}, Lcom/android/launcher3/DropTarget;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 534
    if-eqz p2, :cond_4

    .line 535
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 537
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-interface {p1, v2, v3}, Lcom/android/launcher3/DropTarget;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 539
    :goto_0
    const/4 v1, 0x1

    .line 542
    :cond_5
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_6

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    .line 543
    .local v2, "dropTargetAsView":Landroid/view/View;
    :goto_1
    invoke-direct {p0, v2, v1}, Lcom/android/launcher3/dragndrop/DragController;->dispatchDropComplete(Landroid/view/View;Z)V

    .line 544
    return-void
.end method

.method protected endDrag()V
    .locals 3

    .line 288
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 289
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "isDeferred":Z
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v2, :cond_2

    .line 292
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v1, v2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 293
    if-nez v1, :cond_0

    .line 294
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    goto :goto_0

    .line 295
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v2, :cond_1

    .line 296
    const/4 v2, -0x1

    invoke-virtual {p0, v0, v0, v2}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    .line 298
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 302
    :cond_2
    if-nez v1, :cond_3

    .line 303
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    .line 306
    .end local v1    # "isDeferred":Z
    :cond_3
    return-void
.end method

.method protected endWithFlingAnimation()Z
    .locals 1

    .line 380
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract exitDrag()V
.end method

.method public forceTouchMove()V
    .locals 4

    .line 462
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 463
    .local v0, "placeholderCoordinates":[I
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v1

    .line 464
    .local v1, "dropTarget":Lcom/android/launcher3/DropTarget;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 465
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 466
    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    .line 467
    return-void
.end method

.method protected getClampedDragLayerPos(FF)Landroid/graphics/Point;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 351
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 352
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {p1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 353
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mRectTemp:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mTmpPoint:Landroid/graphics/Point;

    return-object v0
.end method

.method protected abstract getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
.end method

.method public getDistanceDragged()F
    .locals 1

    .line 458
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    int-to-float v0, v0

    return v0
.end method

.method public getLogInstanceId()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/launcher3/logging/InstanceId;",
            ">;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/dragndrop/DragController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/launcher3/dragndrop/DragController$$ExternalSyntheticLambda0;-><init>()V

    .line 225
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 224
    return-object v0
.end method

.method protected getX(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 411
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    return v0
.end method

.method protected getY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 415
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    return v0
.end method

.method protected handleMoveEvent(II)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 434
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView;->move(II)V

    .line 437
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    .line 438
    .local v0, "coordinates":[I
    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v1

    .line 439
    .local v1, "dropTarget":Lcom/android/launcher3/DropTarget;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x0

    aget v3, v0, v3

    iput v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 440
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v3, 0x1

    aget v3, v0, v3

    iput v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 441
    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/DragController;->checkTouchMove(Lcom/android/launcher3/DropTarget;)V

    .line 444
    iget v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p1

    int-to-double v4, v4

    iget-object v6, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p2

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 445
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Point;->set(II)V

    .line 447
    iget v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDistanceSinceScroll:I

    .line 448
    .local v2, "distanceDragged":I
    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchClassification:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 449
    div-int/lit8 v2, v2, 0x3

    .line 451
    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mIsInPreDrag:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v3, v3, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v3, v3, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    int-to-double v4, v2

    .line 452
    invoke-interface {v3, v4, v5}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 453
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragStart()V

    .line 455
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 243
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

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

.method public onAppsRemoved(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 279
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 281
    .local v0, "dragInfo":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 285
    .end local v0    # "dragInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 393
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v0, :cond_0

    .line 394
    return v1

    .line 397
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->getX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;->getY(Landroid/view/MotionEvent;)F

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 398
    .local v0, "dragLayerPos":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouch:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 399
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 401
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mMotionDown:Landroid/graphics/Point;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 404
    :cond_1
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v2, :cond_2

    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getClassification()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastTouchClassification:I

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 423
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onDeferredEndDrag(Lcom/android/launcher3/dragndrop/DragView;)V
    .locals 1
    .param p1, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;

    .line 339
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragView;->remove()V

    .line 341
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-boolean v0, v0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->callOnDragEnd()V

    .line 345
    :cond_0
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/DragEvent;

    .line 430
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragDriver;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onDriverDragCancel()V
    .locals 0

    .line 385
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->cancelDrag()V

    .line 386
    return-void
.end method

.method public onDriverDragEnd(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 373
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endWithFlingAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    float-to-int v0, p1

    float-to-int v1, p2

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/DragController;->mCoordinatesTemp:[I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->findDropTarget(II[I)Lcom/android/launcher3/DropTarget;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dragndrop/DragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    .line 376
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 377
    return-void
.end method

.method public onDriverDragExitWindow()V
    .locals 2

    .line 365
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    if-eqz v0, :cond_0

    .line 366
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/DragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/launcher3/DropTarget;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 367
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 369
    :cond_0
    return-void
.end method

.method public onDriverDragMove(FF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 359
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragController;->getClampedDragLayerPos(FF)Landroid/graphics/Point;

    move-result-object v0

    .line 360
    .local v0, "dragLayerPos":Landroid/graphics/Point;
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->handleMoveEvent(II)V

    .line 361
    return-void
.end method

.method public removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V
    .locals 1
    .param p1, "l"    # Lcom/android/launcher3/dragndrop/DragController$DragListener;

    .line 586
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 587
    return-void
.end method

.method public removeDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 600
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController;->mDropTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 601
    return-void
.end method

.method protected abstract startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
.end method

.method public startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 15
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "originalView"    # Lcom/android/launcher3/dragndrop/DraggableView;
    .param p3, "dragLayerX"    # I
    .param p4, "dragLayerY"    # I
    .param p5, "source"    # Lcom/android/launcher3/DragSource;
    .param p6, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p7, "dragOffset"    # Landroid/graphics/Point;
    .param p8, "dragRegion"    # Landroid/graphics/Rect;
    .param p9, "initialDragViewScale"    # F
    .param p10, "dragViewScaleOnDrop"    # F
    .param p11, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 150
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    sget-boolean v0, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v0, :cond_0

    .line 151
    const-string v0, "b/195031154"

    const-string v1, "4"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    const/4 v4, 0x0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    invoke-virtual/range {v2 .. v14}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    return-object v0
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 13
    .param p1, "view"    # Landroid/view/View;
    .param p2, "originalView"    # Lcom/android/launcher3/dragndrop/DraggableView;
    .param p3, "dragLayerX"    # I
    .param p4, "dragLayerY"    # I
    .param p5, "source"    # Lcom/android/launcher3/DragSource;
    .param p6, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p7, "dragOffset"    # Landroid/graphics/Point;
    .param p8, "dragRegion"    # Landroid/graphics/Rect;
    .param p9, "initialDragViewScale"    # F
    .param p10, "dragViewScaleOnDrop"    # F
    .param p11, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 190
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController;, "Lcom/android/launcher3/dragndrop/DragController<TT;>;"
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v0

    return-object v0
.end method
