.class public Lcom/android/launcher3/dragndrop/LauncherDragController;
.super Lcom/android/launcher3/dragndrop/DragController;
.source "LauncherDragController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/dragndrop/DragController<",
        "Lcom/android/launcher3/Launcher;",
        ">;"
    }
.end annotation


# static fields
.field private static final PROFILE_DRAWING_DURING_DRAG:Z


# instance fields
.field private mAllowFling:Z

.field private final mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lcom/android/launcher3/Launcher;

    .line 58
    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/DragController;-><init>(Lcom/android/launcher3/views/ActivityContext;)V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mAllowFling:Z

    .line 59
    new-instance v0, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-direct {v0, p1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    .line 60
    return-void
.end method


# virtual methods
.method public allowFling(Z)V
    .locals 0
    .param p1, "allowFling"    # Z

    .line 199
    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mAllowFling:Z

    .line 200
    return-void
.end method

.method protected endDrag()V
    .locals 1

    .line 187
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->endDrag()V

    .line 188
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->releaseVelocityTracker()V

    .line 189
    return-void
.end method

.method protected endWithFlingAnimation()Z
    .locals 3

    .line 177
    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mAllowFling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getFlingAnimation(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)Ljava/lang/Runnable;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 178
    .local v0, "flingAnimation":Ljava/lang/Runnable;
    :goto_0
    if-eqz v0, :cond_1

    .line 179
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;->getDropTarget()Lcom/android/launcher3/DropTarget;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/dragndrop/LauncherDragController;->drop(Lcom/android/launcher3/DropTarget;Ljava/lang/Runnable;)V

    .line 180
    const/4 v1, 0x1

    return v1

    .line 182
    :cond_1
    invoke-super {p0}, Lcom/android/launcher3/dragndrop/DragController;->endWithFlingAnimation()Z

    move-result v1

    return v1
.end method

.method protected exitDrag()V
    .locals 4

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 173
    :cond_0
    return-void
.end method

.method protected getDefaultDropTarget([I)Lcom/android/launcher3/DropTarget;
    .locals 2
    .param p1, "dropCoordinates"    # [I

    .line 193
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    return-object v0
.end method

.method protected startDrag(Landroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 29
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

    .line 76
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move-object/from16 v3, p9

    move-object/from16 v4, p12

    sget-boolean v5, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v5, :cond_0

    .line 77
    const-string v5, "b/195031154"

    const-string v6, "5"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->hideKeyboard()V

    .line 84
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    const/16 v6, 0x40

    const/4 v7, 0x0

    invoke-static {v5, v7, v6}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 86
    iput-object v4, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    .line 87
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v5, v5, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    if-eqz v5, :cond_1

    .line 88
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v8, v8, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iput v8, v6, Landroid/graphics/Point;->x:I

    iput v8, v5, Landroid/graphics/Point;->x:I

    .line 89
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v8, v8, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iput v8, v6, Landroid/graphics/Point;->y:I

    iput v8, v5, Landroid/graphics/Point;->y:I

    .line 92
    :cond_1
    iget-object v5, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int v5, v5, p4

    .line 93
    .local v5, "registrationX":I
    iget-object v6, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v6, p5

    .line 95
    .local v6, "registrationY":I
    if-nez v3, :cond_2

    move v8, v7

    goto :goto_0

    :cond_2
    iget v8, v3, Landroid/graphics/Rect;->left:I

    :goto_0
    move/from16 v26, v8

    .line 96
    .local v26, "dragRegionLeft":I
    if-nez v3, :cond_3

    move v8, v7

    goto :goto_1

    :cond_3
    iget v8, v3, Landroid/graphics/Rect;->top:I

    :goto_1
    move/from16 v27, v8

    .line 98
    .local v27, "dragRegionTop":I
    const/4 v8, 0x0

    iput-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastDropTarget:Lcom/android/launcher3/DropTarget;

    .line 100
    new-instance v8, Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v9, Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/launcher3/DropTarget$DragObject;-><init>(Landroid/content/Context;)V

    iput-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 101
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v14, p3

    iput-object v14, v8, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    .line 103
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v8, v8, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v8, v8, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    const-wide/16 v9, 0x0

    .line 104
    invoke-interface {v8, v9, v10}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->shouldStartDrag(D)Z

    move-result v8

    if-nez v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move v8, v7

    :goto_2
    iput-boolean v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mIsInPreDrag:Z

    .line 106
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v8, Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    .line 107
    .local v13, "res":Landroid/content/res/Resources;
    iget-boolean v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mIsInPreDrag:Z

    if-eqz v8, :cond_5

    .line 108
    sget v8, Lcom/android/launcher3/R$dimen;->pre_drag_view_scale:I

    invoke-virtual {v13, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    int-to-float v8, v8

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    move v15, v8

    .line 109
    .local v15, "scaleDps":F
    iget-object v12, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    if-eqz p1, :cond_6

    .line 110
    new-instance v16, Lcom/android/launcher3/dragndrop/LauncherDragView;

    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/Launcher;

    move-object/from16 v8, v16

    move-object/from16 v10, p1

    move v11, v5

    move-object v7, v12

    move v12, v6

    move-object/from16 v28, v13

    .end local v13    # "res":Landroid/content/res/Resources;
    .local v28, "res":Landroid/content/res/Resources;
    move/from16 v13, p10

    move/from16 v14, p11

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher3/dragndrop/LauncherDragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/graphics/drawable/Drawable;IIFFF)V

    goto :goto_4

    .line 118
    .end local v28    # "res":Landroid/content/res/Resources;
    .restart local v13    # "res":Landroid/content/res/Resources;
    :cond_6
    move-object v7, v12

    move-object/from16 v28, v13

    .end local v13    # "res":Landroid/content/res/Resources;
    .restart local v28    # "res":Landroid/content/res/Resources;
    new-instance v8, Lcom/android/launcher3/dragndrop/LauncherDragView;

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    move-object/from16 v17, v9

    check-cast v17, Lcom/android/launcher3/Launcher;

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v20

    move-object/from16 v16, v8

    move-object/from16 v18, p2

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, p10

    move/from16 v24, p11

    move/from16 v25, v15

    invoke-direct/range {v16 .. v25}, Lcom/android/launcher3/dragndrop/LauncherDragView;-><init>(Lcom/android/launcher3/Launcher;Landroid/view/View;IIIIFFF)V

    :goto_4
    iput-object v8, v7, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    move-object v7, v8

    .line 128
    .local v7, "dragView":Lcom/android/launcher3/dragndrop/DragView;
    invoke-virtual {v7, v1}, Lcom/android/launcher3/dragndrop/DragView;->setItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 129
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 131
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    add-int v10, p4, v26

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 132
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mMotionDown:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    add-int v10, p5, v27

    sub-int/2addr v9, v10

    iput v9, v8, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 134
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v9, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mFlingToDeleteHelper:Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;

    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v10, Lcom/android/launcher3/dragndrop/LauncherDragController$$ExternalSyntheticLambda0;

    invoke-direct {v10, v9}, Lcom/android/launcher3/dragndrop/LauncherDragController$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/dragndrop/FlingToDeleteHelper;)V

    invoke-static {v0, v8, v10}, Lcom/android/launcher3/dragndrop/DragDriver;->create(Lcom/android/launcher3/dragndrop/DragController;Lcom/android/launcher3/dragndrop/DragOptions;Ljava/util/function/Consumer;)Lcom/android/launcher3/dragndrop/DragDriver;

    move-result-object v8

    iput-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragDriver:Lcom/android/launcher3/dragndrop/DragDriver;

    .line 135
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-boolean v8, v8, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v8, :cond_7

    .line 136
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-static {v7}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v9

    iput-object v9, v8, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 139
    :cond_7
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    move-object/from16 v9, p6

    iput-object v9, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 140
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iput-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 141
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v10, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    iget-object v10, v10, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/model/data/ItemInfo;->makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;

    move-result-object v10

    iput-object v10, v8, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 143
    if-eqz v2, :cond_8

    .line 144
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v2}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/dragndrop/DragView;->setDragVisualizeOffset(Landroid/graphics/Point;)V

    .line 146
    :cond_8
    if-eqz v3, :cond_9

    .line 147
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Lcom/android/launcher3/dragndrop/DragView;->setDragRegion(Landroid/graphics/Rect;)V

    .line 150
    :cond_9
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v8, Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v8

    const/4 v10, 0x0

    invoke-virtual {v8, v10}, Lcom/android/launcher3/dragndrop/DragLayer;->performHapticFeedback(I)Z

    .line 151
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v11, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v7, v8, v11}, Lcom/android/launcher3/dragndrop/DragView;->show(II)V

    .line 152
    iput v10, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDistanceSinceScroll:I

    .line 154
    iget-boolean v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mIsInPreDrag:Z

    if-nez v8, :cond_a

    .line 155
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/dragndrop/LauncherDragController;->callOnDragStart()V

    goto :goto_5

    .line 156
    :cond_a
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v8, v8, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    if-eqz v8, :cond_b

    .line 157
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mOptions:Lcom/android/launcher3/dragndrop/DragOptions;

    iget-object v8, v8, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    iget-object v10, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mDragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-interface {v8, v10}, Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;->onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 160
    :cond_b
    :goto_5
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v10, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mLastTouch:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v8, v10}, Lcom/android/launcher3/dragndrop/LauncherDragController;->handleMoveEvent(II)V

    .line 162
    iget-object v8, v0, Lcom/android/launcher3/dragndrop/LauncherDragController;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    check-cast v8, Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->isTouchInProgress()Z

    move-result v8

    if-nez v8, :cond_c

    iget-object v8, v4, Lcom/android/launcher3/dragndrop/DragOptions;->simulatedDndStartPoint:Landroid/graphics/Point;

    if-nez v8, :cond_c

    .line 164
    sget-object v8, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v10, Lcom/android/launcher3/dragndrop/LauncherDragController$$ExternalSyntheticLambda1;

    invoke-direct {v10, v0}, Lcom/android/launcher3/dragndrop/LauncherDragController$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/dragndrop/LauncherDragController;)V

    invoke-virtual {v8, v10}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 166
    :cond_c
    return-object v7
.end method
