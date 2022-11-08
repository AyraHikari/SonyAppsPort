.class public interface abstract Lcom/android/launcher3/WorkspaceLayoutManager;
.super Ljava/lang/Object;
.source "WorkspaceLayoutManager.java"


# static fields
.field public static final EXTRA_EMPTY_SCREEN_ID:I = -0xc9

.field public static final EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

.field public static final EXTRA_EMPTY_SCREEN_SECOND_ID:I = -0xc8

.field public static final FIRST_SCREEN_ID:I = 0x0

.field public static final SECOND_SCREEN_ID:I = 0x1

.field public static final TAG:Ljava/lang/String; = "Launcher.Workspace"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 42
    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    .line 41
    return-void

    nop

    :array_0
    .array-data 4
        -0xc9
        -0xc8
    .end array-data
.end method


# virtual methods
.method public addInScreen(Landroid/view/View;IIIIII)V
    .locals 21
    .param p1, "child"    # Landroid/view/View;
    .param p2, "container"    # I
    .param p3, "screenId"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I
    .param p6, "spanX"    # I
    .param p7, "spanY"    # I

    .line 87
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    const-string v14, "Launcher.Workspace"

    const/16 v1, -0x64

    if-ne v8, v1, :cond_0

    .line 88
    invoke-interface {v0, v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Skipping child, screenId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    return-void

    .line 95
    :cond_0
    sget-object v1, Lcom/android/launcher3/WorkspaceLayoutManager;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 101
    const/16 v1, -0x65

    const/4 v2, 0x1

    const/4 v15, 0x0

    if-eq v8, v1, :cond_3

    const/16 v1, -0x67

    if-ne v8, v1, :cond_1

    goto :goto_0

    .line 111
    :cond_1
    instance-of v1, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 112
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 114
    :cond_2
    invoke-interface {v0, v9}, Lcom/android/launcher3/WorkspaceLayoutManager;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    move-object/from16 v16, v1

    .local v1, "layout":Lcom/android/launcher3/CellLayout;
    goto :goto_1

    .line 103
    .end local v1    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_3
    :goto_0
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    .line 106
    .restart local v1    # "layout":Lcom/android/launcher3/CellLayout;
    instance-of v3, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_4

    .line 107
    move-object v3, v7

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v15}, Lcom/android/launcher3/folder/FolderIcon;->setTextVisible(Z)V

    .line 117
    :cond_4
    move-object/from16 v16, v1

    .end local v1    # "layout":Lcom/android/launcher3/CellLayout;
    .local v16, "layout":Lcom/android/launcher3/CellLayout;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 119
    .local v5, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v5, :cond_6

    instance-of v1, v5, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v1, :cond_5

    goto :goto_2

    .line 122
    :cond_5
    move-object v1, v5

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 123
    .local v1, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iput v10, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 124
    iput v11, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 125
    iput v12, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 126
    iput v13, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    move-object v4, v1

    goto :goto_3

    .line 120
    .end local v1    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_6
    :goto_2
    new-instance v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v1, v10, v11, v12, v13}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    move-object v4, v1

    .line 129
    .local v4, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :goto_3
    if-gez v12, :cond_7

    if-gez v13, :cond_7

    .line 130
    iput-boolean v15, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 134
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/launcher3/model/data/ItemInfo;

    .line 135
    .local v17, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v18

    .line 137
    .local v18, "childId":I
    instance-of v1, v7, Lcom/android/launcher3/folder/Folder;

    xor-int/lit8 v6, v1, 0x1

    .line 138
    .local v6, "markCellsAsOccupied":Z
    if-eqz v16, :cond_9

    const/4 v3, -0x1

    .line 139
    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move-object/from16 v19, v4

    .end local v4    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .local v19, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    move/from16 v4, v18

    move-object/from16 v20, v5

    .end local v5    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .local v20, "genericLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v5, v19

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    move-object/from16 v2, v19

    goto :goto_5

    .line 138
    .end local v19    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v20    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v4    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .restart local v5    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    move-object/from16 v19, v4

    move-object/from16 v20, v5

    .line 143
    .end local v4    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v5    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v19    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .restart local v20    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to item at ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v2, v19

    .end local v19    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .local v2, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") to CellLayout"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_5
    invoke-virtual {v7, v15}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 147
    invoke-interface/range {p0 .. p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getWorkspaceChildOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    instance-of v1, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_a

    .line 149
    move-object v1, v7

    check-cast v1, Lcom/android/launcher3/DropTarget;

    invoke-interface {v0, v1}, Lcom/android/launcher3/WorkspaceLayoutManager;->onAddDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 151
    :cond_a
    return-void

    .line 97
    .end local v2    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v6    # "markCellsAsOccupied":Z
    .end local v16    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v17    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v18    # "childId":I
    .end local v20    # "genericLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen id should not be extra empty screen: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 70
    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v0, p0

    move-object v1, p1

    invoke-interface/range {v0 .. v7}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)V

    .line 72
    return-void
.end method

.method public addInScreenFromBind(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 54
    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 55
    .local v0, "x":I
    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 56
    .local v1, "y":I
    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x65

    if-eq v2, v3, :cond_0

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v3, -0x67

    if-ne v2, v3, :cond_1

    .line 58
    :cond_0
    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 59
    .local v2, "screenId":I
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Hotseat;->getCellXFromOrder(I)I

    move-result v0

    .line 60
    invoke-interface {p0}, Lcom/android/launcher3/WorkspaceLayoutManager;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/launcher3/Hotseat;->getCellYFromOrder(I)I

    move-result v1

    .line 62
    .end local v2    # "screenId":I
    :cond_1
    iget v5, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v9, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v10, p2, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v3, p0

    move-object v4, p1

    move v7, v0

    move v8, v1

    invoke-interface/range {v3 .. v10}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;IIIIII)V

    .line 63
    return-void
.end method

.method public abstract getHotseat()Lcom/android/launcher3/Hotseat;
.end method

.method public abstract getScreenWithId(I)Lcom/android/launcher3/CellLayout;
.end method

.method public getWorkspaceChildOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .locals 1

    .line 154
    sget-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 0
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 161
    return-void
.end method
