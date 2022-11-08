.class public Lcom/android/launcher3/DropTarget$DragObject;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/DropTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragObject"
.end annotation


# instance fields
.field public cancelled:Z

.field public deferDragViewCleanupPostAnimation:Z

.field public dragComplete:Z

.field public dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public dragSource:Lcom/android/launcher3/DragSource;

.field public dragView:Lcom/android/launcher3/dragndrop/DragView;

.field public folderNameProvider:Lcom/android/launcher3/folder/FolderNameProvider;

.field public final logInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field public originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public originalView:Lcom/android/launcher3/dragndrop/DraggableView;

.field public stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

.field public x:I

.field public xOffset:I

.field public y:I

.field public yOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    .line 41
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    .line 44
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    .line 47
    iput v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    .line 56
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 59
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 62
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 65
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    .line 68
    iput-boolean v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 79
    iput-object v1, p0, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    .line 82
    new-instance v0, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v0}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 85
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/DropTarget$DragObject$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/DropTarget$DragObject$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/DropTarget$DragObject;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public final getVisualCenter([F)[F
    .locals 7
    .param p1, "recycle"    # [F

    .line 99
    const/4 v0, 0x2

    if-nez p1, :cond_0

    new-array v1, v0, [F

    goto :goto_0

    :cond_0
    move-object v1, p1

    .line 100
    .local v1, "res":[F
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v2

    .line 105
    .local v2, "dragRegion":Landroid/graphics/Rect;
    iget v3, p0, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v4, p0, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v3, v4

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    .line 106
    .local v3, "left":I
    iget v4, p0, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget v5, p0, Lcom/android/launcher3/DropTarget$DragObject;->yOffset:I

    sub-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    .line 109
    .local v4, "top":I
    const/4 v5, 0x0

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v6, v3

    int-to-float v6, v6

    aput v6, v1, v5

    .line 110
    const/4 v5, 0x1

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v6, v4

    int-to-float v0, v6

    aput v0, v1, v5

    .line 112
    return-object v1
.end method

.method synthetic lambda$new$0$com-android-launcher3-DropTarget$DragObject(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 87
    invoke-static {p1}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/DropTarget$DragObject;->folderNameProvider:Lcom/android/launcher3/folder/FolderNameProvider;

    .line 88
    return-void
.end method
