.class Lcom/android/launcher3/Workspace$ReorderAlarmListener;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReorderAlarmListener"
.end annotation


# instance fields
.field final child:Landroid/view/View;

.field final dragObject:Lcom/android/launcher3/DropTarget$DragObject;

.field final dragViewCenter:[F

.field final minSpanX:I

.field final minSpanY:I

.field final spanX:I

.field final spanY:I

.field final synthetic this$0:Lcom/android/launcher3/Workspace;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/Workspace;
    .param p2, "dragViewCenter"    # [F
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p8, "child"    # Landroid/view/View;

    .line 2652
    .local p0, "this":Lcom/android/launcher3/Workspace$ReorderAlarmListener;, "Lcom/android/launcher3/Workspace<TT;>.ReorderAlarmListener;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2653
    iput-object p2, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragViewCenter:[F

    .line 2654
    iput p3, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    .line 2655
    iput p4, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    .line 2656
    iput p5, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    .line 2657
    iput p6, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    .line 2658
    iput-object p8, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    .line 2659
    iput-object p7, p0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    .line 2660
    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/Alarm;)V
    .locals 16
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 2663
    .local p0, "this":Lcom/android/launcher3/Workspace$ReorderAlarmListener;, "Lcom/android/launcher3/Workspace<TT;>.ReorderAlarmListener;"
    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2664
    .local v1, "resultSpan":[I
    iget-object v9, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v13, 0x0

    aget v2, v2, v13

    float-to-int v3, v2

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v14, 0x1

    aget v2, v2, v14

    float-to-int v4, v2

    iget v5, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v6, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v7, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v8, v2, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object v2, v9

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v2

    iput-object v2, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2667
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v2, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v3, v13

    iput v3, v2, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 2668
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v2, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v3, v14

    iput v3, v2, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 2670
    iget-object v15, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v15, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v3, v13

    float-to-int v3, v3

    iget-object v4, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v4, v4, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v4, v14

    float-to-int v4, v4

    iget v5, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanX:I

    iget v6, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->minSpanY:I

    iget v7, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    iget v8, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    iget-object v9, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->child:Landroid/view/View;

    iget-object v10, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v10, v10, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v12, 0x1

    move-object v11, v1

    invoke-virtual/range {v2 .. v12}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v2

    iput-object v2, v15, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2674
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v13

    if-ltz v2, :cond_1

    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v2, v14

    if-gez v2, :cond_0

    goto :goto_0

    .line 2677
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    goto :goto_1

    .line 2675
    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v2, v2, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2680
    :goto_1
    aget v2, v1, v13

    iget v3, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanX:I

    if-ne v2, v3, :cond_3

    aget v2, v1, v14

    iget v3, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->spanY:I

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    move v2, v13

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v14

    .line 2681
    .local v2, "resize":Z
    :goto_3
    iget-object v3, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v4, v3, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v3, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v3, v13

    iget-object v3, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->this$0:Lcom/android/launcher3/Workspace;

    iget-object v3, v3, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v6, v3, v14

    aget v7, v1, v13

    aget v8, v1, v14

    iget-object v9, v0, Lcom/android/launcher3/Workspace$ReorderAlarmListener;->dragObject:Lcom/android/launcher3/DropTarget$DragObject;

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    .line 2683
    return-void
.end method
