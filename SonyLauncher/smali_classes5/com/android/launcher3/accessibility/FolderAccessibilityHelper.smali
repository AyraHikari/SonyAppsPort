.class public Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;
.super Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
.source "FolderAccessibilityHelper.java"


# instance fields
.field private final mParent:Lcom/android/launcher3/folder/FolderPagedView;

.field private final mStartPosition:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/CellLayout;)V
    .locals 3
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;-><init>(Lcom/android/launcher3/CellLayout;)V

    .line 37
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 39
    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 40
    .local v0, "index":I
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    mul-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    .line 41
    return-void
.end method


# virtual methods
.method protected getConfirmationForIconDrop(I)Ljava/lang/String;
    .locals 2
    .param p1, "id"    # I

    .line 54
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/launcher3/R$string;->item_moved:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getLocationDescriptionForIconDrop(I)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # I

    .line 49
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/launcher3/R$string;->move_to_position:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    add-int/2addr v4, p1

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected intersectsValidDropTarget(I)I
    .locals 2
    .param p1, "id"    # I

    .line 44
    iget-object v0, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mParent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getAllocatedContentSize()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/accessibility/FolderAccessibilityHelper;->mStartPosition:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method
