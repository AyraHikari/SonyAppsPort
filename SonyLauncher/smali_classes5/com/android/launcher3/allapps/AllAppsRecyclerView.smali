.class public Lcom/android/launcher3/allapps/AllAppsRecyclerView;
.super Lcom/android/launcher3/FastScrollRecyclerView;
.source "AllAppsRecyclerView.java"

# interfaces
.implements Lcom/android/launcher3/DropTarget;


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LATENCY:Z

.field private static final REORDER_DELAY:I = 0x96

.field protected static final TAG:Ljava/lang/String; = "AllAppsRecyclerView"


# instance fields
.field private mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

.field protected mApps:Lcom/sonymobile/launcher/allapps/AppsList;

.field private final mCachedScrollPositions:Landroid/util/SparseIntArray;

.field private final mDelegatedCellDrawings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;",
            ">;"
        }
    .end annotation
.end field

.field private mDragViewVisualCenter:[F

.field private mDraggedAdapterPos:I

.field private mDraggedItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field private mDraggedOverPos:I

.field protected mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

.field protected mEmptySearchBackgroundTopOffset:I

.field private final mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

.field private mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

.field private mInsideMargin:Z

.field private mMakeFolderMargin:I

.field protected final mNumAppsPerRow:I

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private final mViewHeights:Landroid/util/SparseIntArray;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCachedScrollPositions(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Landroid/util/SparseIntArray;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-string v0, "SearchLogging"

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isPropertyEnabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->DEBUG_LATENCY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 159
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 160
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 163
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/FastScrollRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    .line 94
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    .line 98
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$1;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    .line 135
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mInsideMargin:Z

    .line 136
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    .line 137
    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

    .line 138
    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedOverPos:I

    .line 139
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    .line 144
    new-instance v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 169
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 170
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_empty_search_bg_top_offset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 172
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    .line 173
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;-><init>(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    .line 174
    new-instance v1, Lcom/android/launcher3/Alarm;

    invoke-direct {v1}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 175
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 176
    return-void
.end method

.method private cleanupDragState(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 741
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 742
    .local v0, "allAppsGridAdapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_0

    .line 743
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->removeItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 744
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 745
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    .line 747
    :cond_0
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedOverPos:I

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    .line 748
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 749
    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

    .line 750
    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    .line 751
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->clearDragPosition()V

    .line 752
    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->clearFolderMakingPos()V

    .line 753
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    .line 246
    :cond_0
    return-void
.end method

.method private createFolderBackground(Landroid/view/View;)V
    .locals 7
    .param p1, "draggedOverView"    # Landroid/view/View;

    .line 232
    new-instance v0, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v0}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    .line 234
    .local v0, "bg":Lcom/android/launcher3/folder/PreviewBackground;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v3

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 234
    const/4 v4, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    .line 238
    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/allapps/AllAppsRecyclerView;II)V

    .line 240
    return-void
.end method

.method private getViewUnderPosition([F)Landroid/view/View;
    .locals 7
    .param p1, "position"    # [F

    .line 713
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 714
    .local v0, "layoutManager":Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    .line 716
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 717
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 718
    .local v3, "other":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aget v6, p1, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    aget v5, p1, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aget v6, p1, v5

    cmpg-float v4, v4, v6

    if-gtz v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    aget v5, p1, v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 719
    return-object v3

    .line 716
    .end local v3    # "other":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 722
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private isOwnOrderSupportedItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 801
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/model/data/FolderInfo;

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

.method static synthetic lambda$onDrop$1(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1
    .param p0, "allAppsGridAdapter"    # Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 783
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->removeItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private updateEmptySearchBackgroundBounds()V
    .locals 5

    .line 536
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v0, :cond_0

    .line 537
    return-void

    .line 541
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 542
    .local v0, "x":I
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackgroundTopOffset:I

    .line 543
    .local v1, "y":I
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 544
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 545
    invoke-virtual {v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    .line 543
    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setBounds(IIII)V

    .line 546
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 576
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    .line 577
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    if-nez v0, :cond_2

    .line 578
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->cleanupDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 582
    const/4 v0, 0x0

    return v0

    .line 584
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V
    .locals 1
    .param p1, "bg"    # Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    .line 249
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method public getApps()Lcom/sonymobile/launcher/allapps/AppsList;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    return-object v0
.end method

.method protected getAvailableScrollHeight()I
    .locals 3

    .line 520
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 521
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 520
    return v0
.end method

.method public getCurrentScrollY()I
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 455
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 460
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 461
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v3

    .line 462
    .local v3, "position":I
    if-ne v3, v2, :cond_1

    .line 463
    return v2

    .line 465
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v2

    .line 466
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY(II)I

    move-result v4

    add-int/2addr v2, v4

    .line 465
    return v2

    .line 456
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "position":I
    :cond_2
    :goto_0
    return v2
.end method

.method public getCurrentScrollY(II)I
    .locals 10
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .line 470
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 471
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 472
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 473
    .local v1, "posItem":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    const/4 v3, -0x1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 474
    .local v2, "y":I
    if-gez v2, :cond_8

    .line 475
    const/4 v2, 0x0

    .line 476
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge p1, v3, :cond_1

    move v3, p1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    move p1, v3

    .line 477
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, p1, :cond_7

    .line 478
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    .line 479
    .local v4, "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    iget v5, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-static {v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    .line 481
    if-eqz v1, :cond_2

    iget v5, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    iget v7, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    if-ne v5, v7, :cond_2

    iget v5, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    iget v7, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowIndex:I

    if-ne v5, v7, :cond_2

    .line 483
    goto :goto_5

    .line 487
    :cond_2
    iget v5, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->rowAppIndex:I

    if-nez v5, :cond_6

    .line 488
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v7, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseIntArray;->get(II)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_4

    .line 492
    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v7, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-virtual {v5, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    .line 493
    .local v5, "elHeight":I
    if-nez v5, :cond_5

    .line 494
    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 495
    .local v7, "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v7, :cond_4

    .line 496
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    iget v9, v4, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    invoke-virtual {v8, p0, v9}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->createViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v7

    .line 497
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v8

    invoke-virtual {v8, v7, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 498
    iget-object v8, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v8, v6, v6}, Landroid/view/View;->measure(II)V

    .line 499
    iget-object v6, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 501
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->putRecycledView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_3

    .line 503
    :cond_4
    iget-object v6, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 506
    .end local v7    # "holder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_5
    :goto_3
    add-int/2addr v2, v5

    .line 477
    .end local v4    # "item":Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .end local v5    # "elHeight":I
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 509
    .end local v3    # "i":I
    :cond_7
    :goto_5
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mCachedScrollPositions:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 511
    :cond_8
    sub-int v3, v2, p2

    return v3
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 593
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 594
    return-void
.end method

.method public getScrollBarTop()I
    .locals 2

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->all_apps_header_top_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    return v0
.end method

.method public getScrollbar()Lcom/android/launcher3/views/RecyclerViewFastScroller;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    return-object v0
.end method

.method protected getTopPaddingOffset()I
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 550
    const/4 v0, 0x0

    return v0
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 571
    const/4 v0, 0x1

    return v0
.end method

.method protected isPaddingOffsetRequired()Z
    .locals 1

    .line 361
    const/4 v0, 0x1

    return v0
.end method

.method synthetic lambda$new$0$com-android-launcher3-allapps-AllAppsRecyclerView(Lcom/android/launcher3/Alarm;)V
    .locals 3
    .param p1, "alarm"    # Lcom/android/launcher3/Alarm;

    .line 145
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedOverPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->cleanupFolderCreation()V

    .line 147
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 148
    .local v0, "allAppsGridAdapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedOverPos:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->moveItem(II)Z

    .line 149
    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedOverPos:I

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    .line 150
    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setDragPosition(I)V

    .line 152
    .end local v0    # "allAppsGridAdapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    :cond_0
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 598
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->isOwnOrderSupportedItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 599
    return-void

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 602
    .local v0, "allAppsGridAdapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->hasApp(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 604
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    .line 605
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getViewUnderPosition([F)Landroid/view/View;

    move-result-object v1

    .line 606
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 607
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 608
    .local v2, "containingViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    .line 609
    .end local v2    # "containingViewHolder":Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    goto :goto_0

    .line 610
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    .line 612
    :goto_0
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->addApp(Lcom/android/launcher3/model/data/ItemInfo;I)V

    .line 613
    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setDragPosition(I)V

    .line 614
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

    .line 615
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 617
    .end local v1    # "view":Landroid/view/View;
    goto :goto_1

    .line 619
    :cond_2
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    .line 620
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 626
    :goto_1
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 1
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 727
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->isOwnOrderSupportedItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 728
    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 734
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->cleanupFolderCreation()V

    .line 735
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_1

    .line 736
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->cleanupDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 738
    :cond_1
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 9
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 630
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->isOwnOrderSupportedItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 631
    return-void

    .line 633
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 634
    return-void

    .line 636
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->hasPendingAdapterUpdates()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 640
    return-void

    .line 642
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    .line 643
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 644
    .local v0, "itemHalfHeight":I
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v3, v1, v2

    int-to-float v4, v0

    add-float/2addr v3, v4

    aput v3, v1, v2

    .line 646
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getViewUnderPosition([F)Landroid/view/View;

    move-result-object v1

    .line 649
    .local v1, "draggedOverView":Landroid/view/View;
    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 650
    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v4

    .local v4, "currentDraggedOverPos":I
    goto :goto_0

    .line 651
    .end local v4    # "currentDraggedOverPos":I
    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    aget v4, v4, v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    aget v4, v4, v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_c

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    aget v4, v4, v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_c

    .line 653
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    sub-int/2addr v4, v2

    .line 663
    .restart local v4    # "currentDraggedOverPos":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 664
    .local v5, "allAppsGridAdapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    iget v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    if-ne v4, v6, :cond_4

    .line 665
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 666
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->clearFolderMakingPos()V

    .line 667
    return-void

    .line 669
    :cond_4
    const/4 v6, 0x0

    .line 670
    .local v6, "insideMargin":Z
    if-eqz v1, :cond_6

    iget-object v7, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v7, v7, Lcom/android/launcher3/model/data/FolderInfo;

    if-nez v7, :cond_6

    .line 671
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v7

    iget v8, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mMakeFolderMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    aget v8, v8, v3

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v7

    iget v8, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mMakeFolderMargin:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    aget v8, v8, v3

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    .line 672
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v7

    iget v8, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mMakeFolderMargin:I

    add-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    aget v8, v8, v2

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v7

    iget v8, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mMakeFolderMargin:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDragViewVisualCenter:[F

    aget v8, v8, v2

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_5

    goto :goto_1

    :cond_5
    move v2, v3

    :goto_1
    move v6, v2

    .line 674
    :cond_6
    iget v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedOverPos:I

    if-ne v2, v4, :cond_7

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mInsideMargin:Z

    if-eq v6, v2, :cond_b

    .line 675
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->smoothScrollToPosition(I)V

    .line 676
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->cleanupFolderCreation()V

    .line 677
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 678
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->clearFolderMakingPos()V

    .line 679
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_8

    .line 680
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    .line 681
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    .line 684
    :cond_8
    if-eqz v6, :cond_a

    .line 685
    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->createFolderBackground(Landroid/view/View;)V

    .line 686
    instance-of v2, v1, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v2, :cond_9

    .line 690
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    .line 691
    .local v2, "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 692
    iput-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    .line 693
    .end local v2    # "folderIcon":Lcom/android/launcher3/folder/FolderIcon;
    goto :goto_2

    .line 698
    :cond_9
    invoke-virtual {v5, v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setFolderMakingPos(I)V

    goto :goto_2

    .line 705
    :cond_a
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v7, 0x96

    invoke-virtual {v2, v7, v8}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 708
    :cond_b
    :goto_2
    iput-boolean v6, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mInsideMargin:Z

    .line 709
    iput v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedOverPos:I

    .line 710
    return-void

    .line 655
    .end local v4    # "currentDraggedOverPos":I
    .end local v5    # "allAppsGridAdapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    .end local v6    # "insideMargin":Z
    :cond_c
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    :cond_0
    sget-boolean v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->DEBUG_LATENCY:Z

    if-eqz v0, :cond_1

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onDraw; time stamp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "SearchLogging"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 221
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    .line 222
    .local v1, "bg":Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 223
    iget v2, v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    int-to-float v2, v2

    iget v3, v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 224
    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->drawOverItem(Landroid/graphics/Canvas;)V

    .line 225
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 220
    .end local v1    # "bg":Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "i":I
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->onDraw(Landroid/graphics/Canvas;)V

    .line 229
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 6
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 758
    iget v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 760
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 761
    .local v1, "allAppsGridAdapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    if-nez v3, :cond_0

    .line 762
    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->saveAddedApp(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 764
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mAddedItem:Lcom/android/launcher3/model/data/ItemInfo;

    .line 766
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getFolderMakingPos()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 770
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->makeFolder(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 771
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getFolderMakingPos()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findViewHolderForLayoutPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    iget-object v0, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 772
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3, v4, v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    .line 773
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->getInstance()Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "MAKE_FOLDER"

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->onRearranged(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 774
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    const-string v4, "REARRANGE"

    if-eqz v3, :cond_3

    .line 778
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    .line 779
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 780
    instance-of v2, v0, Lcom/android/launcher3/BubbleTextView;

    if-eqz v2, :cond_2

    .line 781
    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setToInvisibleOnDragEnd(Z)V

    .line 783
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mOpeningFolder:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v3, 0x0

    new-instance v5, Lcom/android/launcher3/allapps/AllAppsRecyclerView$$ExternalSyntheticLambda1;

    invoke-direct {v5, v1, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {v2, p1, v3, v5}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;ZLjava/lang/Runnable;)V

    .line 784
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->getInstance()Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->onRearranged(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 790
    :cond_3
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->moveComplete()V

    .line 791
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 792
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v3

    iget v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDraggedAdapterPos:I

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 794
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    iget-object v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3, v5, v0, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    .line 795
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->getInstance()Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->onRearranged(Landroid/content/Context;Ljava/lang/String;)V

    .line 797
    :cond_5
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->cleanupDragState(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 798
    return-void
.end method

.method public onFastScrollCompleted()V
    .locals 1

    .line 344
    invoke-super {p0}, Lcom/android/launcher3/FastScrollRecyclerView;->onFastScrollCompleted()V

    .line 345
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->onFastScrollCompleted()V

    .line 346
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 311
    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 312
    .local v0, "result":Z
    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->getAlpha()I

    move-result v1

    if-lez v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setHotspot(FF)V

    .line 316
    :cond_0
    return v0
.end method

.method public onScrollStateChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 290
    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->onScrollStateChanged(I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    .line 293
    .local v0, "mgr":Lcom/android/launcher3/logging/StatsLogManager;
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 295
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_SCROLLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->requestFocus()Z

    .line 297
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_VERTICAL_SWIPE_BEGIN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->sendToInteractionJankMonitor(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View;)V

    .line 299
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    .line 300
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 299
    invoke-static {v1, v2}, Lcom/android/launcher3/util/UiThreadHelper;->hideKeyboardAsync(Lcom/android/launcher3/views/ActivityContext;Landroid/os/IBinder;)V

    .line 301
    goto :goto_0

    .line 303
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_VERTICAL_SWIPE_END:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->sendToInteractionJankMonitor(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;Landroid/view/View;)V

    .line 307
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSearchResultsChanged()V
    .locals 4

    .line 268
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->scrollToTop()V

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 272
    .local v0, "adapter":Lcom/android/launcher3/allapps/AllAppsGridAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getApps()Lcom/sonymobile/launcher/allapps/AppsList;

    move-result-object v1

    invoke-interface {v1}, Lcom/sonymobile/launcher/allapps/AppsList;->hasNoFilteredResults()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_DEVICE_SEARCH:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    .line 273
    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-nez v1, :cond_0

    .line 275
    new-instance v1, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    .line 276
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setAlpha(I)V

    .line 277
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 278
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 280
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->animateBgAlpha(FI)V

    goto :goto_0

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eqz v1, :cond_2

    .line 284
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;->setBgAlpha(F)V

    .line 286
    :cond_2
    :goto_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 262
    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updateEmptySearchBackgroundBounds()V

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->updatePoolSize()V

    .line 264
    return-void
.end method

.method public onUpdateScrollbar(I)V
    .locals 9
    .param p1, "dy"    # I

    .line 374
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    if-nez v0, :cond_0

    .line 375
    return-void

    .line 377
    :cond_0
    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    .line 380
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_9

    iget v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 386
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    move-result v1

    .line 387
    .local v1, "scrollY":I
    if-gez v1, :cond_2

    .line 388
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 389
    return-void

    .line 393
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollBarHeight()I

    move-result v3

    .line 394
    .local v3, "availableScrollBarHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAvailableScrollHeight()I

    move-result v4

    .line 395
    .local v4, "availableScrollHeight":I
    if-gtz v4, :cond_3

    .line 396
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 397
    return-void

    .line 400
    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isThumbDetached()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 401
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->isDraggingThumb()Z

    move-result v2

    if-nez v2, :cond_8

    .line 405
    int-to-float v2, v1

    int-to-float v5, v4

    div-float/2addr v2, v5

    int-to-float v5, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 408
    .local v2, "scrollBarY":I
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->getThumbOffsetY()I

    move-result v5

    .line 409
    .local v5, "thumbScrollY":I
    sub-int v6, v2, v5

    .line 410
    .local v6, "diffScrollY":I
    mul-int v7, v6, p1

    int-to-float v7, v7

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_5

    .line 416
    if-gez p1, :cond_4

    .line 417
    mul-int v7, p1, v5

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 418
    .local v7, "offset":I
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v5, v8

    .line 419
    .end local v7    # "offset":I
    goto :goto_0

    .line 420
    :cond_4
    sub-int v7, v3, v5

    mul-int/2addr v7, p1

    int-to-float v7, v7

    sub-int v8, v3, v2

    int-to-float v8, v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    .line 422
    .restart local v7    # "offset":I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v8

    add-int/2addr v5, v8

    .line 424
    .end local v7    # "offset":I
    :goto_0
    const/4 v7, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 425
    iget-object v7, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 426
    if-ne v2, v5, :cond_6

    .line 427
    iget-object v7, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v7}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->reattachThumbToScroll()V

    goto :goto_1

    .line 433
    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 435
    .end local v2    # "scrollBarY":I
    .end local v5    # "thumbScrollY":I
    .end local v6    # "diffScrollY":I
    :cond_6
    :goto_1
    goto :goto_2

    .line 437
    :cond_7
    invoke-virtual {p0, v1, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->synchronizeScrollBarThumbOffsetToViewScroll(II)V

    .line 439
    :cond_8
    :goto_2
    return-void

    .line 381
    .end local v1    # "scrollY":I
    .end local v3    # "availableScrollBarHeight":I
    .end local v4    # "availableScrollHeight":I
    :cond_9
    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mScrollbar:Lcom/android/launcher3/views/RecyclerViewFastScroller;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/views/RecyclerViewFastScroller;->setThumbOffsetY(I)V

    .line 382
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .line 589
    return-void
.end method

.method public removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V
    .locals 1
    .param p1, "bg"    # Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 254
    return-void
.end method

.method public scrollToPositionAtProgress(F)Ljava/lang/String;
    .locals 6
    .param p1, "touchFraction"    # F

    .line 324
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v0}, Lcom/sonymobile/launcher/allapps/AppsList;->getNumAppRows()I

    move-result v0

    .line 325
    .local v0, "rowCount":I
    const-string v1, ""

    if-nez v0, :cond_0

    .line 326
    return-object v1

    .line 330
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    .line 331
    invoke-interface {v2}, Lcom/sonymobile/launcher/allapps/AppsList;->getFastScrollerSections()Ljava/util/List;

    move-result-object v2

    .line 332
    .local v2, "fastScrollSections":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 333
    .local v3, "count":I
    if-nez v3, :cond_1

    .line 334
    return-object v1

    .line 336
    :cond_1
    int-to-float v1, v3

    mul-float/2addr v1, p1

    float-to-int v1, v1

    const/4 v4, 0x0

    add-int/lit8 v5, v3, -0x1

    invoke-static {v1, v4, v5}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v1

    .line 337
    .local v1, "index":I
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;

    .line 338
    .local v4, "section":Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;
    iget-object v5, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mFastScrollHelper:Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/allapps/AllAppsFastScrollHelper;->smoothScrollToSection(Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;)V

    .line 339
    iget-object v5, v4, Lcom/android/launcher3/allapps/AlphabeticalAppsList$FastScrollSectionInfo;->sectionName:Ljava/lang/String;

    return-object v5
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 350
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 353
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 354
    if-eqz p1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 357
    :cond_1
    return-void
.end method

.method public setApps(Lcom/sonymobile/launcher/allapps/AppsList;)V
    .locals 0
    .param p1, "apps"    # Lcom/sonymobile/launcher/allapps/AppsList;

    .line 182
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    .line 183
    return-void
.end method

.method public setEditMode(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .line 554
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/BaseDraggingActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BaseDraggingActivity;

    .line 555
    .local v0, "baseDraggingActivity":Lcom/android/launcher3/BaseDraggingActivity;
    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-nez v1, :cond_0

    .line 556
    return-void

    .line 558
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v1

    .line 559
    .local v1, "dragController":Lcom/android/launcher3/dragndrop/DragController;
    if-eqz p1, :cond_1

    .line 560
    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_0

    .line 562
    :cond_1
    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 564
    :goto_0
    instance-of v2, v1, Lcom/android/launcher3/dragndrop/LauncherDragController;

    if-eqz v2, :cond_2

    .line 565
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/dragndrop/LauncherDragController;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/LauncherDragController;->allowFling(Z)V

    .line 567
    :cond_2
    return-void
.end method

.method public supportsFastScrolling()Z
    .locals 5

    .line 443
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 444
    .local v0, "adapter":Landroidx/recyclerview/widget/RecyclerView$Adapter;
    instance-of v1, v0, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 445
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isOwnOrder()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 448
    .local v1, "ownOrder":Z
    :goto_0
    if-nez v1, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mApps:Lcom/sonymobile/launcher/allapps/AppsList;

    invoke-interface {v4}, Lcom/sonymobile/launcher/allapps/AppsList;->hasSearchResults()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method protected updatePoolSize()V
    .locals 6

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 191
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    .line 192
    .local v1, "pool":Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 193
    .local v2, "approxRows":I
    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 194
    const/16 v3, 0x10

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 195
    const/16 v3, 0x8

    invoke-virtual {v1, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 196
    iget v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    add-int/2addr v3, v4

    mul-int/2addr v3, v2

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 199
    const/16 v3, 0x40

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v5}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 201
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    .line 202
    iget-object v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mViewHeights:Landroid/util/SparseIntArray;

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 203
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    div-int/lit8 v3, v3, 0x6

    iput v3, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mMakeFolderMargin:I

    .line 204
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 257
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mEmptySearchBackground:Lcom/android/launcher3/allapps/AllAppsBackgroundDrawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/FastScrollRecyclerView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

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
