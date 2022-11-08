.class public Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;
.super Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.source "WorkspaceAccessibilityHelper.java"


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 0
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/android/launcher3/CellLayout;)V

    .line 42
    return-void
.end method

.method public static getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "overChild"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;

    .line 148
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    .line 149
    .local v0, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 150
    sget v1, Lcom/android/launcher3/R$string;->create_folder_with:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 151
    :cond_0
    instance-of v1, v0, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v1, :cond_5

    .line 152
    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 154
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/FolderInfo;

    .line 155
    .local v1, "folder":Lcom/android/launcher3/model/data/FolderInfo;
    const/4 v4, 0x0

    .line 156
    .local v4, "firstItem":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v5, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    .line 157
    .local v6, "shortcut":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v4, :cond_1

    iget v7, v4, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget v8, v6, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-le v7, v8, :cond_2

    .line 158
    :cond_1
    move-object v4, v6

    .line 160
    .end local v6    # "shortcut":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    goto :goto_0

    .line 162
    :cond_3
    if-eqz v4, :cond_4

    .line 163
    sget v5, Lcom/android/launcher3/R$string;->add_to_folder_with_app:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v6, v3, v2

    invoke-virtual {p1, v5, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 166
    .end local v1    # "folder":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v4    # "firstItem":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_4
    sget v1, Lcom/android/launcher3/R$string;->add_to_folder:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v3, v2

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 168
    :cond_5
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 7
    .param p1, "id"    # I

    .line 115
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    .line 116
    .local v0, "x":I
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int v1, p1, v1

    .line 117
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    move-result-object v2

    .line 119
    .local v2, "dragInfo":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;
    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 120
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_4

    iget-object v4, v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 123
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 124
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v5, v4, Lcom/android/launcher3/model/data/AppInfo;

    if-nez v5, :cond_3

    instance-of v5, v4, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    instance-of v5, v4, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v5, :cond_2

    .line 128
    iget-object v5, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/launcher3/R$string;->added_to_folder:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 131
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    const-string v4, ""

    return-object v4

    .line 125
    .restart local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_3
    :goto_0
    iget-object v5, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/launcher3/R$string;->folder_created:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 121
    .end local v4    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/launcher3/R$string;->item_moved:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .line 135
    iget-object v0, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    rem-int v0, p1, v0

    .line 136
    .local v0, "x":I
    iget-object v1, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    div-int v1, p1, v1

    .line 137
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    move-result-object v2

    .line 139
    .local v2, "dragInfo":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;
    iget-object v3, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v3, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, "child":Landroid/view/View;
    if-eqz v3, :cond_1

    iget-object v4, v2, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 141
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected intersectsValidDropTarget(I)I
    .locals 16
    .param p1, "id"    # I

    .line 50
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    .line 51
    .local v1, "mCountX":I
    iget-object v2, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    .line 53
    .local v2, "mCountY":I
    rem-int v3, p1, v1

    .line 54
    .local v3, "x":I
    div-int v4, p1, v1

    .line 55
    .local v4, "y":I
    iget-object v5, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    invoke-virtual {v5}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->getDragInfo()Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;

    move-result-object v5

    .line 57
    .local v5, "dragInfo":Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;
    iget-object v6, v5, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    sget-object v7, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    const/4 v8, -0x1

    if-ne v6, v7, :cond_0

    iget-object v6, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->acceptsWidget()Z

    move-result v6

    if-nez v6, :cond_0

    .line 58
    return v8

    .line 61
    :cond_0
    iget-object v6, v5, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    sget-object v7, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->WIDGET:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    if-ne v6, v7, :cond_a

    .line 64
    const/4 v6, 0x0

    .line 68
    .local v6, "fits":Z
    iget-object v7, v5, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 69
    .local v7, "spanX":I
    iget-object v9, v5, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->info:Lcom/android/launcher3/model/data/ItemInfo;

    iget v9, v9, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 71
    .local v9, "spanY":I
    const/4 v10, 0x0

    .local v10, "m":I
    :goto_0
    if-ge v10, v7, :cond_9

    .line 72
    const/4 v11, 0x0

    .local v11, "n":I
    :goto_1
    if-ge v11, v9, :cond_8

    .line 74
    const/4 v6, 0x1

    .line 75
    sub-int v12, v3, v10

    .line 76
    .local v12, "x0":I
    sub-int v13, v4, v11

    .line 78
    .local v13, "y0":I
    if-ltz v12, :cond_7

    if-gez v13, :cond_1

    goto :goto_6

    .line 80
    :cond_1
    move v14, v12

    .local v14, "i":I
    :goto_2
    add-int v15, v12, v7

    if-ge v14, v15, :cond_6

    .line 81
    if-nez v6, :cond_2

    goto :goto_5

    .line 82
    :cond_2
    move v15, v13

    .local v15, "j":I
    :goto_3
    add-int v8, v13, v9

    if-ge v15, v8, :cond_5

    .line 83
    if-ge v14, v1, :cond_4

    if-ge v15, v2, :cond_4

    iget-object v8, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v8, v14, v15}, Lcom/android/launcher3/CellLayout;->isOccupied(II)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_4

    .line 82
    :cond_3
    add-int/lit8 v15, v15, 0x1

    const/4 v8, -0x1

    goto :goto_3

    .line 84
    :cond_4
    :goto_4
    const/4 v6, 0x0

    .line 80
    .end local v15    # "j":I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    const/4 v8, -0x1

    goto :goto_2

    .line 89
    .end local v14    # "i":I
    :cond_6
    :goto_5
    if-eqz v6, :cond_7

    .line 90
    mul-int v8, v1, v13

    add-int/2addr v8, v12

    return v8

    .line 72
    .end local v12    # "x0":I
    .end local v13    # "y0":I
    :cond_7
    :goto_6
    add-int/lit8 v11, v11, 0x1

    const/4 v8, -0x1

    goto :goto_1

    .line 71
    .end local v11    # "n":I
    :cond_8
    add-int/lit8 v10, v10, 0x1

    const/4 v8, -0x1

    goto :goto_0

    .line 94
    .end local v10    # "m":I
    :cond_9
    const/4 v8, -0x1

    return v8

    .line 97
    .end local v6    # "fits":Z
    .end local v7    # "spanX":I
    .end local v9    # "spanY":I
    :cond_a
    iget-object v6, v0, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->mView:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v6, v3, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 98
    .local v6, "child":Landroid/view/View;
    if-eqz v6, :cond_e

    iget-object v7, v5, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    if-ne v6, v7, :cond_b

    goto :goto_7

    .line 101
    :cond_b
    iget-object v7, v5, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragInfo;->dragType:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    sget-object v8, Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;->FOLDER:Lcom/android/launcher3/accessibility/BaseAccessibilityDelegate$DragType;

    if-eq v7, v8, :cond_d

    .line 103
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/model/data/ItemInfo;

    .line 104
    .local v7, "info":Lcom/android/launcher3/model/data/ItemInfo;
    instance-of v8, v7, Lcom/android/launcher3/model/data/AppInfo;

    if-nez v8, :cond_c

    instance-of v8, v7, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v8, :cond_c

    instance-of v8, v7, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v8, :cond_d

    .line 106
    :cond_c
    return p1

    .line 109
    .end local v7    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_d
    const/4 v7, -0x1

    return v7

    .line 100
    :cond_e
    :goto_7
    return p1
.end method
