.class public Lcom/android/launcher3/folder/FolderPagedView;
.super Lcom/android/launcher3/PagedView;
.source "FolderPagedView.java"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/PagedView<",
        "Lcom/android/launcher3/pageindicators/PageIndicatorDots;",
        ">;",
        "Lcom/android/launcher3/views/ClipPathView;"
    }
.end annotation


# static fields
.field private static final REORDER_ANIMATION_DURATION:I = 0xe6

.field private static final SCROLL_HINT_FRACTION:F = 0.07f

.field private static final START_VIEW_REORDER_DELAY:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FolderPagedView"

.field private static final VIEW_REORDER_DELAY_FACTOR:F = 0.9f

.field private static final sTmpArray:[I


# instance fields
.field private mAllocatedContentSize:I

.field private mClipPath:Landroid/graphics/Path;

.field private final mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private mFolder:Lcom/android/launcher3/folder/Folder;

.field private mGridCountX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mGridCountY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field public final mIsRtl:Z

.field private final mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

.field final mPendingAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewCache:Lcom/android/launcher3/util/ViewCache;

.field private mViewsBound:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewsBound:Z

    .line 106
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 107
    .local v0, "profile":Lcom/android/launcher3/InvariantDeviceProfile;
    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    .line 110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setImportantForAccessibility(I)V

    .line 112
    new-instance v1, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 113
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    .line 114
    return-void
.end method

.method private createAndAddNewPage()Lcom/android/launcher3/CellLayout;
    .locals 4

    .line 253
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 254
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    sget v2, Lcom/android/launcher3/R$layout;->folder_page:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 255
    .local v1, "page":Lcom/android/launcher3/CellLayout;
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setCellDimensions(II)V

    .line 256
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setMotionEventSplittingEnabled(Z)V

    .line 257
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    .line 258
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 260
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/android/launcher3/folder/FolderPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 261
    return-object v1
.end method

.method private getViewInCurrentPage(Ljava/util/function/ToIntFunction;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/ToIntFunction<",
            "Lcom/android/launcher3/ShortcutAndWidgetContainer;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 394
    .local p1, "rankProvider":Ljava/util/function/ToIntFunction;, "Ljava/util/function/ToIntFunction<Lcom/android/launcher3/ShortcutAndWidgetContainer;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 395
    const/4 v0, 0x0

    return-object v0

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 398
    .local v0, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-interface {p1, v0}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    .line 399
    .local v1, "rank":I
    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    if-lez v2, :cond_1

    .line 400
    rem-int v3, v1, v2

    div-int v2, v1, v2

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 402
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$getFirstItem$0(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .locals 1
    .param p0, "c"    # Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getLastItem$1(Lcom/android/launcher3/ShortcutAndWidgetContainer;)I
    .locals 1
    .param p0, "c"    # Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 390
    invoke-virtual {p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private setupContentDimensions(I)V
    .locals 4
    .param p1, "count"    # I

    .line 126
    iput p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    .line 127
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setContentSize(I)Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    .line 132
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public addViewForRank(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "rank"    # I

    .line 207
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v0

    div-int v0, p3, v0

    .line 209
    .local v0, "pageNo":I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 210
    .local v1, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getPosForRank(I)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout$LayoutParams;->setCellXY(Landroid/graphics/Point;)V

    .line 211
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v5

    const/4 v4, -0x1

    const/4 v7, 0x1

    move-object v3, p1

    move-object v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 212
    return-void
.end method

.method public areViewsBound()Z
    .locals 1

    .line 184
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewsBound:Z

    return v0
.end method

.method public arrangeChildren(Ljava/util/List;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    .line 299
    .local v1, "itemCount":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 300
    .local v2, "pages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/CellLayout;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 301
    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 302
    .local v4, "page":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    .line 303
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v4    # "page":Lcom/android/launcher3/CellLayout;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 305
    .end local v3    # "i":I
    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 306
    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setupContentDimensions(I)V

    .line 308
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 309
    .local v3, "pageItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/CellLayout;>;"
    const/4 v4, 0x0

    .line 311
    .local v4, "currentPage":Lcom/android/launcher3/CellLayout;
    const/4 v5, 0x0

    .line 312
    .local v5, "position":I
    const/4 v6, 0x0

    .line 314
    .local v6, "rank":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/4 v8, 0x1

    if-ge v7, v1, :cond_6

    .line 315
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v9

    if-le v9, v7, :cond_1

    move-object/from16 v9, p1

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    goto :goto_2

    :cond_1
    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 316
    .local v10, "v":Landroid/view/View;
    :goto_2
    if-eqz v4, :cond_2

    iget-object v11, v0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v11

    if-lt v5, v11, :cond_4

    .line 318
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 319
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v4, v11

    check-cast v4, Lcom/android/launcher3/CellLayout;

    goto :goto_3

    .line 321
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;

    move-result-object v4

    .line 323
    :goto_3
    const/4 v5, 0x0

    .line 326
    :cond_4
    if-eqz v10, :cond_5

    .line 327
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 328
    .local v15, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v17, v11

    check-cast v17, Lcom/android/launcher3/model/data/ItemInfo;

    .line 329
    .local v17, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v11, v6}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getPosForRank(I)Landroid/graphics/Point;

    move-result-object v11

    invoke-virtual {v15, v11}, Lcom/android/launcher3/CellLayout$LayoutParams;->setCellXY(Landroid/graphics/Point;)V

    .line 330
    const/4 v13, -0x1

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result v14

    const/16 v16, 0x1

    move-object v11, v4

    move-object v12, v10

    move-object/from16 v18, v15

    .end local v15    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .local v18, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z

    .line 332
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v11, v6}, Lcom/android/launcher3/folder/FolderGridOrganizer;->isItemInPreview(I)Z

    move-result v11

    if-eqz v11, :cond_5

    instance-of v11, v10, Lcom/android/launcher3/BubbleTextView;

    if-eqz v11, :cond_5

    .line 333
    move-object v11, v10

    check-cast v11, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v11}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 337
    .end local v17    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v18    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 338
    nop

    .end local v10    # "v":Landroid/view/View;
    add-int/2addr v5, v8

    .line 314
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_6
    move-object/from16 v9, p1

    .line 342
    .end local v7    # "i":I
    const/4 v7, 0x0

    .line 343
    .local v7, "removed":Z
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 344
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderPagedView;->removeView(Landroid/view/View;)V

    .line 345
    const/4 v7, 0x1

    goto :goto_4

    .line 347
    :cond_7
    const/4 v10, 0x0

    if-eqz v7, :cond_8

    .line 348
    invoke-virtual {v0, v10}, Lcom/android/launcher3/folder/FolderPagedView;->setCurrentPage(I)V

    .line 351
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v11

    if-le v11, v8, :cond_9

    move v11, v8

    goto :goto_5

    :cond_9
    move v11, v10

    :goto_5
    invoke-virtual {v0, v11}, Lcom/android/launcher3/folder/FolderPagedView;->setEnableOverscroll(Z)V

    .line 354
    iget-object v11, v0, Lcom/android/launcher3/folder/FolderPagedView;->mPageIndicator:Landroid/view/View;

    check-cast v11, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v12

    if-le v12, v8, :cond_a

    goto :goto_6

    :cond_a
    const/16 v10, 0x8

    :goto_6
    invoke-virtual {v11, v10}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setVisibility(I)V

    .line 356
    iget-object v10, v0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v10, v10, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v11

    if-le v11, v8, :cond_c

    .line 357
    iget-boolean v8, v0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v8, :cond_b

    const/4 v8, 0x5

    goto :goto_7

    :cond_b
    const/4 v8, 0x3

    goto :goto_7

    :cond_c
    nop

    .line 356
    :goto_7
    invoke-virtual {v10, v8}, Lcom/android/launcher3/folder/FolderNameEditText;->setGravity(I)V

    .line 358
    return-void
.end method

.method public bindItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 155
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewsBound:Z

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->unbindItems()V

    .line 158
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/FolderPagedView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/FolderPagedView$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/folder/FolderPagedView;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewsBound:Z

    .line 160
    return-void
.end method

.method protected canScroll(FF)Z
    .locals 2
    .param p1, "absVScroll"    # F
    .param p2, "absHScroll"    # F

    .line 646
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    const v1, 0x7fffe

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clearScrollHint()V
    .locals 2

    .line 463
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollForPage(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 464
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPage(I)Z

    .line 466
    :cond_0
    return-void
.end method

.method public completePendingPageChanges()V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 474
    .local v0, "pendingViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Ljava/lang/Runnable;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 475
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Runnable;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 476
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 477
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/lang/Runnable;>;"
    goto :goto_0

    .line 479
    .end local v0    # "pendingViews":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Ljava/lang/Runnable;>;"
    :cond_0
    return-void
.end method

.method public createAndAddViewForRank(Lcom/android/launcher3/model/data/ItemInfo;I)Landroid/view/View;
    .locals 3
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "rank"    # I

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 193
    .local v0, "icon":Landroid/view/View;
    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewsBound:Z

    if-nez v1, :cond_0

    .line 194
    return-object v0

    .line 196
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 197
    .local v1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    .line 199
    return-object v0
.end method

.method public createNewView(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 216
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 217
    return-object v0

    .line 219
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    iget-object v1, v1, Lcom/android/launcher3/folder/LauncherDelegate;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v1

    .line 220
    .local v1, "isEditMode":Z
    iget-object v2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    sget v3, Lcom/android/launcher3/R$layout;->folder_application:I

    .line 221
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 220
    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/util/ViewCache;->getView(ILandroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/BubbleTextView;

    .line 222
    .local v2, "textView":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->reset()V

    .line 223
    invoke-virtual {v2, p1}, Lcom/android/launcher3/BubbleTextView;->applyFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 224
    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 227
    :cond_1
    sget-object v0, Lcom/android/launcher3/touch/ItemClickHandler;->INSTANCE:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/BubbleTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 231
    invoke-virtual {v2}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 232
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    if-nez v0, :cond_2

    .line 233
    new-instance v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/BubbleTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 236
    :cond_2
    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 237
    iget v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 238
    const/4 v3, 0x1

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 240
    :goto_1
    return-object v2
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mClipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 141
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 142
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->draw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 145
    .end local v0    # "count":I
    goto :goto_0

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFocusIndicatorHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->draw(Landroid/graphics/Canvas;)V

    .line 147
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 149
    :goto_0
    return-void
.end method

.method public findNearestArea(II)I
    .locals 9
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v0

    .line 375
    .local v0, "pageIndex":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    .line 376
    .local v7, "page":Lcom/android/launcher3/CellLayout;
    sget-object v8, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v7

    move v2, p1

    move v3, p2

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 377
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->isLayoutRtl()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 378
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v1

    aget v4, v8, v2

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    aput v1, v8, v2

    .line 380
    :cond_0
    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    sub-int/2addr v1, v3

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    .line 381
    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v4

    mul-int/2addr v4, v0

    aget v3, v8, v3

    iget v5, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    mul-int/2addr v3, v5

    add-int/2addr v4, v3

    aget v2, v8, v2

    add-int/2addr v4, v2

    .line 380
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method public getAccessibilityDescription()Ljava/lang/String;
    .locals 5

    .line 426
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->folder_opened:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAllocatedContentSize()I
    .locals 1

    .line 515
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    return v0
.end method

.method protected getChildGap(II)I
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 266
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentCellLayout()Lcom/android/launcher3/CellLayout;
    .locals 1

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 2

    .line 366
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 367
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getDesiredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    nop

    .line 366
    :goto_0
    return v1
.end method

.method public getDesiredWidth()I
    .locals 2

    .line 361
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    nop

    .line 361
    :goto_0
    return v1
.end method

.method public getFirstItem()Landroid/view/View;
    .locals 1

    .line 386
    new-instance v0, Lcom/android/launcher3/folder/FolderPagedView$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderPagedView$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getViewInCurrentPage(Ljava/util/function/ToIntFunction;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLastItem()Landroid/view/View;
    .locals 1

    .line 390
    new-instance v0, Lcom/android/launcher3/folder/FolderPagedView$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderPagedView$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getViewInCurrentPage(Ljava/util/function/ToIntFunction;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPageAt(I)Landroid/view/View;
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object p1

    return-object p1
.end method

.method public getPageAt(I)Lcom/android/launcher3/CellLayout;
    .locals 1
    .param p1, "index"    # I

    .line 245
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public itemsPerPage()I
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v0

    return v0
.end method

.method public iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .locals 6
    .param p1, "op"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 411
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 413
    .local v1, "page":Lcom/android/launcher3/CellLayout;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 414
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 415
    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    .line 416
    .local v4, "v":Landroid/view/View;
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p1, v5, v4}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 417
    return-object v4

    .line 414
    .end local v4    # "v":Landroid/view/View;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 413
    .end local v3    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 411
    .end local v1    # "page":Lcom/android/launcher3/CellLayout;
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    .end local v0    # "k":I
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 1
    .param p1, "prevPage"    # I

    .line 441
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 442
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 445
    :cond_0
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 1

    .line 488
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 490
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 491
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 492
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 285
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 286
    iget v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxScroll:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iget v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mMaxScroll:I

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->setScroll(II)V

    .line 287
    :cond_0
    return-void
.end method

.method public rankOnCurrentPage(I)Z
    .locals 2
    .param p1, "rank"    # I

    .line 482
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v0

    div-int v0, p1, v0

    .line 483
    .local v0, "p":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public realTimeReorder(II)V
    .locals 35
    .param p1, "empty"    # I
    .param p2, "target"    # I

    .line 522
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-boolean v3, v0, Lcom/android/launcher3/folder/FolderPagedView;->mViewsBound:Z

    if-nez v3, :cond_0

    .line 523
    return-void

    .line 525
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 526
    const/4 v3, 0x0

    .line 527
    .local v3, "delay":I
    const/high16 v4, 0x41f00000    # 30.0f

    .line 530
    .local v4, "delayAmount":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v5

    .line 531
    .local v5, "pageToAnimate":I
    iget-object v6, v0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderGridOrganizer;->getMaxItemsPerPage()I

    move-result v6

    .line 533
    .local v6, "maxItemsPerPage":I
    div-int v7, v2, v6

    .line 534
    .local v7, "pageT":I
    rem-int v8, v2, v6

    .line 536
    .local v8, "pagePosT":I
    if-eq v7, v5, :cond_1

    .line 537
    const-string v9, "FolderPagedView"

    const-string v10, "Cannot animate when the target cell is invisible"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :cond_1
    rem-int v9, v1, v6

    .line 540
    .local v9, "pagePosE":I
    div-int v10, v1, v6

    .line 546
    .local v10, "pageE":I
    if-ne v2, v1, :cond_2

    .line 548
    return-void

    .line 549
    :cond_2
    const/4 v11, -0x1

    const/4 v12, 0x1

    if-le v2, v1, :cond_4

    .line 551
    const/4 v13, 0x1

    .line 554
    .local v13, "direction":I
    if-ge v10, v5, :cond_3

    .line 555
    move/from16 v11, p1

    .line 557
    .local v11, "moveStart":I
    mul-int v14, v5, v6

    .line 560
    .local v14, "moveEnd":I
    const/4 v15, 0x0

    .local v15, "startPos":I
    goto :goto_0

    .line 562
    .end local v11    # "moveStart":I
    .end local v14    # "moveEnd":I
    .end local v15    # "startPos":I
    :cond_3
    move v14, v11

    .line 563
    .restart local v11    # "moveStart":I
    .restart local v14    # "moveEnd":I
    move v15, v9

    .line 566
    .restart local v15    # "startPos":I
    :goto_0
    move/from16 v16, v8

    move/from16 v12, v16

    .local v16, "endPos":I
    goto :goto_2

    .line 569
    .end local v11    # "moveStart":I
    .end local v13    # "direction":I
    .end local v14    # "moveEnd":I
    .end local v15    # "startPos":I
    .end local v16    # "endPos":I
    :cond_4
    const/4 v13, -0x1

    .line 571
    .restart local v13    # "direction":I
    if-le v10, v5, :cond_5

    .line 573
    move/from16 v11, p1

    .line 575
    .restart local v11    # "moveStart":I
    add-int/lit8 v14, v5, 0x1

    mul-int/2addr v14, v6

    sub-int/2addr v14, v12

    .line 578
    .restart local v14    # "moveEnd":I
    add-int/lit8 v15, v6, -0x1

    .restart local v15    # "startPos":I
    goto :goto_1

    .line 580
    .end local v11    # "moveStart":I
    .end local v14    # "moveEnd":I
    .end local v15    # "startPos":I
    :cond_5
    move v14, v11

    .line 581
    .restart local v11    # "moveStart":I
    .restart local v14    # "moveEnd":I
    move v15, v9

    .line 584
    .restart local v15    # "startPos":I
    :goto_1
    move/from16 v16, v8

    move/from16 v12, v16

    .line 588
    .local v12, "endPos":I
    :goto_2
    if-eq v11, v14, :cond_a

    .line 589
    add-int v17, v11, v13

    .line 590
    .local v17, "rankToMove":I
    div-int v1, v17, v6

    .line 591
    .local v1, "p":I
    rem-int v18, v17, v6

    .line 592
    .local v18, "pagePos":I
    iget v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    move/from16 v19, v3

    .end local v3    # "delay":I
    .local v19, "delay":I
    rem-int v3, v18, v2

    .line 593
    .local v3, "x":I
    div-int v2, v18, v2

    .line 595
    .local v2, "y":I
    move/from16 v20, v4

    .end local v4    # "delayAmount":F
    .local v20, "delayAmount":F
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v4

    .line 596
    .local v4, "page":Lcom/android/launcher3/CellLayout;
    move/from16 v21, v6

    .end local v6    # "maxItemsPerPage":I
    .local v21, "maxItemsPerPage":I
    invoke-virtual {v4, v3, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v6

    .line 597
    .local v6, "v":Landroid/view/View;
    if-eqz v6, :cond_9

    .line 598
    if-eq v5, v1, :cond_6

    .line 599
    invoke-virtual {v4, v6}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 600
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    move/from16 v23, v1

    .end local v1    # "p":I
    .local v23, "p":I
    move-object/from16 v1, v22

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v6, v1, v11}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;I)V

    move/from16 v22, v2

    move/from16 v24, v3

    move v2, v7

    move/from16 v26, v8

    goto :goto_5

    .line 603
    .end local v23    # "p":I
    .restart local v1    # "p":I
    :cond_6
    move/from16 v23, v1

    .end local v1    # "p":I
    .restart local v23    # "p":I
    move v1, v11

    .line 604
    .local v1, "newRank":I
    move/from16 v22, v2

    .end local v2    # "y":I
    .local v22, "y":I
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 606
    .local v2, "oldTranslateX":F
    move/from16 v24, v3

    .end local v3    # "x":I
    .local v24, "x":I
    new-instance v3, Lcom/android/launcher3/folder/FolderPagedView$1;

    invoke-direct {v3, v0, v6, v2, v1}, Lcom/android/launcher3/folder/FolderPagedView$1;-><init>(Lcom/android/launcher3/folder/FolderPagedView;Landroid/view/View;FI)V

    .line 616
    .local v3, "endAction":Ljava/lang/Runnable;
    move/from16 v25, v1

    .end local v1    # "newRank":I
    .local v25, "newRank":I
    invoke-virtual {v6}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 617
    if-lez v13, :cond_7

    const/16 v26, 0x1

    goto :goto_3

    :cond_7
    const/16 v26, 0x0

    :goto_3
    move/from16 v27, v2

    .end local v2    # "oldTranslateX":F
    .local v27, "oldTranslateX":F
    iget-boolean v2, v0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    xor-int v2, v26, v2

    if-eqz v2, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_4
    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    move v2, v7

    move/from16 v26, v8

    .end local v7    # "pageT":I
    .end local v8    # "pagePosT":I
    .local v2, "pageT":I
    .local v26, "pagePosT":I
    const-wide/16 v7, 0xe6

    .line 618
    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v7, 0x0

    .line 619
    invoke-virtual {v1, v7, v8}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 620
    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 621
    iget-object v1, v0, Lcom/android/launcher3/folder/FolderPagedView;->mPendingAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1, v6, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 597
    .end local v22    # "y":I
    .end local v23    # "p":I
    .end local v24    # "x":I
    .end local v25    # "newRank":I
    .end local v26    # "pagePosT":I
    .end local v27    # "oldTranslateX":F
    .local v1, "p":I
    .local v2, "y":I
    .local v3, "x":I
    .restart local v7    # "pageT":I
    .restart local v8    # "pagePosT":I
    :cond_9
    move/from16 v23, v1

    move/from16 v22, v2

    move/from16 v24, v3

    move v2, v7

    move/from16 v26, v8

    .line 624
    .end local v1    # "p":I
    .end local v3    # "x":I
    .end local v7    # "pageT":I
    .end local v8    # "pagePosT":I
    .local v2, "pageT":I
    .restart local v22    # "y":I
    .restart local v23    # "p":I
    .restart local v24    # "x":I
    .restart local v26    # "pagePosT":I
    :goto_5
    move/from16 v11, v17

    .line 625
    .end local v4    # "page":Lcom/android/launcher3/CellLayout;
    .end local v6    # "v":Landroid/view/View;
    .end local v17    # "rankToMove":I
    .end local v18    # "pagePos":I
    .end local v22    # "y":I
    .end local v23    # "p":I
    .end local v24    # "x":I
    move/from16 v1, p1

    move v7, v2

    move/from16 v3, v19

    move/from16 v4, v20

    move/from16 v6, v21

    move/from16 v8, v26

    move/from16 v2, p2

    goto/16 :goto_2

    .line 627
    .end local v2    # "pageT":I
    .end local v19    # "delay":I
    .end local v20    # "delayAmount":F
    .end local v21    # "maxItemsPerPage":I
    .end local v26    # "pagePosT":I
    .local v3, "delay":I
    .local v4, "delayAmount":F
    .local v6, "maxItemsPerPage":I
    .restart local v7    # "pageT":I
    .restart local v8    # "pagePosT":I
    :cond_a
    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v6

    move v2, v7

    move/from16 v26, v8

    .end local v3    # "delay":I
    .end local v4    # "delayAmount":F
    .end local v6    # "maxItemsPerPage":I
    .end local v7    # "pageT":I
    .end local v8    # "pagePosT":I
    .restart local v2    # "pageT":I
    .restart local v19    # "delay":I
    .restart local v20    # "delayAmount":F
    .restart local v21    # "maxItemsPerPage":I
    .restart local v26    # "pagePosT":I
    sub-int v1, v12, v15

    mul-int/2addr v1, v13

    if-gtz v1, :cond_b

    .line 629
    return-void

    .line 632
    :cond_b
    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 633
    .local v1, "page":Lcom/android/launcher3/CellLayout;
    move v3, v15

    move/from16 v4, v19

    .end local v19    # "delay":I
    .local v3, "i":I
    .local v4, "delay":I
    :goto_6
    if-eq v3, v12, :cond_d

    .line 634
    add-int v6, v3, v13

    .line 635
    .local v6, "nextPos":I
    iget v7, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v8, v6, v7

    div-int v7, v6, v7

    invoke-virtual {v1, v8, v7}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v7

    .line 636
    .local v7, "v":Landroid/view/View;
    iget v8, v0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    rem-int v29, v3, v8

    div-int v30, v3, v8

    const/16 v31, 0xe6

    const/16 v33, 0x1

    const/16 v34, 0x1

    move-object/from16 v27, v1

    move-object/from16 v28, v7

    move/from16 v32, v4

    invoke-virtual/range {v27 .. v34}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 638
    int-to-float v8, v4

    add-float v8, v8, v20

    float-to-int v4, v8

    .line 639
    const v8, 0x3f666666    # 0.9f

    mul-float v20, v20, v8

    .line 633
    .end local v6    # "nextPos":I
    .end local v7    # "v":Landroid/view/View;
    :cond_c
    add-int/2addr v3, v13

    goto :goto_6

    .line 642
    .end local v3    # "i":I
    :cond_d
    return-void
.end method

.method public removeItem(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 278
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 279
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 278
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 281
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "clipPath"    # Landroid/graphics/Path;

    .line 656
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mClipPath:Landroid/graphics/Path;

    .line 657
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->invalidate()V

    .line 658
    return-void
.end method

.method public setFixedSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    .line 271
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 272
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 273
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/CellLayout;->setFixedSize(II)V

    .line 272
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 275
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public setFocusOnFirstChild()V
    .locals 2

    .line 433
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 434
    .local v0, "firstChild":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 437
    :cond_0
    return-void
.end method

.method public setFolder(Lcom/android/launcher3/folder/Folder;)V
    .locals 1
    .param p1, "folder"    # Lcom/android/launcher3/folder/Folder;

    .line 117
    iput-object p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    .line 118
    sget v0, Lcom/android/launcher3/R$id;->folder_page_indicator:I

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mPageIndicator:Landroid/view/View;

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->initParentViews(Landroid/view/View;)V

    .line 120
    return-void
.end method

.method public showScrollHint(I)V
    .locals 10
    .param p1, "direction"    # I

    .line 451
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 452
    const v0, -0x4270a3d7    # -0.07f

    goto :goto_1

    :cond_1
    const v0, 0x3d8f5c29    # 0.07f

    .line 453
    .local v0, "fraction":F
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 454
    .local v1, "hint":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollForPage(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 455
    .local v2, "scroll":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollX()I

    move-result v3

    sub-int v3, v2, v3

    .line 456
    .local v3, "delta":I
    if-eqz v3, :cond_2

    .line 457
    iget-object v4, p0, Lcom/android/launcher3/folder/FolderPagedView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getScrollX()I

    move-result v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1f4

    move v7, v3

    invoke-virtual/range {v4 .. v9}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 458
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->invalidate()V

    .line 460
    :cond_2
    return-void
.end method

.method public unbindItems()V
    .locals 8

    .line 166
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_1

    .line 167
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 168
    .local v2, "page":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    .line 169
    .local v3, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_1
    if-ltz v4, :cond_0

    .line 170
    invoke-virtual {v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object v5, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    sget v6, Lcom/android/launcher3/R$layout;->folder_application:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    .line 169
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 173
    .end local v4    # "j":I
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->removeAllViews()V

    .line 174
    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewCache:Lcom/android/launcher3/util/ViewCache;

    sget v4, Lcom/android/launcher3/R$layout;->folder_page:I

    invoke-virtual {v1, v4, v2}, Lcom/android/launcher3/util/ViewCache;->recycleView(ILandroid/view/View;)V

    .line 166
    .end local v2    # "page":Lcom/android/launcher3/CellLayout;
    .end local v3    # "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 176
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->removeAllViews()V

    .line 177
    iput-boolean v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mViewsBound:Z

    .line 178
    return-void
.end method

.method public verifyVisibleHighResIcons(I)V
    .locals 5
    .param p1, "pageNo"    # I

    .line 498
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 499
    .local v0, "page":Lcom/android/launcher3/CellLayout;
    if-eqz v0, :cond_1

    .line 500
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 501
    .local v1, "parent":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 502
    invoke-virtual {v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/BubbleTextView;

    .line 503
    .local v3, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    .line 506
    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    .line 507
    .local v4, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    .line 508
    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 501
    .end local v3    # "icon":Lcom/android/launcher3/BubbleTextView;
    .end local v4    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 512
    .end local v1    # "parent":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method
