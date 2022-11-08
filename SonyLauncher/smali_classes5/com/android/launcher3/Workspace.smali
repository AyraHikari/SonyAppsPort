.class public Lcom/android/launcher3/Workspace;
.super Lcom/android/launcher3/PagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/launcher3/statemanager/StateManager$StateHandler;
.implements Lcom/android/launcher3/WorkspaceLayoutManager;
.implements Lcom/android/launcher3/util/LauncherBindableItemsContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/Workspace$StateTransitionListener;,
        Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;,
        Lcom/android/launcher3/Workspace$ReorderAlarmListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ":",
        "Lcom/android/launcher3/pageindicators/PageIndicator;",
        ">",
        "Lcom/android/launcher3/PagedView<",
        "TT;>;",
        "Lcom/android/launcher3/DropTarget;",
        "Lcom/android/launcher3/DragSource;",
        "Landroid/view/View$OnTouchListener;",
        "Lcom/android/launcher3/dragndrop/DragController$DragListener;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/launcher3/statemanager/StateManager$StateHandler<",
        "Lcom/android/launcher3/LauncherState;",
        ">;",
        "Lcom/android/launcher3/WorkspaceLayoutManager;",
        "Lcom/android/launcher3/util/LauncherBindableItemsContainer;"
    }
.end annotation


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final ALLOW_DROP_TRANSITION_PROGRESS:F = 0.25f

.field public static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field public static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field public static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field public static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field public static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field public static final DEFAULT_PAGE:I = 0x0

.field private static final DEFAULT_SMARTSPACE_HEIGHT:I = 0x1

.field private static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field private static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field private static final DRAG_MODE_NONE:I = 0x0

.field private static final DRAG_MODE_REORDER:I = 0x3

.field private static final ENFORCE_DRAG_EVENT_ORDER:Z = false

.field private static final EXPANDED_SMARTSPACE_HEIGHT:I = 0x2

.field private static final FINISHED_SWITCHING_STATE_TRANSITION_PROGRESS:F = 0.5f

.field static final MAX_SWIPE_ANGLE:F = 1.0471976f

.field public static final REORDER_TIMEOUT:I = 0x28a

.field private static final SIGNIFICANT_MOVE_SCREEN_WIDTH_PERCENTAGE:F = 0.15f

.field static final START_DAMPING_TOUCH_SLOP_ANGLE:F = 0.5235988f

.field static final TOUCH_SLOP_DAMPING_FACTOR:F = 4.0f


# instance fields
.field private mAddToExistingFolderOnDrop:Z

.field mChildrenLayersEnabled:Z

.field private mCreateUserFolderOnDrop:Z

.field private mCurrentScale:F

.field mDeferRemoveExtraEmptyScreen:Z

.field mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

.field private mDragMode:I

.field private mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

.field private mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field mDragTargetLayout:Lcom/android/launcher3/CellLayout;

.field mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/CellLayout;

.field private mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

.field private mForceDrawAdjacentPages:Z

.field private mIsEventOverQsb:Z

.field private mIsSwitchingState:Z

.field mLastReorderX:I

.field mLastReorderY:I

.field final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mOnOverlayHiddenCallback:Ljava/lang/Runnable;

.field private mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

.field mOverlayShown:Z

.field private mOverlayTranslation:F

.field private mQsb:Landroid/view/View;

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field private final mRestoredPages:Lcom/android/launcher3/util/IntArray;

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field final mScreenOrder:Lcom/android/launcher3/util/IntArray;

.field private mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

.field private final mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

.field private final mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mStripScreensOnPageStopMoving:Z

.field mTargetCell:[I

.field private final mTempFXY:[F

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempXY:[I

.field private mTransitionProgress:F

.field private mUnlockWallpaperFromDefaultPageOnLayout:Z

.field final mWallpaperManager:Landroid/app/WallpaperManager;

.field final mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

.field private mWorkspaceFadeInAdjacentScreens:Z

.field final mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/IntSparseArrayMap<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mXDown:F

.field private mYDown:F


# direct methods
.method static bridge synthetic -$$Nest$fgetmStatsLogManager(Lcom/android/launcher3/Workspace;)Lcom/android/launcher3/logging/StatsLogManager;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmTransitionProgress(Lcom/android/launcher3/Workspace;F)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    return-void
.end method

.method static bridge synthetic -$$Nest$monEndStateTransition(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monStartStateTransition(Lcom/android/launcher3/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtryRunOverlayCallback(Lcom/android/launcher3/Workspace;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 284
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 295
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    new-instance v0, Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    .line 172
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 184
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 185
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 186
    iput v2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 191
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 195
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 200
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 205
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 206
    new-array v4, v1, [F

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    .line 207
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 208
    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 212
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 214
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 224
    new-instance v4, Lcom/android/launcher3/Alarm;

    invoke-direct {v4}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 226
    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 227
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 252
    iput v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 253
    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 254
    iput v2, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 257
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    .line 264
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 267
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 297
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 298
    new-instance v3, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-direct {v3, v2, p0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    .line 299
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 301
    new-instance v3, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-direct {v3, p0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher3/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->initWorkspace()V

    .line 307
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 308
    new-instance v0, Lcom/android/launcher3/touch/WorkspaceTouchListener;

    invoke-direct {v0, v2, p0}, Lcom/android/launcher3/touch/WorkspaceTouchListener;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 309
    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 310
    return-void
.end method

.method private addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 655
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 656
    .local v0, "lastChildOnScreen":Z
    const/4 v1, 0x0

    .line 658
    .local v1, "childOnFinalScreen":Z
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v2, :cond_3

    .line 659
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 662
    .local v2, "dragSourceChildCount":I
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/Hotseat;

    if-nez v3, :cond_0

    .line 663
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v3

    .line 664
    .local v3, "pagePairScreenId":I
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 665
    .local v4, "pagePair":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    add-int/2addr v2, v5

    .line 671
    .end local v3    # "pagePairScreenId":I
    .end local v4    # "pagePair":Lcom/android/launcher3/CellLayout;
    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_1

    .line 672
    add-int/lit8 v2, v2, 0x1

    .line 675
    :cond_1
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 676
    const/4 v0, 0x1

    .line 678
    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 679
    .local v4, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getLeftmostVisiblePageForIndex(I)I

    move-result v5

    .line 680
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-virtual {p0, v6}, Lcom/android/launcher3/Workspace;->getLeftmostVisiblePageForIndex(I)I

    move-result v3

    if-ne v5, v3, :cond_3

    .line 681
    const/4 v1, 0x1

    .line 686
    .end local v2    # "dragSourceChildCount":I
    .end local v4    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_3
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 687
    return-void

    .line 690
    :cond_4
    new-instance v2, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    .line 695
    return-void
.end method

.method private checkDragObjectIsOverNeighbourPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;
    .locals 8
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "centerX"    # F

    .line 2531
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2532
    return-object v1

    .line 2540
    :cond_0
    iget v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v0, v0

    .line 2544
    .local v0, "touchY":F
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v2

    .line 2545
    .local v2, "nextPage":I
    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    aput v6, v4, v5

    .line 2546
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    :goto_0
    add-int/2addr v3, v2

    aput v3, v4, v6

    .line 2545
    invoke-static {v4}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v3

    .line 2548
    .local v3, "pageIndexesToVerify":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 2553
    .local v5, "pageIndex":I
    if-ge v5, v2, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v6, :cond_3

    :cond_2
    if-le v5, v2, :cond_4

    iget-boolean v6, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v6, :cond_4

    .line 2554
    :cond_3
    iget v6, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v6, v6

    invoke-static {v6, p2}, Ljava/lang/Math;->min(FF)F

    move-result v6

    goto :goto_2

    :cond_4
    iget v6, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v6, v6

    invoke-static {v6, p2}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2555
    .local v6, "touchX":F
    :goto_2
    invoke-direct {p0, v5, v6, v0}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object v7

    .line 2556
    .local v7, "layout":Lcom/android/launcher3/CellLayout;
    if-eqz v7, :cond_5

    .line 2557
    return-object v7

    .line 2559
    .end local v5    # "pageIndex":I
    .end local v7    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_5
    goto :goto_1

    .line 2560
    .end local v6    # "touchX":F
    :cond_6
    return-object v1
.end method

.method private cleanupAddToFolder()V
    .locals 1

    .line 2343
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_0

    .line 2344
    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->onDragExit()V

    .line 2345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 2347
    :cond_0
    return-void
.end method

.method private cleanupFolderCreation()V
    .locals 1

    .line 2337
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    if-eqz v0, :cond_0

    .line 2338
    invoke-virtual {v0}, Lcom/android/launcher3/folder/PreviewBackground;->animateToRest()V

    .line 2340
    :cond_0
    return-void
.end method

.method private cleanupReorder(Z)V
    .locals 1
    .param p1, "cancelAlarm"    # Z

    .line 2351
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-eqz p1, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 2354
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    .line 2355
    iput v0, p0, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    .line 2356
    return-void
.end method

.method private commitExtraEmptyScreen(I)I
    .locals 3
    .param p1, "emptyScreenId"    # I

    .line 859
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 860
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 861
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 863
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "generate_new_screen_id"

    invoke-static {v1, v2}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 865
    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 868
    .local v1, "newScreenId":I
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 869
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 872
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 873
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 875
    return v1
.end method

.method private convertFinalScreenToEmptyScreenIfNecessary()V
    .locals 8

    .line 727
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 729
    return-void

    .line 732
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v0

    .line 733
    .local v0, "panelCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-ge v1, v0, :cond_1

    goto/16 :goto_4

    .line 737
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 739
    .local v1, "finalScreens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/CellLayout;>;"
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v2

    .line 742
    .local v2, "pageCount":I
    sub-int v3, v2, v0

    .local v3, "pageIndex":I
    :goto_0
    if-ge v3, v2, :cond_4

    .line 743
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v4

    .line 744
    .local v4, "screenId":I
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 745
    .local v5, "screen":Lcom/android/launcher3/CellLayout;
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    if-nez v6, :cond_3

    .line 746
    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->isDropPending()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_1

    .line 750
    :cond_2
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 742
    .end local v4    # "screenId":I
    .end local v5    # "screen":Lcom/android/launcher3/CellLayout;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 748
    .restart local v4    # "screenId":I
    .restart local v5    # "screen":Lcom/android/launcher3/CellLayout;
    :cond_3
    :goto_1
    return-void

    .line 755
    .end local v3    # "pageIndex":I
    .end local v4    # "screenId":I
    .end local v5    # "screen":Lcom/android/launcher3/CellLayout;
    :cond_4
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 756
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 757
    .restart local v4    # "screenId":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 759
    .restart local v5    # "screen":Lcom/android/launcher3/CellLayout;
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 760
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 762
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v7, -0xc9

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 763
    const/16 v7, -0xc8

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move v6, v7

    .line 764
    .local v6, "newScreenId":I
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v7, v6, v5}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 765
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 755
    .end local v4    # "screenId":I
    .end local v5    # "screen":Lcom/android/launcher3/CellLayout;
    .end local v6    # "newScreenId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 767
    .end local v3    # "i":I
    :cond_6
    return-void

    .line 734
    .end local v1    # "finalScreens":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/launcher3/CellLayout;>;"
    .end local v2    # "pageCount":I
    :cond_7
    :goto_4
    return-void
.end method

.method private createWidgetDrawable(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p1, "widgetInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "layout"    # Landroid/view/View;

    .line 2894
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I

    move-result-object v0

    .line 2895
    .local v0, "unScaledSize":[I
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    .line 2896
    .local v1, "visibility":I
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2898
    aget v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 2899
    .local v3, "width":I
    const/4 v5, 0x1

    aget v6, v0, v5

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 2900
    .local v4, "height":I
    invoke-virtual {p2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 2901
    aget v6, v0, v2

    aget v7, v0, v5

    invoke-virtual {p2, v2, v2, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 2902
    aget v2, v0, v2

    aget v5, v0, v5

    .line 2903
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda6;

    invoke-direct {v6, p2}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda6;-><init>(Landroid/view/View;)V

    .line 2902
    invoke-static {v2, v5, v6}, Lcom/android/launcher3/icons/BitmapRenderer;->createHardwareBitmap(IILcom/android/launcher3/icons/BitmapRenderer;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 2904
    .local v2, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2905
    new-instance v5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-direct {v5, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object v5
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 9

    .line 1478
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v0, :cond_4

    .line 1479
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 1481
    .local v0, "screenCount":I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getVisibleChildrenRange()[I

    move-result-object v1

    .line 1482
    .local v1, "visibleScreens":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    .line 1483
    .local v3, "leftScreen":I
    const/4 v4, 0x1

    aget v5, v1, v4

    .line 1484
    .local v5, "rightScreen":I
    iget-boolean v6, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    if-eqz v6, :cond_0

    .line 1486
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6, v2, v5}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v3

    .line 1487
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v6

    add-int/2addr v6, v4

    .line 1488
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v7

    sub-int/2addr v7, v4

    .line 1487
    invoke-static {v6, v3, v7}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v5

    .line 1491
    :cond_0
    if-ne v3, v5, :cond_2

    .line 1493
    add-int/lit8 v6, v0, -0x1

    if-ge v5, v6, :cond_1

    .line 1494
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1495
    :cond_1
    if-lez v3, :cond_2

    .line 1496
    add-int/lit8 v3, v3, -0x1

    .line 1500
    :cond_2
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v0, :cond_4

    .line 1501
    invoke-virtual {p0, v6}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 1503
    .local v7, "layout":Lcom/android/launcher3/CellLayout;
    if-gt v3, v6, :cond_3

    if-gt v6, v5, :cond_3

    move v8, v4

    goto :goto_2

    :cond_3
    move v8, v2

    .line 1504
    .local v8, "enableLayer":Z
    :goto_2
    invoke-virtual {v7, v8}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1500
    .end local v7    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v8    # "enableLayer":Z
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1507
    .end local v0    # "screenCount":I
    .end local v1    # "visibleScreens":[I
    .end local v3    # "leftScreen":I
    .end local v5    # "rightScreen":I
    .end local v6    # "i":I
    :cond_4
    return-void
.end method

.method private enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "update"    # I
    .param p4, "expectedValue"    # I

    .line 2268
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    sget v0, Lcom/android/launcher3/R$id;->drag_event_parity:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 2269
    .local v0, "tag":Ljava/lang/Object;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2270
    .local v1, "value":I
    :goto_0
    add-int/2addr v1, p3

    .line 2271
    sget v2, Lcom/android/launcher3/R$id;->drag_event_parity:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2273
    if-eq v1, p4, :cond_1

    .line 2274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Drag contract violated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Launcher.Workspace"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_1
    return-void
.end method

.method private enforceDragParity(Ljava/lang/String;II)V
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "update"    # I
    .param p3, "expectedValue"    # I

    .line 2261
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0, p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 2262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2263
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/launcher3/Workspace;->enforceDragParity(Landroid/view/View;Ljava/lang/String;II)V

    .line 2262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2265
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 716
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const/16 v0, -0xc9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 717
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 718
    const/16 v0, -0xc8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 720
    :cond_0
    return-void
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[IZLandroid/view/View;)V
    .locals 19
    .param p1, "loc"    # [I
    .param p2, "scaleXY"    # [F
    .param p3, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p4, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p5, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p6, "targetCell"    # [I
    .param p7, "scale"    # Z
    .param p8, "finalView"    # Landroid/view/View;

    .line 2913
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p8

    iget v10, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2914
    .local v10, "spanX":I
    iget v11, v8, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2916
    .local v11, "spanY":I
    const/4 v12, 0x0

    aget v2, p6, v12

    const/4 v13, 0x1

    aget v3, p6, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move v4, v10

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v0

    .line 2917
    .local v0, "r":Landroid/graphics/Rect;
    iget v1, v8, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 2918
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 2919
    .local v1, "profile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->shouldInsetWidgets()Z

    move-result v2

    if-eqz v2, :cond_0

    instance-of v2, v9, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    if-eqz v2, :cond_0

    .line 2920
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2921
    .local v2, "widgetPadding":Landroid/graphics/Rect;
    move-object v3, v9

    check-cast v3, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/widget/NavigableAppWidgetHostView;->getWidgetInset(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 2922
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2923
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    .line 2924
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2925
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 2927
    .end local v2    # "widgetPadding":Landroid/graphics/Rect;
    :cond_0
    iget-object v2, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, v1, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v2, v3}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    .line 2930
    .end local v1    # "profile":Lcom/android/launcher3/DeviceProfile;
    :cond_1
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    aput v2, v1, v12

    .line 2931
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    aput v2, v1, v13

    .line 2932
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    .line 2933
    iget-object v1, v6, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2934
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    move-object/from16 v3, p4

    invoke-virtual {v1, v3, v2, v13}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    move-result v1

    .line 2935
    .local v1, "cellLayoutScale":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    .line 2936
    iget-object v2, v6, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-static {v2, v7}, Lcom/android/launcher3/Utilities;->roundArray([F[I)V

    .line 2938
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz p7, :cond_2

    .line 2939
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v5, v14

    .line 2940
    .local v5, "dragViewScaleX":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v14, v2

    .line 2944
    .local v14, "dragViewScaleY":F
    aget v2, v7, v12

    move/from16 v16, v14

    .end local v14    # "dragViewScaleY":F
    .local v16, "dragViewScaleY":F
    int-to-double v13, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v1

    sub-float/2addr v2, v15

    div-float/2addr v2, v4

    move-wide/from16 v17, v13

    float-to-double v12, v2

    .line 2945
    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v4

    float-to-double v14, v2

    invoke-static {v14, v15}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v14

    sub-double/2addr v12, v14

    sub-double v13, v17, v12

    double-to-int v2, v13

    const/4 v12, 0x0

    aput v2, v7, v12

    .line 2946
    const/4 v2, 0x1

    aget v12, v7, v2

    int-to-float v12, v12

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getMeasuredHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v1

    sub-float/2addr v13, v14

    div-float/2addr v13, v4

    sub-float/2addr v12, v13

    float-to-int v4, v12

    aput v4, v7, v2

    .line 2947
    mul-float v4, v5, v1

    const/4 v12, 0x0

    aput v4, p2, v12

    .line 2948
    mul-float v14, v16, v1

    aput v14, p2, v2

    .line 2949
    .end local v5    # "dragViewScaleX":F
    .end local v16    # "dragViewScaleY":F
    goto :goto_0

    .line 2952
    :cond_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getInitialScale()F

    move-result v5

    mul-float/2addr v5, v1

    .line 2953
    .local v5, "dragScale":F
    aget v13, v7, v12

    int-to-float v13, v13

    sub-float v14, v5, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getWidth()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v14, v15

    div-float/2addr v14, v4

    add-float/2addr v13, v14

    float-to-int v13, v13

    aput v13, v7, v12

    .line 2954
    const/4 v12, 0x1

    aget v13, v7, v12

    int-to-float v13, v13

    sub-float v2, v5, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v2, v14

    div-float/2addr v2, v4

    add-float/2addr v13, v2

    float-to-int v2, v13

    aput v2, v7, v12

    .line 2955
    aput v5, p2, v12

    const/4 v2, 0x0

    aput v5, p2, v2

    .line 2958
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegion()Landroid/graphics/Rect;

    move-result-object v4

    .line 2959
    .local v4, "dragRegion":Landroid/graphics/Rect;
    if-eqz v4, :cond_3

    .line 2960
    aget v12, v7, v2

    int-to-float v12, v12

    iget v13, v4, Landroid/graphics/Rect;->left:I

    int-to-float v13, v13

    mul-float/2addr v13, v1

    add-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v7, v2

    .line 2961
    const/4 v2, 0x1

    aget v12, v7, v2

    int-to-float v12, v12

    iget v13, v4, Landroid/graphics/Rect;->top:I

    int-to-float v13, v13

    mul-float/2addr v13, v1

    add-float/2addr v12, v13

    float-to-int v12, v12

    aput v12, v7, v2

    .line 2964
    .end local v4    # "dragRegion":Landroid/graphics/Rect;
    .end local v5    # "dragScale":F
    :cond_3
    :goto_0
    return-void
.end method

.method private getPageDescription(I)Ljava/lang/String;
    .locals 11
    .param p1, "page"    # I

    .line 3507
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 3508
    .local v0, "nScreens":I
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v2, -0xc9

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v1

    .line 3509
    .local v1, "extraScreenId":I
    const/4 v2, 0x1

    if-ltz v1, :cond_1

    if-le v0, v2, :cond_1

    .line 3510
    if-ne p1, v1, :cond_0

    .line 3511
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->workspace_new_page:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3513
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 3515
    :cond_1
    if-nez v0, :cond_2

    .line 3517
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->home_screen:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 3519
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v3

    .line 3520
    .local v3, "panelCount":I
    div-int v4, p1, v3

    add-int/2addr v4, v2

    .line 3521
    .local v4, "currentPage":I
    div-int v5, v0, v3

    rem-int v6, v0, v3

    add-int/2addr v5, v6

    .line 3522
    .local v5, "totalPages":I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$string;->workspace_scroll_format:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .line 2567
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 2568
    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2570
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->mapRectInSelfToDescendant(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2571
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2572
    return-void
.end method

.method private getWallpaperOffsetForPage(I)F
    .locals 2
    .param p1, "page"    # I

    .line 402
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getScrollForPage(I)I

    move-result v0

    .line 403
    .local v0, "pageScroll":I
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->wallpaperOffsetForScroll(I)F

    move-result v1

    return v1
.end method

.method private isDragObjectOverSmartSpace(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 3
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2523
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    if-nez v0, :cond_0

    .line 2524
    const/4 v0, 0x0

    return v0

    .line 2526
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2527
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 1
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2383
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

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

.method private isTwoPanelEnabled()Z
    .locals 1

    .line 479
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    return v0
.end method

.method static synthetic lambda$getHomescreenIconByItemId$10(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "id"    # I
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 3234
    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$getWidgetForAppWidgetId$11(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "appWidgetId"    # I
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 3239
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$onDrop$8(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "callbackList"    # Lcom/android/launcher3/util/RunnableList;
    .param p1, "onCompleteCallback"    # Ljava/lang/Runnable;

    .line 2155
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$runOnOverlayHidden$6(Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "oldCallback"    # Ljava/lang/Runnable;
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 1305
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 1306
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1307
    return-void
.end method

.method static synthetic lambda$updateCellLayoutPadding$0(Landroid/graphics/Rect;Lcom/android/launcher3/CellLayout;)V
    .locals 4
    .param p0, "padding"    # Landroid/graphics/Rect;
    .param p1, "s"    # Lcom/android/launcher3/CellLayout;

    .line 341
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher3/CellLayout;->setPadding(IIII)V

    return-void
.end method

.method static synthetic lambda$updateNotificationDots$12(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 1
    .param p0, "packageUserKey"    # Lcom/android/launcher3/util/PackageUserKey;
    .param p1, "updatedDots"    # Ljava/util/function/Predicate;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 3373
    invoke-virtual {p0, p2}, Lcom/android/launcher3/util/PackageUserKey;->updateFromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3374
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 3373
    :goto_1
    return v0
.end method

.method private manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V
    .locals 13
    .param p1, "distance"    # F
    .param p2, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2590
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float v0, p1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_2

    .line 2591
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 2593
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2595
    :cond_1
    return-void

    .line 2598
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v5, v4, v3

    aget v4, v4, v2

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 2599
    .local v0, "dragOverView":Landroid/view/View;
    iget-object v4, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2600
    .local v4, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {p0, v4, v0, v3}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v5

    .line 2601
    .local v5, "userFolderPending":Z
    iget v6, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v6, :cond_4

    if-eqz v5, :cond_4

    .line 2603
    new-instance v7, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v7}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v7, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 2604
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v10, 0x0

    .line 2605
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 2604
    move-object v8, v9

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    .line 2608
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iput-boolean v3, v1, Lcom/android/launcher3/folder/PreviewBackground;->isClipping:Z

    .line 2610
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v3, v7, v3

    aget v7, v7, v2

    invoke-virtual {v1, v6, v3, v7}, Lcom/android/launcher3/folder/PreviewBackground;->animateToAccept(Lcom/android/launcher3/CellLayout;II)V

    .line 2611
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 2612
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2614
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_3

    .line 2615
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 2616
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2615
    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 2618
    :cond_3
    return-void

    .line 2621
    :cond_4
    invoke-virtual {p0, v4, v0}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v6

    .line 2622
    .local v6, "willAddToFolder":Z
    if-eqz v6, :cond_7

    iget v7, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-nez v7, :cond_7

    .line 2623
    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/folder/FolderIcon;

    iput-object v2, p0, Lcom/android/launcher3/Workspace;->mDragOverFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 2624
    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/FolderIcon;->onDragEnter(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 2625
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v2, :cond_5

    .line 2626
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    .line 2628
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2630
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_6

    .line 2631
    iget-object v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 2632
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/accessibility/WorkspaceAccessibilityHelper;->getDescriptionForDropOver(Landroid/view/View;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 2631
    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 2634
    :cond_6
    return-void

    .line 2637
    :cond_7
    iget v7, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v7, v1, :cond_8

    if-nez v6, :cond_8

    .line 2638
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2640
    :cond_8
    iget v1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-ne v1, v2, :cond_9

    if-nez v5, :cond_9

    .line 2641
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2643
    :cond_9
    return-void
.end method

.method private mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "xy"    # [F

    .line 2374
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p2, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[FZ)F

    .line 2376
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[F)V

    goto :goto_0

    .line 2378
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 2380
    :goto_0
    return-void
.end method

.method private mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "xy"    # [F

    .line 2364
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2365
    const/4 v0, 0x1

    aget v1, p2, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2366
    return-void
.end method

.method private onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 34
    .param p1, "touchXY"    # [I
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2702
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v14, p0

    move-object/from16 v13, p2

    move-object/from16 v12, p3

    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_0

    .line 2703
    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    .line 2704
    invoke-virtual {v0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    .line 2705
    .local v0, "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    if-eqz v0, :cond_0

    .line 2706
    iput-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2710
    .end local v0    # "si":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_0
    iget-object v11, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2711
    .local v11, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2712
    .local v0, "spanX":I
    iget v1, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2713
    .local v1, "spanY":I
    iget-object v2, v14, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_1

    .line 2714
    iget v0, v2, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 2715
    iget-object v2, v14, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v2, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    move/from16 v26, v0

    move/from16 v27, v1

    goto :goto_0

    .line 2713
    :cond_1
    move/from16 v26, v0

    move/from16 v27, v1

    .line 2718
    .end local v0    # "spanX":I
    .end local v1    # "spanY":I
    .local v26, "spanX":I
    .local v27, "spanY":I
    :goto_0
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2719
    const/16 v0, -0x65

    move v10, v0

    goto :goto_1

    .line 2720
    :cond_2
    const/16 v0, -0x64

    move v10, v0

    :goto_1
    nop

    .line 2721
    .local v10, "container":I
    invoke-virtual {v14, v13}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v9

    .line 2722
    .local v9, "screenId":I
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, v14, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 2723
    invoke-virtual {v14, v0}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v0

    if-eq v9, v0, :cond_3

    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    .line 2724
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 2725
    invoke-virtual {v14, v9}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 2728
    :cond_3
    instance-of v0, v11, Lcom/android/launcher3/PendingAddItemInfo;

    const/16 v28, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_f

    .line 2729
    move-object v7, v11

    check-cast v7, Lcom/android/launcher3/PendingAddItemInfo;

    .line 2731
    .local v7, "pendingInfo":Lcom/android/launcher3/PendingAddItemInfo;
    const/4 v15, 0x1

    .line 2732
    .local v15, "findNearestVacantCell":Z
    iget v0, v7, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    if-ne v0, v8, :cond_5

    .line 2733
    aget v1, p1, v28

    aget v2, p1, v8

    iget-object v6, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v26

    move/from16 v4, v27

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2735
    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v28

    aget v1, v1, v8

    invoke-virtual {v13, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    .line 2737
    .local v6, "distance":F
    iget-object v1, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2738
    invoke-virtual {v14, v0, v13, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2740
    :cond_4
    const/4 v15, 0x0

    move/from16 v29, v15

    goto :goto_2

    .line 2744
    .end local v6    # "distance":F
    :cond_5
    move/from16 v29, v15

    .end local v15    # "findNearestVacantCell":Z
    .local v29, "findNearestVacantCell":Z
    :goto_2
    iget-object v6, v12, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2745
    .local v6, "item":Lcom/android/launcher3/model/data/ItemInfo;
    const/4 v0, 0x0

    .line 2746
    .local v0, "updateWidgetSize":Z
    if-eqz v29, :cond_9

    .line 2747
    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2748
    .local v1, "minSpanX":I
    iget v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2749
    .local v2, "minSpanY":I
    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v3, :cond_6

    iget v3, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v3, :cond_6

    .line 2750
    iget v1, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 2751
    iget v2, v6, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    .line 2753
    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2754
    .local v3, "resultSpan":[I
    iget-object v4, v14, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v4, v28

    float-to-int v5, v5

    aget v4, v4, v8

    float-to-int v4, v4

    iget v15, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v8, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/16 v22, 0x0

    move/from16 v31, v0

    .end local v0    # "updateWidgetSize":Z
    .local v31, "updateWidgetSize":Z
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v25, 0x3

    move/from16 v20, v15

    move-object/from16 v15, p2

    move/from16 v16, v5

    move/from16 v17, v4

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v21, v8

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    invoke-virtual/range {v15 .. v25}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2758
    aget v0, v3, v28

    iget v4, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v0, v4, :cond_8

    const/4 v0, 0x1

    aget v4, v3, v0

    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v4, v0, :cond_7

    goto :goto_3

    :cond_7
    move/from16 v0, v31

    goto :goto_4

    .line 2759
    :cond_8
    :goto_3
    const/4 v0, 0x1

    .line 2761
    .end local v31    # "updateWidgetSize":Z
    .restart local v0    # "updateWidgetSize":Z
    :goto_4
    aget v4, v3, v28

    iput v4, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2762
    const/4 v4, 0x1

    aget v5, v3, v4

    iput v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move/from16 v31, v0

    goto :goto_5

    .line 2746
    .end local v1    # "minSpanX":I
    .end local v2    # "minSpanY":I
    .end local v3    # "resultSpan":[I
    :cond_9
    move/from16 v31, v0

    move v4, v8

    .line 2765
    .end local v0    # "updateWidgetSize":Z
    .restart local v31    # "updateWidgetSize":Z
    :goto_5
    new-instance v0, Lcom/android/launcher3/Workspace$5;

    move-object v15, v7

    .end local v7    # "pendingInfo":Lcom/android/launcher3/PendingAddItemInfo;
    .local v15, "pendingInfo":Lcom/android/launcher3/PendingAddItemInfo;
    move-object v7, v0

    move v5, v4

    move-object/from16 v8, p0

    move/from16 v30, v9

    .end local v9    # "screenId":I
    .local v30, "screenId":I
    move-object v9, v15

    move-object v3, v11

    .end local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v3, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move/from16 v11, v30

    move-object v2, v12

    move-object v12, v6

    move-object v1, v13

    move-object/from16 v13, p3

    invoke-direct/range {v7 .. v13}, Lcom/android/launcher3/Workspace$5;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/PendingAddItemInfo;IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/DropTarget$DragObject;)V

    move-object v4, v0

    .line 2782
    .local v4, "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    iget v0, v15, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v0, v7, :cond_a

    iget v0, v15, Lcom/android/launcher3/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v0, v7, :cond_b

    :cond_a
    move/from16 v28, v5

    :cond_b
    move/from16 v8, v28

    .line 2785
    .local v8, "isWidget":Z
    if-eqz v8, :cond_c

    .line 2786
    move-object v0, v15

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    goto :goto_6

    :cond_c
    const/4 v0, 0x0

    :goto_6
    move-object v9, v0

    .line 2788
    .local v9, "finalView":Landroid/appwidget/AppWidgetHostView;
    if-eqz v9, :cond_d

    if-eqz v31, :cond_d

    .line 2789
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v6, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-static {v9, v0, v5, v7}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    .line 2792
    :cond_d
    const/4 v0, 0x0

    .line 2793
    .local v0, "animationStyle":I
    if-eqz v8, :cond_e

    move-object v5, v15

    check-cast v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v5, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    if-eqz v5, :cond_e

    move-object v5, v15

    check-cast v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 2794
    invoke-virtual {v5}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getHandler()Lcom/android/launcher3/widget/WidgetAddFlowHandler;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/widget/WidgetAddFlowHandler;->needsConfigure()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2795
    const/4 v0, 0x1

    move v11, v0

    goto :goto_7

    .line 2797
    :cond_e
    move v11, v0

    .end local v0    # "animationStyle":I
    .local v11, "animationStyle":I
    :goto_7
    iget-object v5, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v12, v1

    move-object v1, v3

    move-object v13, v2

    move-object/from16 v2, p2

    move-object/from16 v32, v3

    .end local v3    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v32, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v3, v5

    move v5, v11

    move-object/from16 v16, v6

    .end local v6    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v16, "item":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v6, v9

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2799
    .end local v4    # "onAnimationCompleteRunnable":Ljava/lang/Runnable;
    .end local v8    # "isWidget":Z
    .end local v9    # "finalView":Landroid/appwidget/AppWidgetHostView;
    .end local v11    # "animationStyle":I
    .end local v15    # "pendingInfo":Lcom/android/launcher3/PendingAddItemInfo;
    .end local v16    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v29    # "findNearestVacantCell":Z
    .end local v31    # "updateWidgetSize":Z
    move-object/from16 v11, v32

    goto/16 :goto_d

    .line 2801
    .end local v30    # "screenId":I
    .end local v32    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v9, "screenId":I
    .local v11, "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_f
    move v5, v8

    move/from16 v30, v9

    move-object/from16 v32, v11

    move-object/from16 v33, v13

    move-object v13, v12

    move-object/from16 v12, v33

    .end local v9    # "screenId":I
    .end local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v30    # "screenId":I
    .restart local v32    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 2804
    const/4 v0, 0x0

    .line 2805
    .local v0, "folderFromAllApps":Z
    move-object/from16 v1, v32

    .end local v32    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v1, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/16 v3, -0x66

    packed-switch v2, :pswitch_data_0

    .line 2835
    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2825
    :pswitch_1
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v2, v3, :cond_10

    .line 2827
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/FolderInfo;->copy()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object v11

    .line 2828
    .end local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    iput-object v11, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2829
    const/4 v0, 0x1

    goto :goto_8

    .line 2825
    .end local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_10
    move-object v11, v1

    .line 2831
    .end local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_8
    sget v1, Lcom/android/launcher3/R$layout;->folder_icon:I

    iget-object v2, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v3, v11

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    invoke-static {v1, v2, v12, v3}, Lcom/android/launcher3/folder/FolderIcon;->inflateFolderAndIcon(ILandroid/content/Context;Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 2833
    .local v1, "view":Landroid/view/View;
    move v8, v0

    move-object v9, v1

    goto :goto_a

    .line 2810
    .end local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v1, "info":Lcom/android/launcher3/model/data/ItemInfo;
    :pswitch_2
    instance-of v2, v1, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v2, :cond_11

    .line 2812
    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    iget-object v4, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-interface {v2, v4}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v11

    .line 2813
    .end local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    iput-object v11, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_9

    .line 2810
    .end local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_11
    move-object v11, v1

    .line 2815
    .end local v1    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v11    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_9
    instance-of v1, v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v1, :cond_12

    iget v1, v11, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/16 v2, -0x68

    if-ne v1, v2, :cond_12

    .line 2818
    new-instance v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-object v2, v11

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v1, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    move-object v11, v1

    .line 2819
    iput-object v11, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2820
    iget-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 2822
    :cond_12
    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object v2, v11

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v1, v12, v2}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v1

    .line 2823
    .local v1, "view":Landroid/view/View;
    move v8, v0

    move-object v9, v1

    .line 2840
    .end local v0    # "folderFromAllApps":Z
    .end local v1    # "view":Landroid/view/View;
    .local v8, "folderFromAllApps":Z
    .local v9, "view":Landroid/view/View;
    :goto_a
    if-eqz p1, :cond_14

    .line 2841
    aget v1, p1, v28

    aget v2, p1, v5

    iget-object v6, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v26

    move/from16 v4, v27

    move v15, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2843
    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v28

    aget v1, v1, v15

    invoke-virtual {v12, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v16

    .line 2845
    .local v16, "distance":F
    iget-object v4, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move-object/from16 v3, p2

    move/from16 v5, v16

    move-object/from16 v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2847
    return-void

    .line 2849
    :cond_13
    iget-object v3, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move-object/from16 v2, p2

    move/from16 v4, v16

    move-object/from16 v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2851
    return-void

    .line 2840
    .end local v16    # "distance":F
    :cond_14
    move v15, v5

    .line 2855
    :cond_15
    if-eqz p1, :cond_16

    .line 2857
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v28

    float-to-int v1, v1

    aget v0, v0, v15

    float-to-int v0, v0

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x0

    iget-object v2, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v24, 0x0

    const/16 v25, 0x3

    move v6, v15

    move-object/from16 v15, p2

    move/from16 v16, v1

    move/from16 v17, v0

    move-object/from16 v23, v2

    invoke-virtual/range {v15 .. v25}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v0

    iput-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    goto :goto_b

    .line 2861
    :cond_16
    move v6, v15

    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v12, v0, v6, v6}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    .line 2865
    :goto_b
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    iget-object v1, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v1, v28

    aget v5, v1, v6

    move-object v1, v11

    move v2, v10

    move/from16 v3, v30

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 2868
    if-eqz v8, :cond_17

    .line 2869
    move-object v0, v11

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 2870
    .local v1, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v2, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v15

    iget v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    move/from16 v20, v5

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 2871
    .end local v1    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_c

    .line 2874
    :cond_17
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v4, v0, v28

    aget v5, v0, v6

    iget v6, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v10

    move/from16 v3, v30

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    .line 2876
    invoke-virtual {v12, v9}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2877
    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measureChild(Landroid/view/View;)V

    .line 2879
    iget-object v0, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_18

    .line 2883
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->setFinalTransitionTransform()V

    .line 2884
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    iget-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1, v9, v14}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    .line 2885
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->resetTransitionTransform()V

    .line 2887
    :cond_18
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v13, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 2888
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 2891
    .end local v8    # "folderFromAllApps":Z
    .end local v9    # "view":Landroid/view/View;
    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private onEndStateTransition()V
    .locals 1

    .line 1531
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1532
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1533
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 1535
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1536
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags()V

    .line 1537
    return-void
.end method

.method private onStartStateTransition()V
    .locals 1

    .line 1524
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    .line 1525
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    .line 1527
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1528
    return-void
.end method

.method private setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z
    .locals 6
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "centerX"    # F
    .param p3, "centerY"    # F

    .line 2483
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 2484
    .local v0, "layout":Lcom/android/launcher3/CellLayout;
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2485
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    goto :goto_1

    .line 2486
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragObjectOverSmartSpace(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2490
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/Workspace;->checkDragObjectIsOverNeighbourPages(Lcom/android/launcher3/DropTarget$DragObject;F)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2492
    if-nez v0, :cond_2

    .line 2494
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getVisiblePageIndices()Lcom/android/launcher3/util/IntSet;

    move-result-object v1

    .line 2495
    .local v1, "visiblePageIndices":Lcom/android/launcher3/util/IntSet;
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2496
    .local v3, "visiblePageIndex":I
    iget v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    int-to-float v4, v4

    iget v5, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher3/Workspace;->verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 2497
    if-eqz v0, :cond_1

    goto :goto_1

    .line 2498
    .end local v3    # "visiblePageIndex":I
    :cond_1
    goto :goto_0

    .line 2503
    .end local v1    # "visiblePageIndices":Lcom/android/launcher3/util/IntSet;
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eq v0, v1, :cond_3

    .line 2504
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2505
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2506
    const/4 v1, 0x1

    return v1

    .line 2508
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private setupLayoutTransition()V
    .locals 6

    .line 530
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 532
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 533
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 536
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    .line 537
    const/4 v4, 0x0

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-static {v3, v4, v5}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v3

    .line 536
    invoke-virtual {v0, v1, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 538
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    .line 539
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v5, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 538
    invoke-virtual {v0, v2, v1}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 541
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 542
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 544
    return-void
.end method

.method private shouldConsumeTouch(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 1041
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1042
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1041
    :goto_1
    return v0
.end method

.method private shouldUseHotseatAsDropLayout(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2512
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2513
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2514
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->isDragWidget(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2517
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    .line 2518
    .local v0, "hotseatShortcuts":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/Workspace;->getViewBoundsRelativeToWorkspace(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2519
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mTempRect:Landroid/graphics/Rect;

    iget v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1

    .line 2515
    .end local v0    # "hotseatShortcuts":Landroid/view/View;
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private transitionStateShouldAllowDrop()Z
    .locals 2

    .line 1740
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3e800000    # 0.25f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1741
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->workspaceIconsCanBeDragged()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1740
    :goto_0
    return v0
.end method

.method private tryRunOverlayCallback()Z
    .locals 2

    .line 1277
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1280
    return v1

    .line 1282
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1286
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    .line 1288
    return v1

    .line 1283
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V
    .locals 1
    .param p1, "accessibilityFlag"    # I
    .param p2, "page"    # Lcom/android/launcher3/CellLayout;

    .line 1603
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 1604
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 1605
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1606
    invoke-virtual {p2, v0}, Lcom/android/launcher3/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1607
    return-void
.end method

.method private updateCellLayoutPadding()V
    .locals 3

    .line 339
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutPaddingPx:Landroid/graphics/Rect;

    .line 340
    .local v0, "padding":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    new-instance v2, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda12;

    invoke-direct {v2, v0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda12;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/IntSparseArrayMap;->forEach(Ljava/util/function/Consumer;)V

    .line 342
    return-void
.end method

.method private updateChildrenLayersEnabled()V
    .locals 4

    .line 1462
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1464
    .local v0, "enableChildrenLayers":Z
    :goto_1
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    if-eq v0, v2, :cond_3

    .line 1465
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mChildrenLayersEnabled:Z

    .line 1466
    if-eqz v0, :cond_2

    .line 1467
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    goto :goto_3

    .line 1469
    :cond_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1470
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    .line 1471
    .local v3, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v3, v1}, Lcom/android/launcher3/CellLayout;->enableHardwareLayer(Z)V

    .line 1469
    .end local v3    # "cl":Lcom/android/launcher3/CellLayout;
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1475
    .end local v2    # "i":I
    :cond_3
    :goto_3
    return-void
.end method

.method private updatePageAlphaValues()V
    .locals 7

    .line 1384
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1385
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1386
    .local v0, "screenCenter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1387
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 1388
    .local v2, "child":Lcom/android/launcher3/CellLayout;
    if-eqz v2, :cond_2

    .line 1389
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1390
    .local v3, "scrollProgress":F
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float/2addr v4, v5

    .line 1391
    .local v4, "alpha":F
    iget-boolean v5, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v5, :cond_0

    .line 1392
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setAlpha(F)V

    goto :goto_2

    .line 1395
    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 1396
    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    .line 1397
    :cond_1
    const/4 v6, 0x4

    .line 1395
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 1386
    .end local v2    # "child":Lcom/android/launcher3/CellLayout;
    .end local v3    # "scrollProgress":F
    .end local v4    # "alpha":F
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1402
    .end local v0    # "screenCenter":I
    .end local v1    # "i":I
    :cond_3
    return-void
.end method

.method private updatePageScrollValues()V
    .locals 4

    .line 1405
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 1406
    .local v0, "screenCenter":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1407
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 1408
    .local v2, "child":Lcom/android/launcher3/CellLayout;
    if-eqz v2, :cond_0

    .line 1409
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/launcher3/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    .line 1410
    .local v3, "scrollProgress":F
    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->setScrollProgress(F)V

    .line 1406
    .end local v2    # "child":Lcom/android/launcher3/CellLayout;
    .end local v3    # "scrollProgress":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1413
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateWorkspaceWidgetsSizes()V
    .locals 11

    .line 345
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    .line 346
    .local v0, "numberOfScreens":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 347
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    .line 348
    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 349
    .local v2, "shortcutAndWidgetContainer":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 350
    .local v3, "shortcutsAndWidgetCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v3, :cond_1

    .line 351
    invoke-virtual {v2, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 352
    .local v5, "view":Landroid/view/View;
    instance-of v6, v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v6, :cond_0

    .line 353
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v6, :cond_0

    .line 354
    nop

    .line 355
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 356
    .local v6, "launcherAppWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    move-object v7, v5

    check-cast v7, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v9, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v10, v6, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v7, v8, v9, v10}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    .line 350
    .end local v5    # "view":Landroid/view/View;
    .end local v6    # "launcherAppWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    .end local v2    # "shortcutAndWidgetContainer":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v3    # "shortcutsAndWidgetCount":I
    .end local v4    # "j":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method private verifyInsidePage(IFF)Lcom/android/launcher3/CellLayout;
    .locals 2
    .param p1, "pageNo"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .line 2578
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 2579
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 2580
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getRight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 2581
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getTop()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getBottom()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, p3, v1

    if-gtz v1, :cond_0

    .line 2583
    return-object v0

    .line 2586
    .end local v0    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private workspaceInModalState()Z
    .locals 2

    .line 1449
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private workspaceInScrollableState()Z
    .locals 2

    .line 1453
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_0

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


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 26
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1750
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    iget-object v15, v7, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 1751
    .local v15, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/16 v20, 0x1

    if-eq v0, v7, :cond_7

    .line 1753
    const/16 v21, 0x0

    if-nez v15, :cond_0

    .line 1754
    return v21

    .line 1756
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_1

    return v21

    .line 1758
    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v8, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 1761
    invoke-direct {v7, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    .line 1765
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    .line 1766
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 1767
    .local v0, "dragCellInfo":Lcom/android/launcher3/CellLayout$CellInfo;
    iget v1, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    .line 1768
    .local v1, "spanX":I
    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    .line 1769
    .local v0, "spanY":I
    move/from16 v22, v0

    move/from16 v23, v1

    goto :goto_0

    .line 1770
    .end local v0    # "spanY":I
    .end local v1    # "spanX":I
    :cond_2
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 1771
    .restart local v1    # "spanX":I
    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move/from16 v22, v0

    move/from16 v23, v1

    .line 1774
    .end local v1    # "spanX":I
    .local v22, "spanY":I
    .local v23, "spanX":I
    :goto_0
    move/from16 v0, v23

    .line 1775
    .local v0, "minSpanX":I
    move/from16 v1, v22

    .line 1776
    .local v1, "minSpanY":I
    iget-object v2, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_3

    .line 1777
    iget-object v2, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v0, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    .line 1778
    iget-object v2, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget v1, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    move/from16 v24, v0

    move/from16 v25, v1

    goto :goto_1

    .line 1776
    :cond_3
    move/from16 v24, v0

    move/from16 v25, v1

    .line 1781
    .end local v0    # "minSpanX":I
    .end local v1    # "minSpanY":I
    .local v24, "minSpanX":I
    .local v25, "minSpanY":I
    :goto_1
    iget-object v0, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v21

    float-to-int v1, v1

    aget v0, v0, v20

    float-to-int v2, v0

    iget-object v6, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v24

    move/from16 v4, v25

    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1784
    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v21

    aget v1, v1, v20

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v6

    .line 1786
    .local v6, "distance":F
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-eqz v0, :cond_4

    iget-object v1, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v2, v15

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1788
    return v20

    .line 1791
    :cond_4
    iget-boolean v0, v7, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v7, v0, v15, v1, v6}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1793
    return v20

    .line 1796
    :cond_5
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1797
    .local v0, "resultSpan":[I
    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v21

    float-to-int v10, v2

    aget v1, v1, v20

    float-to-int v11, v1

    const/16 v16, 0x0

    iget-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v19, 0x4

    move-object v9, v15

    move/from16 v12, v24

    move/from16 v13, v25

    move/from16 v14, v23

    move-object v2, v15

    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v2, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    move/from16 v15, v22

    move-object/from16 v17, v1

    move-object/from16 v18, v0

    invoke-virtual/range {v9 .. v19}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v1

    iput-object v1, v7, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 1800
    aget v3, v1, v21

    if-ltz v3, :cond_6

    aget v1, v1, v20

    if-ltz v1, :cond_6

    move/from16 v1, v20

    goto :goto_2

    :cond_6
    move/from16 v1, v21

    .line 1803
    .local v1, "foundCell":Z
    :goto_2
    if-nez v1, :cond_8

    .line 1804
    iget-object v3, v8, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v8, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-virtual {v7, v2, v3, v4}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    .line 1805
    return v21

    .line 1751
    .end local v0    # "resultSpan":[I
    .end local v1    # "foundCell":Z
    .end local v2    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .end local v6    # "distance":F
    .end local v22    # "spanY":I
    .end local v23    # "spanX":I
    .end local v24    # "minSpanX":I
    .end local v25    # "minSpanY":I
    .restart local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_7
    move-object v2, v15

    .line 1809
    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v2    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_8
    invoke-virtual {v7, v2}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    .line 1810
    .local v0, "screenId":I
    sget-object v1, Lcom/android/launcher3/Workspace;->EXTRA_EMPTY_SCREEN_IDS:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1811
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;

    .line 1814
    :cond_9
    return v20
.end method

.method public addExtraEmptyScreens()V
    .locals 1

    .line 703
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    .line 708
    return-void
.end method

.method addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z
    .locals 6
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "target"    # Lcom/android/launcher3/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p6, "external"    # Z

    .line 1950
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float v0, p4, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 1952
    :cond_0
    aget v0, p3, v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-virtual {p2, v0, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1953
    .local v0, "dropOverView":Landroid/view/View;
    iget-boolean v3, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    if-nez v3, :cond_1

    return v1

    .line 1954
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 1956
    instance-of v3, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v3, :cond_3

    .line 1957
    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    .line 1958
    .local v3, "fi":Lcom/android/launcher3/folder/FolderIcon;
    iget-object v4, p5, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1959
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher3/folder/FolderIcon;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    iget-object v5, p5, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED_ON_FOLDER_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1960
    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1961
    invoke-virtual {v3, p5, v1}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V

    .line 1963
    if-nez p6, :cond_2

    .line 1964
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1966
    :cond_2
    return v2

    .line 1969
    .end local v3    # "fi":Lcom/android/launcher3/folder/FolderIcon;
    :cond_3
    return v1
.end method

.method public animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 25
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "dragView"    # Lcom/android/launcher3/dragndrop/DragView;
    .param p4, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p5, "animationType"    # I
    .param p6, "finalView"    # Landroid/view/View;
    .param p7, "external"    # Z

    .line 2969
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v14, p0

    move-object/from16 v13, p1

    move/from16 v12, p5

    move-object/from16 v11, p6

    const/4 v9, 0x2

    new-array v10, v9, [I

    .line 2970
    .local v10, "finalPos":[I
    new-array v15, v9, [F

    .line 2971
    .local v15, "scaleXY":[F
    instance-of v0, v13, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    const/4 v8, 0x1

    xor-int/lit8 v7, v0, 0x1

    .line 2972
    .local v7, "scalePreview":Z
    iget-object v6, v14, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object v1, v10

    move-object v2, v15

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/dragndrop/DragView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/model/data/ItemInfo;[IZLandroid/view/View;)V

    .line 2975
    iget-object v0, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2976
    .local v0, "res":Landroid/content/res/Resources;
    sget v1, Lcom/android/launcher3/R$integer;->config_dropAnimMaxDuration:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/lit16 v1, v1, -0xc8

    .line 2978
    .local v1, "duration":I
    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x4

    const/4 v8, 0x0

    if-eq v2, v3, :cond_1

    iget v2, v13, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 2980
    .local v2, "isWidget":Z
    :goto_1
    if-eq v12, v9, :cond_3

    if-eqz p7, :cond_2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    goto :goto_3

    :cond_3
    :goto_2
    if-eqz v11, :cond_5

    .line 2982
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v4

    if-eq v4, v11, :cond_4

    .line 2983
    invoke-direct {v14, v13, v11}, Lcom/android/launcher3/Workspace;->createWidgetDrawable(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2984
    .local v4, "crossFadeDrawable":Landroid/graphics/drawable/Drawable;
    int-to-float v5, v1

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v6, p3

    invoke-virtual {v6, v4, v5}, Lcom/android/launcher3/dragndrop/DragView;->crossFadeContent(Landroid/graphics/drawable/Drawable;I)V

    .line 2985
    .end local v4    # "crossFadeDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x1

    goto :goto_4

    .line 2982
    :cond_4
    move-object/from16 v6, p3

    goto :goto_3

    .line 2980
    :cond_5
    move-object/from16 v6, p3

    .line 2985
    :goto_3
    if-eqz v2, :cond_6

    if-eqz p7, :cond_6

    .line 2986
    aget v4, v15, v8

    const/4 v5, 0x1

    aget v9, v15, v5

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    aput v4, v15, v5

    aput v4, v15, v8

    goto :goto_4

    .line 2985
    :cond_6
    const/4 v5, 0x1

    .line 2989
    :goto_4
    iget-object v4, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    .line 2990
    .local v4, "dragLayer":Lcom/android/launcher3/dragndrop/DragLayer;
    if-ne v12, v3, :cond_7

    .line 2991
    iget-object v3, v14, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    const/16 v18, 0x0

    const v19, 0x3dcccccd    # 0.1f

    const v20, 0x3dcccccd    # 0.1f

    const/16 v21, 0x0

    move-object/from16 v24, v15

    .end local v15    # "scaleXY":[F
    .local v24, "scaleXY":[F
    move-object v15, v3

    move-object/from16 v16, p3

    move-object/from16 v17, v10

    move-object/from16 v22, p4

    move/from16 v23, v1

    invoke-virtual/range {v15 .. v23}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;[IFFFILjava/lang/Runnable;I)V

    move-object/from16 v20, v10

    goto :goto_6

    .line 2995
    .end local v24    # "scaleXY":[F
    .restart local v15    # "scaleXY":[F
    :cond_7
    move-object/from16 v24, v15

    .end local v15    # "scaleXY":[F
    .restart local v24    # "scaleXY":[F
    if-ne v12, v5, :cond_8

    .line 2996
    const/4 v3, 0x2

    .local v3, "endStyle":I
    goto :goto_5

    .line 2998
    .end local v3    # "endStyle":I
    :cond_8
    const/4 v3, 0x0

    .line 3001
    .restart local v3    # "endStyle":I
    :goto_5
    new-instance v15, Lcom/android/launcher3/Workspace$6;

    move-object/from16 v9, p4

    invoke-direct {v15, v14, v11, v9}, Lcom/android/launcher3/Workspace$6;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3012
    .local v15, "onComplete":Ljava/lang/Runnable;
    aget v16, v10, v8

    aget v17, v10, v5

    const/high16 v18, 0x3f800000    # 1.0f

    aget v19, v24, v8

    aget v5, v24, v5

    move-object v8, v4

    move-object/from16 v9, p3

    move-object/from16 v20, v10

    .end local v10    # "finalPos":[I
    .local v20, "finalPos":[I
    move/from16 v10, v16

    move/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move v14, v5

    move/from16 v16, v3

    move/from16 v17, v1

    move-object/from16 v18, p0

    invoke-virtual/range {v8 .. v18}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;IIFFFLjava/lang/Runnable;IILandroid/view/View;)V

    .line 3016
    .end local v3    # "endStyle":I
    .end local v15    # "onComplete":Ljava/lang/Runnable;
    :goto_6
    return-void
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1376
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1377
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 1379
    :cond_0
    return-void
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;
    .locals 26
    .param p1, "child"    # Landroid/view/View;
    .param p2, "draggableView"    # Lcom/android/launcher3/dragndrop/DraggableView;
    .param p3, "source"    # Lcom/android/launcher3/DragSource;
    .param p4, "dragObject"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p5, "previewProvider"    # Lcom/android/launcher3/graphics/DragPreviewProvider;
    .param p6, "dragOptions"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1648
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v15, p6

    const/high16 v3, 0x3f800000    # 1.0f

    .line 1649
    .local v3, "iconScale":F
    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_0

    .line 1650
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->getIcon()Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v4

    .line 1651
    .local v4, "icon":Landroid/graphics/drawable/Drawable;
    instance-of v5, v4, Lcom/android/launcher3/icons/FastBitmapDrawable;

    if-eqz v5, :cond_0

    .line 1652
    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getAnimatedScale()F

    move-result v3

    move/from16 v16, v3

    goto :goto_0

    .line 1657
    .end local v4    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    move/from16 v16, v3

    .end local v3    # "iconScale":F
    .local v16, "iconScale":F
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->clearFocus()V

    .line 1658
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1659
    instance-of v4, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v4, :cond_1

    .line 1660
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    .line 1661
    .local v4, "icon":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->clearPressedBackground()V

    .line 1664
    .end local v4    # "icon":Lcom/android/launcher3/BubbleTextView;
    :cond_1
    if-nez p2, :cond_2

    instance-of v4, v1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v4, :cond_2

    .line 1665
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/dragndrop/DraggableView;

    move-object v14, v4

    .end local p2    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v4, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    goto :goto_1

    .line 1668
    .end local v4    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .restart local p2    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :cond_2
    move-object/from16 v14, p2

    .end local p2    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v14, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :goto_1
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getContentView()Landroid/view/View;

    move-result-object v13

    .line 1672
    .local v13, "contentView":Landroid/view/View;
    if-nez v13, :cond_3

    .line 1673
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->createDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1674
    .local v4, "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/graphics/drawable/Drawable;[I)F

    move-result v5

    move-object/from16 v17, v4

    move/from16 v18, v5

    .local v5, "scale":F
    goto :goto_2

    .line 1676
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v5    # "scale":F
    :cond_3
    const/4 v4, 0x0

    .line 1677
    .restart local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    invoke-virtual {v2, v13, v5}, Lcom/android/launcher3/graphics/DragPreviewProvider;->getScaleAndPosition(Landroid/view/View;[I)F

    move-result v5

    move-object/from16 v17, v4

    move/from16 v18, v5

    .line 1680
    .end local v4    # "drawable":Landroid/graphics/drawable/Drawable;
    .local v17, "drawable":Landroid/graphics/drawable/Drawable;
    .local v18, "scale":F
    :goto_2
    iget v4, v2, Lcom/android/launcher3/graphics/DragPreviewProvider;->previewPadding:I

    div-int/lit8 v12, v4, 0x2

    .line 1681
    .local v12, "halfPadding":I
    iget-object v4, v0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    aget v19, v4, v3

    .line 1682
    .local v19, "dragLayerX":I
    const/4 v3, 0x1

    aget v3, v4, v3

    .line 1684
    .local v3, "dragLayerY":I
    const/4 v4, 0x0

    .line 1685
    .local v4, "dragVisualizeOffset":Landroid/graphics/Point;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v11, v5

    .line 1687
    .local v11, "dragRect":Landroid/graphics/Rect;
    if-eqz v14, :cond_4

    .line 1688
    invoke-interface {v14, v11}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 1689
    iget v5, v11, Landroid/graphics/Rect;->top:I

    add-int/2addr v3, v5

    .line 1690
    new-instance v5, Landroid/graphics/Point;

    neg-int v6, v12

    invoke-direct {v5, v6, v12}, Landroid/graphics/Point;-><init>(II)V

    move-object v4, v5

    move/from16 v20, v3

    move-object/from16 v21, v4

    goto :goto_3

    .line 1687
    :cond_4
    move/from16 v20, v3

    move-object/from16 v21, v4

    .line 1694
    .end local v3    # "dragLayerY":I
    .end local v4    # "dragVisualizeOffset":Landroid/graphics/Point;
    .local v20, "dragLayerY":I
    .local v21, "dragVisualizeOffset":Landroid/graphics/Point;
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz v3, :cond_5

    .line 1695
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 1698
    :cond_5
    instance-of v3, v1, Lcom/android/launcher3/BubbleTextView;

    if-eqz v3, :cond_6

    iget-boolean v3, v15, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v3, :cond_6

    .line 1699
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v3

    .line 1700
    .local v3, "isEditMode":Z
    if-nez v3, :cond_6

    .line 1701
    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->startLongPressAction()Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    move-result-object v4

    iput-object v4, v15, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 1706
    .end local v3    # "isEditMode":Z
    :cond_6
    instance-of v3, v13, Landroid/view/View;

    if-eqz v3, :cond_8

    .line 1707
    instance-of v3, v13, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v3, :cond_7

    .line 1708
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v4, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;

    iget-object v5, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v4, v5}, Lcom/android/launcher3/widget/dragndrop/AppWidgetHostViewDragListener;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1710
    :cond_7
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v22, v18, v16

    move-object v4, v13

    move-object v5, v14

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, v21

    move-object/from16 v23, v11

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    .local v23, "dragRect":Landroid/graphics/Rect;
    move/from16 v24, v12

    .end local v12    # "halfPadding":I
    .local v24, "halfPadding":I
    move/from16 v12, v22

    move-object/from16 v22, v13

    .end local v13    # "contentView":Landroid/view/View;
    .local v22, "contentView":Landroid/view/View;
    move/from16 v13, v18

    move-object/from16 v25, v14

    .end local v14    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .local v25, "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v3

    .local v3, "dv":Lcom/android/launcher3/dragndrop/DragView;
    goto :goto_4

    .line 1723
    .end local v3    # "dv":Lcom/android/launcher3/dragndrop/DragView;
    .end local v22    # "contentView":Landroid/view/View;
    .end local v23    # "dragRect":Landroid/graphics/Rect;
    .end local v24    # "halfPadding":I
    .end local v25    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .restart local v11    # "dragRect":Landroid/graphics/Rect;
    .restart local v12    # "halfPadding":I
    .restart local v13    # "contentView":Landroid/view/View;
    .restart local v14    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    :cond_8
    move-object/from16 v23, v11

    move/from16 v24, v12

    move-object/from16 v22, v13

    move-object/from16 v25, v14

    .end local v11    # "dragRect":Landroid/graphics/Rect;
    .end local v12    # "halfPadding":I
    .end local v13    # "contentView":Landroid/view/View;
    .end local v14    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    .restart local v22    # "contentView":Landroid/view/View;
    .restart local v23    # "dragRect":Landroid/graphics/Rect;
    .restart local v24    # "halfPadding":I
    .restart local v25    # "draggableView":Lcom/android/launcher3/dragndrop/DraggableView;
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    mul-float v12, v18, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v25

    move/from16 v6, v19

    move/from16 v7, v20

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, v21

    move/from16 v13, v18

    move-object/from16 v14, p6

    invoke-virtual/range {v3 .. v14}, Lcom/android/launcher3/dragndrop/DragController;->startDrag(Landroid/graphics/drawable/Drawable;Lcom/android/launcher3/dragndrop/DraggableView;IILcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Point;Landroid/graphics/Rect;FFLcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    move-result-object v3

    .line 1736
    .restart local v3    # "dv":Lcom/android/launcher3/dragndrop/DragView;
    :goto_4
    return-object v3
.end method

.method public beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 9
    .param p1, "child"    # Landroid/view/View;
    .param p2, "source"    # Lcom/android/launcher3/DragSource;
    .param p3, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1630
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 1631
    .local v0, "dragObject":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_0

    .line 1637
    const/4 v4, 0x0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v7, Lcom/android/launcher3/graphics/DragPreviewProvider;

    invoke-direct {v7, p1}, Lcom/android/launcher3/graphics/DragPreviewProvider;-><init>(Landroid/view/View;)V

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/dragndrop/DraggableView;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/graphics/DragPreviewProvider;Lcom/android/launcher3/dragndrop/DragOptions;)Lcom/android/launcher3/dragndrop/DragView;

    .line 1639
    return-void

    .line 1632
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag started with a view that has no tag set. This will cause a crash (issue 11627249) down the line. View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1634
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1635
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public bindAndInitFirstWorkspaceScreen()V
    .locals 0

    .line 569
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    return-void
.end method

.method protected canAnnouncePageDescription()Z
    .locals 2

    .line 3497
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method clearDropTargets()V
    .locals 1

    .line 3259
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$9;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3269
    return-void
.end method

.method public commitExtraEmptyScreens()Lcom/android/launcher3/util/IntSet;
    .locals 2

    .line 846
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    return-object v0

    .line 851
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v0}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 852
    .local v0, "extraEmptyPageIds":Lcom/android/launcher3/util/IntSet;
    new-instance v1, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda14;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/IntSet;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    .line 855
    return-object v0
.end method

.method public computeScroll()V
    .locals 1

    .line 1369
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScroll()V

    .line 1370
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1371
    return-void
.end method

.method public createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 2

    .line 1592
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getImportantForAccessibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1597
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0

    .line 1599
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 21
    .param p1, "newView"    # Landroid/view/View;
    .param p2, "container"    # I
    .param p3, "target"    # Lcom/android/launcher3/CellLayout;
    .param p4, "targetCell"    # [I
    .param p5, "distance"    # F
    .param p6, "external"    # Z
    .param p7, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1893
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v7, p3

    move-object/from16 v15, p7

    invoke-virtual/range {p3 .. p4}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v1

    cmpl-float v1, p5, v1

    const/4 v8, 0x0

    if-lez v1, :cond_0

    return v8

    .line 1894
    :cond_0
    aget v1, p4, v8

    const/16 v16, 0x1

    aget v2, p4, v16

    invoke-virtual {v7, v1, v2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v14

    .line 1896
    .local v14, "v":Landroid/view/View;
    const/4 v1, 0x0

    .line 1897
    .local v1, "hasntMoved":Z
    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v2, :cond_2

    .line 1898
    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 1899
    .local v2, "cellParent":Lcom/android/launcher3/CellLayout;
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cellX:I

    aget v4, p4, v8

    if-ne v3, v4, :cond_1

    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v3, v3, Lcom/android/launcher3/CellLayout$CellInfo;->cellY:I

    aget v4, p4, v16

    if-ne v3, v4, :cond_1

    if-ne v2, v7, :cond_1

    move/from16 v3, v16

    goto :goto_0

    :cond_1
    move v3, v8

    :goto_0
    move v1, v3

    move/from16 v17, v1

    goto :goto_1

    .line 1897
    .end local v2    # "cellParent":Lcom/android/launcher3/CellLayout;
    :cond_2
    move/from16 v17, v1

    .line 1903
    .end local v1    # "hasntMoved":Z
    .local v17, "hasntMoved":Z
    :goto_1
    if-eqz v14, :cond_8

    if-nez v17, :cond_8

    iget-boolean v1, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v1, :cond_3

    move-object v0, v14

    goto/16 :goto_3

    .line 1904
    :cond_3
    iput-boolean v8, v0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 1905
    invoke-virtual {v0, v7}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v18

    .line 1907
    .local v18, "screenId":I
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v13, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1908
    .local v13, "aboveShortcut":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v12, v1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1910
    .local v12, "willBecomeShortcut":Z
    if-eqz v13, :cond_7

    if-eqz v12, :cond_7

    .line 1911
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1912
    .local v11, "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1914
    .local v10, "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    if-nez p6, :cond_4

    .line 1915
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1918
    :cond_4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v9, v1

    .line 1919
    .local v9, "folderLocation":Landroid/graphics/Rect;
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v14, v9}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    move-result v19

    .line 1920
    .local v19, "scale":F
    invoke-virtual {v7, v14}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 1921
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, v10}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object v2, v15, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FOLDER_CREATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1922
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1923
    iget-object v1, v0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v5, p4, v8

    aget v6, p4, v16

    move-object/from16 v2, p3

    move/from16 v3, p2

    move/from16 v4, v18

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/Launcher;->addFolder(Lcom/android/launcher3/CellLayout;IIII)Lcom/android/launcher3/folder/FolderIcon;

    move-result-object v1

    .line 1925
    .local v1, "fi":Lcom/android/launcher3/folder/FolderIcon;
    const/4 v2, -0x1

    iput v2, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 1926
    iput v2, v10, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 1927
    iput v2, v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellX:I

    .line 1928
    iput v2, v11, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->cellY:I

    .line 1931
    if-eqz v15, :cond_5

    move/from16 v8, v16

    :cond_5
    move v2, v8

    .line 1932
    .local v2, "animate":Z
    if-eqz v2, :cond_6

    .line 1935
    iget-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->setFolderBackground(Lcom/android/launcher3/folder/PreviewBackground;)V

    .line 1936
    new-instance v3, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v3}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v3, v0, Lcom/android/launcher3/Workspace;->mFolderCreateBg:Lcom/android/launcher3/folder/PreviewBackground;

    .line 1937
    move-object v8, v1

    move-object v3, v9

    .end local v9    # "folderLocation":Landroid/graphics/Rect;
    .local v3, "folderLocation":Landroid/graphics/Rect;
    move-object v9, v10

    move-object v4, v10

    .end local v10    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .local v4, "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    move-object v10, v14

    move-object v5, v11

    .end local v11    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .local v5, "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    move v6, v12

    .end local v12    # "willBecomeShortcut":Z
    .local v6, "willBecomeShortcut":Z
    move-object/from16 v12, p7

    move/from16 v20, v13

    .end local v13    # "aboveShortcut":Z
    .local v20, "aboveShortcut":Z
    move-object v13, v3

    move-object v0, v14

    .end local v14    # "v":Landroid/view/View;
    .local v0, "v":Landroid/view/View;
    move/from16 v14, v19

    invoke-virtual/range {v8 .. v14}, Lcom/android/launcher3/folder/FolderIcon;->performCreateAnimation(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Landroid/view/View;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher3/DropTarget$DragObject;Landroid/graphics/Rect;F)V

    goto :goto_2

    .line 1939
    .end local v0    # "v":Landroid/view/View;
    .end local v3    # "folderLocation":Landroid/graphics/Rect;
    .end local v4    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v5    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v6    # "willBecomeShortcut":Z
    .end local v20    # "aboveShortcut":Z
    .restart local v9    # "folderLocation":Landroid/graphics/Rect;
    .restart local v10    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v11    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v12    # "willBecomeShortcut":Z
    .restart local v13    # "aboveShortcut":Z
    .restart local v14    # "v":Landroid/view/View;
    :cond_6
    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move v6, v12

    move/from16 v20, v13

    move-object v0, v14

    .end local v9    # "folderLocation":Landroid/graphics/Rect;
    .end local v10    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v11    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v12    # "willBecomeShortcut":Z
    .end local v13    # "aboveShortcut":Z
    .end local v14    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    .restart local v3    # "folderLocation":Landroid/graphics/Rect;
    .restart local v4    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v5    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .restart local v6    # "willBecomeShortcut":Z
    .restart local v20    # "aboveShortcut":Z
    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->prepareCreateAnimation(Landroid/view/View;)Landroid/graphics/drawable/Drawable;

    .line 1940
    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1941
    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/FolderIcon;->addItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 1943
    :goto_2
    return v16

    .line 1910
    .end local v0    # "v":Landroid/view/View;
    .end local v1    # "fi":Lcom/android/launcher3/folder/FolderIcon;
    .end local v2    # "animate":Z
    .end local v3    # "folderLocation":Landroid/graphics/Rect;
    .end local v4    # "destInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v5    # "sourceInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .end local v6    # "willBecomeShortcut":Z
    .end local v19    # "scale":F
    .end local v20    # "aboveShortcut":Z
    .restart local v12    # "willBecomeShortcut":Z
    .restart local v13    # "aboveShortcut":Z
    .restart local v14    # "v":Landroid/view/View;
    :cond_7
    move v6, v12

    move/from16 v20, v13

    move-object v0, v14

    .line 1945
    .end local v12    # "willBecomeShortcut":Z
    .end local v13    # "aboveShortcut":Z
    .end local v14    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    .restart local v6    # "willBecomeShortcut":Z
    .restart local v20    # "aboveShortcut":Z
    return v8

    .line 1903
    .end local v0    # "v":Landroid/view/View;
    .end local v6    # "willBecomeShortcut":Z
    .end local v18    # "screenId":I
    .end local v20    # "aboveShortcut":Z
    .restart local v14    # "v":Landroid/view/View;
    :cond_8
    move-object v0, v14

    .end local v14    # "v":Landroid/view/View;
    .restart local v0    # "v":Landroid/view/View;
    :goto_3
    return v8
.end method

.method public deferRemoveExtraEmptyScreen()V
    .locals 1

    .line 488
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 489
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1084
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsEventOverQsb:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1086
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    sub-float/2addr v0, v1

    .line 1087
    .local v0, "deltaX":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 1088
    .local v1, "absDeltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1090
    .local v2, "absDeltaY":F
    const/4 v3, 0x0

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v3

    if-nez v3, :cond_1

    return-void

    .line 1092
    :cond_1
    div-float v3, v2, v1

    .line 1093
    .local v3, "slope":F
    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->atan(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 1095
    .local v4, "theta":F
    iget v5, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/launcher3/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v2, v5

    if-lez v5, :cond_3

    .line 1096
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->cancelCurrentPageLongPress()V

    .line 1099
    :cond_3
    const v5, 0x3f860a92

    cmpl-float v5, v4, v5

    if-lez v5, :cond_4

    .line 1101
    return-void

    .line 1102
    :cond_4
    const v5, 0x3f060a92

    cmpl-float v6, v4, v5

    if-lez v6, :cond_5

    .line 1107
    sub-float/2addr v4, v5

    .line 1108
    div-float v5, v4, v5

    float-to-double v5, v5

    .line 1109
    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 1110
    .local v5, "extraRatio":F
    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v5

    add-float/2addr v7, v6

    invoke-super {p0, p1, v7}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1111
    .end local v5    # "extraRatio":F
    goto :goto_0

    .line 1113
    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    .line 1115
    :goto_0
    return-void

    .line 1084
    .end local v0    # "deltaX":F
    .end local v1    # "absDeltaX":F
    .end local v2    # "absDeltaY":F
    .end local v3    # "slope":F
    .end local v4    # "theta":F
    :cond_6
    :goto_1
    return-void
.end method

.method disableLayoutTransitions()V
    .locals 1

    .line 550
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 551
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 3153
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3154
    return-void
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 1058
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1062
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 1060
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method enableLayoutTransitions()V
    .locals 1

    .line 547
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 548
    return-void
.end method

.method public estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 7
    .param p1, "cl"    # Lcom/android/launcher3/CellLayout;
    .param p2, "hCell"    # I
    .param p3, "vCell"    # I
    .param p4, "hSpan"    # I
    .param p5, "vSpan"    # I

    .line 412
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 413
    .local v0, "r":Landroid/graphics/Rect;
    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 414
    return-object v0
.end method

.method public estimateItemSize(Lcom/android/launcher3/model/data/ItemInfo;)[I
    .locals 11
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 369
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 370
    .local v0, "size":[I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_3

    .line 372
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 373
    .local v1, "cl":Lcom/android/launcher3/CellLayout;
    iget v4, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v10, v4

    .line 375
    .local v10, "isWidget":Z
    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v4, p0

    move-object v5, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/Workspace;->estimateItemPosition(Lcom/android/launcher3/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v4

    .line 377
    .local v4, "r":Landroid/graphics/Rect;
    const/high16 v5, 0x3f800000    # 1.0f

    .line 378
    .local v5, "scale":F
    if-eqz v10, :cond_1

    .line 379
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 380
    .local v6, "profile":Lcom/android/launcher3/DeviceProfile;
    iget-object v7, v6, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    iget-object v8, v6, Lcom/android/launcher3/DeviceProfile;->appWidgetScale:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v7, v8}, Lcom/android/launcher3/Utilities;->shrinkRect(Landroid/graphics/Rect;FF)F

    move-result v5

    .line 382
    .end local v6    # "profile":Lcom/android/launcher3/DeviceProfile;
    :cond_1
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v6

    aput v6, v0, v3

    .line 383
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v6

    aput v6, v0, v2

    .line 385
    if-eqz v10, :cond_2

    .line 386
    aget v6, v0, v3

    int-to-float v6, v6

    div-float/2addr v6, v5

    float-to-int v6, v6

    aput v6, v0, v3

    .line 387
    aget v3, v0, v2

    int-to-float v3, v3

    div-float/2addr v3, v5

    float-to-int v3, v3

    aput v3, v0, v2

    .line 389
    :cond_2
    return-object v0

    .line 391
    .end local v1    # "cl":Lcom/android/launcher3/CellLayout;
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v5    # "scale":F
    .end local v10    # "isWidget":Z
    :cond_3
    const v1, 0x7fffffff

    aput v1, v0, v3

    .line 392
    aput v1, v0, v2

    .line 393
    return-object v0
.end method

.method findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I
    .locals 6
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p6, "recycle"    # [I

    .line 3049
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object v0, p5

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    return-object v0
.end method

.method public getCurrentDragOverlappingLayout()Lcom/android/launcher3/CellLayout;
    .locals 1

    .line 2303
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    .line 3502
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mNextPage:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 3503
    .local v0, "page":I
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getPageDescription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCurrentPageScreenIds()Lcom/android/launcher3/util/IntSet;
    .locals 3

    .line 906
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getScreenIdForPageIndex(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/launcher3/util/IntSet;->wrap([I)Lcom/android/launcher3/util/IntSet;

    move-result-object v0

    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .line 1442
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1443
    const/high16 v0, 0x60000

    return v0

    .line 1445
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getDescendantFocusability()I

    move-result v0

    return v0
.end method

.method public getDragInfo()Lcom/android/launcher3/CellLayout$CellInfo;
    .locals 1

    .line 3039
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    return-object v0
.end method

.method public getExpectedHeight()I
    .locals 1

    .line 3483
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3484
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredHeight()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 3483
    :goto_1
    return v0
.end method

.method public getExpectedWidth()I
    .locals 1

    .line 3489
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsLayoutValid:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 3490
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getMeasuredWidth()I

    move-result v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    .line 3489
    :goto_1
    return v0
.end method

.method public getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .locals 2
    .param p1, "operator"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 3244
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    .line 3245
    .local v0, "value":[Landroid/view/View;
    new-instance v1, Lcom/android/launcher3/Workspace$8;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher3/Workspace$8;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;[Landroid/view/View;)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3255
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 2690
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2691
    return-void
.end method

.method public getHomescreenIconByItemId(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 3234
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHotseat()Lcom/android/launcher3/Hotseat;
    .locals 1

    .line 880
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    return-object v0
.end method

.method public getIdForScreen(Lcom/android/launcher3/CellLayout;)I
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;

    .line 894
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 895
    .local v0, "index":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->keyAt(I)I

    move-result v1

    return v1

    .line 898
    :cond_0
    return v1
.end method

.method public getNumPagesForWallpaperParallax()I
    .locals 1

    .line 408
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->getNumPagesForWallpaperParallax()I

    move-result v0

    return v0
.end method

.method public getPageAreaRelativeToDragLayer()Landroid/graphics/Rect;
    .locals 8

    .line 2206
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2207
    .local v0, "area":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    .line 2208
    .local v1, "nextPage":I
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v2

    .line 2209
    .local v2, "panelCount":I
    move v3, v1

    .local v3, "page":I
    :goto_0
    add-int v4, v1, v2

    if-ge v3, v4, :cond_1

    .line 2210
    invoke-virtual {p0, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 2211
    .local v4, "child":Lcom/android/launcher3/CellLayout;
    if-nez v4, :cond_0

    .line 2212
    goto :goto_1

    .line 2215
    :cond_0
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 2216
    .local v5, "boundingLayout":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2217
    .local v6, "tmpRect":Landroid/graphics/Rect;
    iget-object v7, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/android/launcher3/dragndrop/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 2218
    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2209
    .end local v4    # "child":Lcom/android/launcher3/CellLayout;
    .end local v5    # "boundingLayout":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v6    # "tmpRect":Landroid/graphics/Rect;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2221
    .end local v3    # "page":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPageIndexForScreenId(I)I
    .locals 1
    .param p1, "screenId"    # I

    .line 902
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getPanelCount()I
    .locals 1

    .line 484
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->getPanelCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .line 3207
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3208
    .local v3, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v5, -0x1

    if-le v4, v5, :cond_0

    .line 3209
    return-object v3

    .line 3207
    .end local v3    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3212
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenIdForPageIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .line 910
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    return v0

    .line 913
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getScreenOrder()Lcom/android/launcher3/util/IntArray;
    .locals 1

    .line 917
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    return-object v0
.end method

.method public getScreenPair(I)I
    .locals 2
    .param p1, "screenId"    # I

    .line 925
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/16 v0, -0xc8

    const/16 v1, -0xc9

    if-ne p1, v1, :cond_0

    .line 926
    return v0

    .line 927
    :cond_0
    if-ne p1, v0, :cond_1

    .line 928
    return v1

    .line 929
    :cond_1
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_2

    .line 930
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 932
    :cond_2
    add-int/lit8 v0, p1, -0x1

    return v0
.end method

.method public getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;
    .locals 3
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 942
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 943
    return-object v1

    .line 945
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    .line 946
    .local v0, "screenId":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 947
    return-object v1

    .line 949
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->getScreenWithId(I)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    return-object v1
.end method

.method public getScreenWithId(I)Lcom/android/launcher3/CellLayout;
    .locals 1
    .param p1, "screenId"    # I

    .line 890
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    return-object v0
.end method

.method public getStateTransitionAnimation()Lcom/android/launcher3/WorkspaceStateTransitionAnimation;
    .locals 1

    .line 1572
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    return-object v0
.end method

.method public getWallpaperOffsetForCenterPage()F
    .locals 1

    .line 398
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->getWallpaperOffsetForPage(I)F

    move-result v0

    return v0
.end method

.method public getWidgetForAppWidgetId(I)Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 3238
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda15;

    invoke-direct {v0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda15;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getFirstMatch(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    return-object v0
.end method

.method public getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;
    .locals 4

    .line 3219
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 3221
    .local v0, "screenCount":I
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3222
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lcom/android/launcher3/CellLayout;

    .line 3223
    .local v1, "layouts":[Lcom/android/launcher3/CellLayout;
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    .line 3225
    .end local v1    # "layouts":[Lcom/android/launcher3/CellLayout;
    :cond_0
    new-array v1, v0, [Lcom/android/launcher3/CellLayout;

    .line 3227
    .restart local v1    # "layouts":[Lcom/android/launcher3/CellLayout;
    :goto_0
    const/4 v2, 0x0

    .local v2, "screen":I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 3228
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    aput-object v3, v1, v2

    .line 3227
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3230
    .end local v2    # "screen":I
    :cond_1
    return-object v1
.end method

.method public hasExtraEmptyScreens()Z
    .locals 2

    .line 832
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 833
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 834
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    const/16 v1, -0xc8

    .line 835
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 832
    :goto_0
    return v0
.end method

.method public hasOverlay()Z
    .locals 1

    .line 1157
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected initWorkspace()V
    .locals 1

    .line 519
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    .line 520
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setClipToPadding(Z)V

    .line 522
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->setupLayoutTransition()V

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->setWallpaperDimension()V

    .line 526
    return-void
.end method

.method public insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "insertIndex"    # I

    .line 634
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->workspace_screen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 643
    .local v0, "newScreen":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 644
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1, p2, p1}, Lcom/android/launcher3/util/IntArray;->add(II)V

    .line 645
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/Workspace;->addView(Landroid/view/View;I)V

    .line 646
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 647
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    .line 646
    invoke-virtual {v1, v2, v0, p2}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->applyChildState(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/CellLayout;I)V

    .line 649
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    .line 650
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateCellLayoutPadding()V

    .line 651
    return-object v0

    .line 635
    .end local v0    # "newScreen":Lcom/android/launcher3/CellLayout;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Screen id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already exists!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public insertNewWorkspaceScreen(I)V
    .locals 1
    .param p1, "screenId"    # I

    .line 630
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    .line 631
    return-void
.end method

.method public insertNewWorkspaceScreenBeforeEmptyScreen(I)V
    .locals 2
    .param p1, "screenId"    # I

    .line 622
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    const/16 v1, -0xc9

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v0

    .line 623
    .local v0, "insertIndex":I
    if-gez v0, :cond_0

    .line 624
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    .line 626
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(II)Lcom/android/launcher3/CellLayout;

    .line 627
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 3145
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isFinishedSwitchingState()Z
    .locals 2

    .line 1052
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mTransitionProgress:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

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

.method public isOverlayShown()Z
    .locals 1

    .line 3454
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    return v0
.end method

.method protected isSignificantMove(FI)Z
    .locals 3
    .param p1, "absoluteDelta"    # F
    .param p2, "pageOrientedSize"    # I

    .line 3527
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 3528
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_0

    .line 3529
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->isSignificantMove(FI)Z

    move-result v1

    return v1

    .line 3532
    :cond_0
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->availableWidthPx:I

    int-to-float v1, v1

    const v2, 0x3e19999a    # 0.15f

    mul-float/2addr v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isSwitchingState()Z
    .locals 1

    .line 1046
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    return v0
.end method

.method synthetic lambda$addExtraEmptyScreenOnDrag$1$com-android-launcher3-Workspace(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "extraEmptyPageId"    # Ljava/lang/Integer;

    .line 691
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 692
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    .line 694
    :cond_0
    return-void
.end method

.method synthetic lambda$addExtraEmptyScreens$2$com-android-launcher3-Workspace(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "extraEmptyPageId"    # Ljava/lang/Integer;

    .line 704
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->containsKey(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->insertNewWorkspaceScreen(I)V

    .line 707
    :cond_0
    return-void
.end method

.method synthetic lambda$commitExtraEmptyScreens$5$com-android-launcher3-Workspace(Lcom/android/launcher3/util/IntSet;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "extraEmptyPageIds"    # Lcom/android/launcher3/util/IntSet;
    .param p2, "extraEmptyPageId"    # Ljava/lang/Integer;

    .line 853
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->commitExtraEmptyScreen(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntSet;->add(I)V

    return-void
.end method

.method synthetic lambda$onDrop$7$com-android-launcher3-Workspace(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 1
    .param p1, "hostView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 2111
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2112
    invoke-static {p1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    .line 2114
    :cond_0
    return-void
.end method

.method synthetic lambda$removeExtraEmptyScreenDelayed$3$com-android-launcher3-Workspace(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "stripEmptyScreens"    # Z
    .param p2, "onComplete"    # Ljava/lang/Runnable;

    .line 799
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    return-void
.end method

.method synthetic lambda$removeExtraEmptyScreenDelayed$4$com-android-launcher3-Workspace(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "extraEmptyPageId"    # Ljava/lang/Integer;

    .line 809
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    .line 810
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 811
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 812
    return-void
.end method

.method synthetic lambda$removeWidget$9$com-android-launcher3-Workspace(ILcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 4
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "view"    # Landroid/view/View;

    .line 3117
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 3118
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 3119
    .local v0, "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget v1, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    if-ne v1, p1, :cond_0

    .line 3120
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const-string v3, "widget is removed in response to widget remove broadcast"

    invoke-virtual {v1, p3, v0, v2, v3}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    .line 3122
    return v2

    .line 3125
    .end local v0    # "appWidgetInfo":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$updateNotificationDots$13$com-android-launcher3-Workspace(Ljava/util/function/Predicate;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 6
    .param p1, "matcher"    # Ljava/util/function/Predicate;
    .param p2, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "v"    # Landroid/view/View;

    .line 3377
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    instance-of v0, p2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_0

    instance-of v0, p3, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 3378
    invoke-interface {p1, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3379
    move-object v0, p3

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/BubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_1

    .line 3381
    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_2

    instance-of v0, p3, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_2

    .line 3382
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/model/data/FolderInfo;

    .line 3383
    .local v0, "fi":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v1, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3384
    new-instance v1, Lcom/android/launcher3/dot/FolderDotInfo;

    invoke-direct {v1}, Lcom/android/launcher3/dot/FolderDotInfo;-><init>()V

    .line 3385
    .local v1, "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    new-instance v2, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;

    invoke-direct {v2}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;-><init>()V

    .line 3386
    .local v2, "sonyFolderBadgeInfo":Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;
    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 3387
    .local v4, "si":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Launcher;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/dot/FolderDotInfo;->addDotInfo(Lcom/android/launcher3/dot/DotInfo;)V

    .line 3388
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/Launcher;->getSonyBadgeInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/sonymobile/launcher/badge/SonyBadgeInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;->addSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyBadgeInfo;)V

    .line 3389
    .end local v4    # "si":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_0

    .line 3390
    :cond_1
    move-object v3, p3

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/folder/FolderIcon;->setDotInfo(Lcom/android/launcher3/dot/FolderDotInfo;)V

    .line 3391
    move-object v3, p3

    check-cast v3, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/FolderIcon;->setSonyBadgeInfo(Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;)V

    .line 3396
    .end local v0    # "fi":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v1    # "folderDotInfo":Lcom/android/launcher3/dot/FolderDotInfo;
    .end local v2    # "sonyFolderBadgeInfo":Lcom/sonymobile/launcher/badge/SonyFolderBadgeInfo;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public lockWallpaperToDefaultPage()V
    .locals 2

    .line 1357
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    .line 1358
    return-void
.end method

.method public mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;
    .locals 6
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "operator"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 3356
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3357
    return-object v0

    .line 3359
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 3361
    .local v1, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    .line 3362
    .local v2, "itemCount":I
    const/4 v3, 0x0

    .local v3, "itemIdx":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3363
    invoke-virtual {v1, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3364
    .local v4, "item":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {p2, v5, v4}, Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;->evaluate(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3365
    return-object v4

    .line 3362
    .end local v4    # "item":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3368
    .end local v3    # "itemIdx":I
    :cond_2
    return-object v0
.end method

.method public mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 5
    .param p1, "op"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 3343
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 3344
    .local v3, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {p0, v3, p1}, Lcom/android/launcher3/Workspace;->mapOverCellLayout(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 3345
    return-void

    .line 3343
    .end local v3    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3348
    :cond_1
    return-void
.end method

.method public moveToDefaultScreen()V
    .locals 2

    .line 3459
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 3460
    .local v0, "page":I
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 3461
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 3463
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3464
    .local v1, "child":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 3465
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 3467
    :cond_1
    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 4
    .param p1, "prevPage"    # I

    .line 1328
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 1329
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq p1, v0, :cond_1

    .line 1330
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-ge p1, v0, :cond_0

    .line 1331
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1332
    .local v0, "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1333
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1334
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1335
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v2

    .line 1337
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v3

    .line 1338
    invoke-virtual {v3, p1}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v3

    .line 1336
    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v2

    .line 1338
    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1335
    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1339
    invoke-interface {v1, v0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1341
    .end local v0    # "event":Lcom/android/launcher3/logging/StatsLogManager$EventEnum;
    :cond_1
    return-void
.end method

.method public onAddDropTarget(Lcom/android/launcher3/DropTarget;)V
    .locals 1
    .param p1, "target"    # Lcom/android/launcher3/DropTarget;

    .line 885
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 886
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1416
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    .line 1417
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1418
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeScroll()V

    .line 1419
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1422
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onDetachedFromWindow()V

    .line 1423
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setWindowToken(Landroid/os/IBinder;)V

    .line 1424
    return-void
.end method

.method public onDragEnd()V
    .locals 2

    .line 497
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 498
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    .line 499
    .local v0, "stateManager":Lcom/android/launcher3/statemanager/StateManager;, "Lcom/android/launcher3/statemanager/StateManager<Lcom/android/launcher3/LauncherState;>;"
    new-instance v1, Lcom/android/launcher3/Workspace$1;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Workspace$1;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/statemanager/StateManager;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    .line 511
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 512
    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragSourceInternal:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 513
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2230
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    .line 2231
    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2233
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2234
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v1}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2235
    aget v0, v1, v0

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    .line 2236
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2246
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 2247
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2248
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    goto :goto_0

    .line 2249
    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 2250
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mAddToExistingFolderOnDrop:Z

    .line 2254
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2255
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V

    .line 2257
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    .line 2258
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 31
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 2389
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->transitionStateShouldAllowDrop()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2391
    :cond_0
    iget-object v11, v10, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2392
    .local v11, "item":Lcom/android/launcher3/model/data/ItemInfo;
    if-nez v11, :cond_1

    .line 2396
    return-void

    .line 2400
    :cond_1
    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ltz v0, :cond_10

    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ltz v0, :cond_10

    .line 2401
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v10, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 2403
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    :goto_0
    move-object/from16 v17, v0

    .line 2404
    .local v17, "child":Landroid/view/View;
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v1, v0, v7

    const/4 v8, 0x1

    aget v0, v0, v8

    invoke-direct {v9, v10, v1, v0}, Lcom/android/launcher3/Workspace;->setDropLayoutForDragObject(Lcom/android/launcher3/DropTarget$DragObject;FF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2405
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_4

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 2408
    :cond_3
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->setAlarm(Lcom/android/launcher3/CellLayout;)V

    goto :goto_2

    .line 2406
    :cond_4
    :goto_1
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;->cancel()V

    .line 2413
    :cond_5
    :goto_2
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_f

    .line 2415
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-direct {v9, v0, v1}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    .line 2417
    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2418
    .local v0, "minSpanX":I
    iget v1, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2419
    .local v1, "minSpanY":I
    iget v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_6

    iget v2, v11, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v2, :cond_6

    .line 2420
    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 2421
    iget v1, v11, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move/from16 v29, v0

    move/from16 v30, v1

    goto :goto_3

    .line 2424
    :cond_6
    move/from16 v29, v0

    move/from16 v30, v1

    .end local v0    # "minSpanX":I
    .end local v1    # "minSpanY":I
    .local v29, "minSpanX":I
    .local v30, "minSpanY":I
    :goto_3
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v7

    float-to-int v1, v1

    aget v0, v0, v8

    float-to-int v2, v0

    iget-object v5, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v6, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move-object/from16 v0, p0

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2427
    aget v6, v0, v7

    .line 2428
    .local v6, "reorderX":I
    aget v5, v0, v8

    .line 2430
    .local v5, "reorderY":I
    aget v1, v0, v7

    aget v0, v0, v8

    invoke-virtual {v9, v1, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2432
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v7

    aget v1, v1, v8

    iget-object v3, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v4

    .line 2435
    .local v4, "targetCellDistance":F
    invoke-direct {v9, v4, v10}, Lcom/android/launcher3/Workspace;->manageFolderFeedback(FLcom/android/launcher3/DropTarget$DragObject;)V

    .line 2437
    iget-object v12, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v1, v0, v7

    float-to-int v13, v1

    aget v0, v0, v8

    float-to-int v14, v0

    iget v15, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v0, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move/from16 v16, v0

    move-object/from16 v18, v1

    invoke-virtual/range {v12 .. v18}, Lcom/android/launcher3/CellLayout;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v12

    .line 2441
    .local v12, "nearestDropOccupied":Z
    const/4 v13, 0x2

    if-nez v12, :cond_7

    .line 2442
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v2, v1, v7

    aget v3, v1, v8

    iget v7, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v14, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move v1, v2

    move v2, v3

    move v3, v7

    move v15, v4

    .end local v4    # "targetCellDistance":F
    .local v15, "targetCellDistance":F
    move v4, v14

    move v14, v5

    .end local v5    # "reorderY":I
    .local v14, "reorderY":I
    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V

    move/from16 v20, v6

    move v13, v8

    goto/16 :goto_6

    .line 2444
    .end local v14    # "reorderY":I
    .end local v15    # "targetCellDistance":F
    .restart local v4    # "targetCellDistance":F
    .restart local v5    # "reorderY":I
    :cond_7
    move v15, v4

    move v14, v5

    .end local v4    # "targetCellDistance":F
    .end local v5    # "reorderY":I
    .restart local v14    # "reorderY":I
    .restart local v15    # "targetCellDistance":F
    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eqz v0, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v20, v6

    move v13, v8

    goto/16 :goto_6

    :cond_9
    :goto_4
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 2445
    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_d

    iget v0, v9, Lcom/android/launcher3/Workspace;->mLastReorderX:I

    if-ne v0, v6, :cond_b

    iget v0, v9, Lcom/android/launcher3/Workspace;->mLastReorderY:I

    if-eq v0, v14, :cond_a

    goto :goto_5

    :cond_a
    move/from16 v20, v6

    move v13, v8

    goto/16 :goto_6

    :cond_b
    :goto_5
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2447
    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->getReorderRadius([I)F

    move-result v0

    cmpg-float v0, v15, v0

    if-gez v0, :cond_c

    .line 2449
    new-array v5, v13, [I

    .line 2450
    .local v5, "resultSpan":[I
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v7

    float-to-int v2, v2

    aget v1, v1, v8

    float-to-int v1, v1

    iget v3, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v7, v9, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v28, 0x0

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v1

    move/from16 v21, v29

    move/from16 v22, v30

    move/from16 v23, v3

    move/from16 v24, v4

    move-object/from16 v25, v17

    move-object/from16 v26, v7

    move-object/from16 v27, v5

    invoke-virtual/range {v18 .. v28}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    .line 2456
    new-instance v16, Lcom/android/launcher3/Workspace$ReorderAlarmListener;

    iget-object v2, v9, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    iget v7, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v4, v11, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move/from16 v3, v29

    move/from16 v18, v4

    move/from16 v4, v30

    move-object/from16 v19, v5

    .end local v5    # "resultSpan":[I
    .local v19, "resultSpan":[I
    move v5, v7

    move/from16 v20, v6

    .end local v6    # "reorderX":I
    .local v20, "reorderX":I
    move/from16 v6, v18

    move-object/from16 v7, p1

    move v13, v8

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/Workspace$ReorderAlarmListener;-><init>(Lcom/android/launcher3/Workspace;[FIIIILcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V

    .line 2458
    .local v0, "listener":Lcom/android/launcher3/Workspace$ReorderAlarmListener;, "Lcom/android/launcher3/Workspace<TT;>.ReorderAlarmListener;"
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 2459
    iget-object v1, v9, Lcom/android/launcher3/Workspace;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v2, 0x28a

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    goto :goto_6

    .line 2447
    .end local v0    # "listener":Lcom/android/launcher3/Workspace$ReorderAlarmListener;, "Lcom/android/launcher3/Workspace<TT;>.ReorderAlarmListener;"
    .end local v19    # "resultSpan":[I
    .end local v20    # "reorderX":I
    .restart local v6    # "reorderX":I
    :cond_c
    move/from16 v20, v6

    move v13, v8

    .end local v6    # "reorderX":I
    .restart local v20    # "reorderX":I
    goto :goto_6

    .line 2445
    .end local v20    # "reorderX":I
    .restart local v6    # "reorderX":I
    :cond_d
    move/from16 v20, v6

    move v13, v8

    .line 2462
    .end local v6    # "reorderX":I
    .restart local v20    # "reorderX":I
    :goto_6
    iget v0, v9, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq v0, v13, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    if-nez v12, :cond_f

    .line 2464
    :cond_e
    iget-object v0, v9, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_f

    .line 2465
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2469
    .end local v12    # "nearestDropOccupied":Z
    .end local v14    # "reorderY":I
    .end local v15    # "targetCellDistance":F
    .end local v20    # "reorderX":I
    .end local v29    # "minSpanX":I
    .end local v30    # "minSpanY":I
    :cond_f
    return-void

    .line 2400
    .end local v17    # "child":Landroid/view/View;
    :cond_10
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 7
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 423
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 424
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 425
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentViewParent()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 427
    .local v0, "layout":Lcom/android/launcher3/CellLayout;
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 430
    .end local v0    # "layout":Lcom/android/launcher3/CellLayout;
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 437
    iget-boolean v0, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-ne v0, p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v0, v2

    .line 438
    .local v0, "addNewPage":Z
    :goto_2
    if-eqz v0, :cond_5

    .line 439
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mDeferRemoveExtraEmptyScreen:Z

    .line 440
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->addExtraEmptyScreenOnDrag(Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 442
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v3, p0, :cond_5

    .line 449
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getDestinationPage()I

    move-result v3

    .line 450
    .local v3, "currentPage":I
    move v4, v3

    .local v4, "pageIndex":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 451
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/CellLayout;

    .line 452
    .local v5, "page":Lcom/android/launcher3/CellLayout;
    iget-object v6, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/CellLayout;->hasReorderSolution(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 453
    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 454
    goto :goto_4

    .line 450
    .end local v5    # "page":Lcom/android/launcher3/CellLayout;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 460
    .end local v3    # "currentPage":I
    .end local v4    # "pageIndex":I
    :cond_5
    :goto_4
    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-lez v3, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    .line 461
    invoke-virtual {v3}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getAdapter()Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    int-to-long v4, v4

    .line 462
    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->hasFolderWithId(J)Z

    move-result v3

    if-eqz v3, :cond_6

    move v1, v2

    goto :goto_5

    :cond_6
    nop

    .line 464
    .local v1, "isFromAppsFolder":Z
    :goto_5
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    if-eq v2, v3, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->isInOwnOrderEditMode()Z

    move-result v2

    if-nez v2, :cond_a

    .line 467
    :cond_8
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    .line 468
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v2

    .line 469
    .local v2, "openFolder":Lcom/android/launcher3/folder/Folder;
    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    .line 470
    invoke-virtual {v2}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 472
    :cond_9
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v3}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    iget-object v4, p1, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 473
    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DRAG_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 474
    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 476
    .end local v2    # "openFolder":Lcom/android/launcher3/folder/Folder;
    :cond_a
    return-void
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 49
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1977
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    invoke-virtual {v9, v0}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    .line 1978
    iget-object v15, v8, Lcom/android/launcher3/Workspace;->mDropToLayout:Lcom/android/launcher3/CellLayout;

    .line 1981
    .local v15, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    if-eqz v15, :cond_0

    .line 1982
    invoke-direct {v8, v15, v0}, Lcom/android/launcher3/Workspace;->mapPointFromDropLayout(Lcom/android/launcher3/CellLayout;[F)V

    .line 1985
    :cond_0
    const/4 v10, 0x0

    .line 1987
    .local v10, "droppedOnOriginalCell":Z
    const/16 v21, 0x0

    .line 1988
    .local v21, "snappedToNewPage":Z
    const/16 v22, 0x0

    .line 1989
    .local v22, "resizeOnDrop":Z
    const/16 v23, 0x0

    .line 1990
    .local v23, "onCompleteRunnable":Ljava/lang/Runnable;
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    const/4 v13, 0x0

    const/4 v12, 0x1

    if-ne v0, v8, :cond_29

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-nez v0, :cond_1

    move v0, v10

    move v2, v12

    move v10, v13

    move-object v12, v15

    move-object/from16 v15, p2

    goto/16 :goto_19

    .line 1995
    :cond_1
    iget-object v11, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1996
    .local v11, "cell":Landroid/view/View;
    const/16 v16, 0x0

    .line 1998
    .local v16, "droppedOnOriginalCellDuringTransition":Z
    const/16 v24, -0x1

    if-eqz v15, :cond_1e

    iget-boolean v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_1e

    .line 2000
    invoke-virtual {v8, v11}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eq v0, v15, :cond_2

    move v0, v12

    goto :goto_0

    :cond_2
    move v0, v13

    :goto_0
    move/from16 v25, v0

    .line 2001
    .local v25, "hasMovedLayouts":Z
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v15}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v26

    .line 2002
    .local v26, "hasMovedIntoHotseat":Z
    if-eqz v26, :cond_3

    .line 2003
    const/16 v0, -0x65

    goto :goto_1

    .line 2004
    :cond_3
    const/16 v0, -0x64

    :goto_1
    move v4, v0

    .line 2005
    .local v4, "container":I
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v0, v0, v13

    if-gez v0, :cond_4

    .line 2006
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    goto :goto_2

    :cond_4
    invoke-virtual {v8, v15}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v0

    :goto_2
    move v3, v0

    .line 2007
    .local v3, "screenId":I
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanX:I

    goto :goto_3

    :cond_5
    move v0, v12

    :goto_3
    move v2, v0

    .line 2008
    .local v2, "spanX":I
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_6

    iget v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->spanY:I

    goto :goto_4

    :cond_6
    move v0, v12

    :goto_4
    move v1, v0

    .line 2012
    .local v1, "spanY":I
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v5, v0, v13

    float-to-int v5, v5

    aget v0, v0, v12

    float-to-int v0, v0

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    move v7, v0

    move-object/from16 v0, p0

    move/from16 v35, v1

    .end local v1    # "spanY":I
    .local v35, "spanY":I
    move v1, v5

    move v5, v2

    .end local v2    # "spanX":I
    .local v5, "spanX":I
    move v2, v7

    move v7, v3

    .end local v3    # "screenId":I
    .local v7, "screenId":I
    move v3, v5

    move/from16 v36, v4

    .end local v4    # "container":I
    .local v36, "container":I
    move/from16 v4, v35

    move v14, v5

    .end local v5    # "spanX":I
    .local v14, "spanX":I
    move-object v5, v15

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->findNearestArea(IIIILcom/android/launcher3/CellLayout;[I)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2014
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v2, v1, v13

    aget v1, v1, v12

    invoke-virtual {v15, v2, v1, v0}, Lcom/android/launcher3/CellLayout;->getDistanceFromWorkspaceCellVisualCenter(FF[I)F

    move-result v37

    .line 2019
    .local v37, "distance":F
    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v36

    move-object v3, v15

    move/from16 v5, v37

    move v12, v7

    .end local v7    # "screenId":I
    .local v12, "screenId":I
    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->createUserFolderIfNecessary(Landroid/view/View;ILcom/android/launcher3/CellLayout;[IFZLcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v6, 0x0

    .line 2021
    move-object/from16 v0, p0

    move-object v1, v11

    move-object v2, v15

    move/from16 v4, v37

    move-object/from16 v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/Workspace;->addToExistingFolderIfNecessary(Landroid/view/View;Lcom/android/launcher3/CellLayout;[IFLcom/android/launcher3/DropTarget$DragObject;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v10

    move/from16 v44, v12

    move/from16 v42, v14

    move-object v12, v15

    move/from16 v46, v35

    move/from16 v3, v36

    move-object/from16 v15, p2

    goto/16 :goto_11

    .line 2029
    :cond_7
    iget-object v7, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 2030
    .local v7, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2031
    .local v0, "minSpanX":I
    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2032
    .local v1, "minSpanY":I
    iget v2, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    if-lez v2, :cond_8

    iget v2, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    if-lez v2, :cond_8

    .line 2033
    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    .line 2034
    iget v1, v7, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    move/from16 v38, v0

    move/from16 v39, v1

    goto :goto_5

    .line 2037
    :cond_8
    move/from16 v38, v0

    move/from16 v39, v1

    .end local v0    # "minSpanX":I
    .end local v1    # "minSpanY":I
    .local v38, "minSpanX":I
    .local v39, "minSpanY":I
    :goto_5
    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    if-ne v0, v12, :cond_9

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    move/from16 v6, v36

    .end local v36    # "container":I
    .local v6, "container":I
    if-ne v0, v6, :cond_a

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v13

    if-ne v0, v1, :cond_a

    iget v0, v7, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_6

    .end local v6    # "container":I
    .restart local v36    # "container":I
    :cond_9
    move/from16 v6, v36

    .end local v36    # "container":I
    .restart local v6    # "container":I
    :cond_a
    move v0, v13

    :goto_6
    move/from16 v36, v0

    .line 2039
    .end local v10    # "droppedOnOriginalCell":Z
    .local v36, "droppedOnOriginalCell":Z
    if-eqz v36, :cond_b

    iget-boolean v0, v8, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_7

    :cond_b
    move v0, v13

    :goto_7
    move/from16 v40, v0

    .line 2043
    .end local v16    # "droppedOnOriginalCellDuringTransition":Z
    .local v40, "droppedOnOriginalCellDuringTransition":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/Workspace;->isFinishedSwitchingState()Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v40, :cond_c

    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v0, v13

    const/4 v2, 0x1

    aget v0, v0, v2

    .line 2045
    move/from16 v5, v35

    .end local v35    # "spanY":I
    .local v5, "spanY":I
    invoke-virtual {v15, v1, v0, v14, v5}, Lcom/android/launcher3/CellLayout;->isRegionVacant(IIII)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v2, 0x1

    goto :goto_8

    .line 2043
    .end local v5    # "spanY":I
    .restart local v35    # "spanY":I
    :cond_c
    move/from16 v5, v35

    .line 2045
    .end local v35    # "spanY":I
    .restart local v5    # "spanY":I
    :cond_d
    move v2, v13

    :goto_8
    move/from16 v35, v2

    .line 2046
    .local v35, "returnToOriginalCellToPreventShuffling":Z
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 2047
    .local v4, "resultSpan":[I
    if-eqz v35, :cond_e

    .line 2048
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aput v24, v1, v2

    aput v24, v1, v13

    move-object/from16 v41, v11

    move v3, v12

    move v1, v13

    move/from16 v42, v14

    move-object/from16 v43, v15

    goto :goto_9

    .line 2050
    :cond_e
    const/4 v2, 0x1

    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v3, v1, v13

    float-to-int v3, v3

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v10, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/16 v20, 0x2

    move-object/from16 v18, v10

    move-object v10, v15

    move-object/from16 v41, v11

    .end local v11    # "cell":Landroid/view/View;
    .local v41, "cell":Landroid/view/View;
    move v11, v3

    move v3, v12

    .end local v12    # "screenId":I
    .restart local v3    # "screenId":I
    move v12, v1

    move v1, v13

    move/from16 v13, v38

    move/from16 v42, v14

    .end local v14    # "spanX":I
    .local v42, "spanX":I
    move/from16 v14, v39

    move-object/from16 v43, v15

    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v43, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    move/from16 v15, v42

    move/from16 v16, v5

    move-object/from16 v17, v41

    move-object/from16 v19, v4

    invoke-virtual/range {v10 .. v20}, Lcom/android/launcher3/CellLayout;->performReorder(IIIIIILandroid/view/View;[I[II)[I

    move-result-object v10

    iput-object v10, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    .line 2055
    :goto_9
    iget-object v10, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v11, v10, v1

    if-ltz v11, :cond_f

    aget v10, v10, v2

    if-ltz v10, :cond_f

    move v13, v2

    goto :goto_a

    :cond_f
    move v13, v1

    :goto_a
    move v10, v13

    .line 2058
    .local v10, "foundCell":Z
    if-eqz v10, :cond_11

    move-object/from16 v11, v41

    .end local v41    # "cell":Landroid/view/View;
    .restart local v11    # "cell":Landroid/view/View;
    instance-of v12, v11, Landroid/appwidget/AppWidgetHostView;

    if-eqz v12, :cond_12

    aget v12, v4, v1

    iget v13, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ne v12, v13, :cond_10

    aget v12, v4, v2

    iget v13, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-eq v12, v13, :cond_12

    .line 2060
    :cond_10
    const/16 v22, 0x1

    .line 2061
    aget v12, v4, v1

    iput v12, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2062
    aget v12, v4, v2

    iput v12, v7, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2063
    move-object v12, v11

    check-cast v12, Landroid/appwidget/AppWidgetHostView;

    .line 2064
    .local v12, "awhv":Landroid/appwidget/AppWidgetHostView;
    iget-object v13, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    aget v14, v4, v1

    aget v15, v4, v2

    invoke-static {v12, v13, v14, v15}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    goto :goto_b

    .line 2058
    .end local v11    # "cell":Landroid/view/View;
    .end local v12    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .restart local v41    # "cell":Landroid/view/View;
    :cond_11
    move-object/from16 v11, v41

    .line 2068
    .end local v41    # "cell":Landroid/view/View;
    .restart local v11    # "cell":Landroid/view/View;
    :cond_12
    :goto_b
    if-eqz v10, :cond_1a

    .line 2069
    invoke-virtual {v8, v3}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v12

    .line 2070
    .local v12, "targetScreenIndex":I
    invoke-virtual {v8, v12}, Lcom/android/launcher3/Workspace;->getLeftmostVisiblePageForIndex(I)I

    move-result v13

    .line 2073
    .local v13, "snapScreen":I
    iget v14, v8, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-eq v13, v14, :cond_13

    if-nez v26, :cond_13

    .line 2074
    invoke-virtual {v8, v13}, Lcom/android/launcher3/Workspace;->snapToPage(I)Z

    .line 2075
    const/4 v14, 0x1

    move/from16 v21, v14

    .line 2077
    :cond_13
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/model/data/ItemInfo;

    .line 2078
    .local v14, "info":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v25, :cond_16

    .line 2080
    invoke-virtual {v8, v11}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v15

    .line 2081
    .local v15, "parentCell":Lcom/android/launcher3/CellLayout;
    if-eqz v15, :cond_14

    .line 2082
    invoke-virtual {v15, v11}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_c

    .line 2083
    :cond_14
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_15

    .line 2084
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 2088
    :cond_15
    :goto_c
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v16, v0, v1

    aget v17, v0, v2

    iget v0, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    move-object/from16 v18, v7

    .end local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v18, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v7, v14, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move/from16 v19, v0

    move/from16 v20, v10

    const/4 v10, 0x2

    .end local v10    # "foundCell":Z
    .local v20, "foundCell":Z
    move-object/from16 v0, p0

    move v10, v1

    move-object v1, v11

    move v2, v6

    move/from16 v44, v3

    .end local v3    # "screenId":I
    .local v44, "screenId":I
    move-object/from16 v45, v4

    .end local v4    # "resultSpan":[I
    .local v45, "resultSpan":[I
    move/from16 v4, v16

    move/from16 v46, v5

    .end local v5    # "spanY":I
    .local v46, "spanY":I
    move/from16 v5, v17

    move/from16 v47, v6

    .end local v6    # "container":I
    .local v47, "container":I
    move/from16 v6, v19

    move-object/from16 v48, v18

    .end local v18    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v48, "item":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->addInScreen(Landroid/view/View;IIIIII)V

    goto :goto_d

    .line 2078
    .end local v15    # "parentCell":Lcom/android/launcher3/CellLayout;
    .end local v20    # "foundCell":Z
    .end local v44    # "screenId":I
    .end local v45    # "resultSpan":[I
    .end local v46    # "spanY":I
    .end local v47    # "container":I
    .end local v48    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v3    # "screenId":I
    .restart local v4    # "resultSpan":[I
    .restart local v5    # "spanY":I
    .restart local v6    # "container":I
    .restart local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v10    # "foundCell":Z
    :cond_16
    move/from16 v44, v3

    move-object/from16 v45, v4

    move/from16 v46, v5

    move/from16 v47, v6

    move-object/from16 v48, v7

    move/from16 v20, v10

    move v10, v1

    .line 2093
    .end local v3    # "screenId":I
    .end local v4    # "resultSpan":[I
    .end local v5    # "spanY":I
    .end local v6    # "container":I
    .end local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v10    # "foundCell":Z
    .restart local v20    # "foundCell":Z
    .restart local v44    # "screenId":I
    .restart local v45    # "resultSpan":[I
    .restart local v46    # "spanY":I
    .restart local v47    # "container":I
    .restart local v48    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_d
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2094
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    aget v1, v1, v10

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 2095
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 2096
    move-object/from16 v1, v48

    .end local v48    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2097
    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2098
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 2100
    move/from16 v3, v47

    const/16 v4, -0x65

    .end local v47    # "container":I
    .local v3, "container":I
    if-eq v3, v4, :cond_18

    instance-of v4, v11, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v4, :cond_18

    .line 2102
    move-object/from16 v4, v43

    .line 2106
    .local v4, "cellLayout":Lcom/android/launcher3/CellLayout;
    move-object v5, v11

    check-cast v5, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 2107
    .local v5, "hostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    invoke-virtual {v5}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v6

    .line 2108
    .local v6, "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v6, :cond_17

    iget v7, v6, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    if-eqz v7, :cond_17

    move-object/from16 v15, p2

    iget-boolean v7, v15, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-nez v7, :cond_19

    .line 2110
    new-instance v7, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;

    invoke-direct {v7, v8, v5, v4}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V

    move-object/from16 v23, v7

    .end local v23    # "onCompleteRunnable":Ljava/lang/Runnable;
    .local v7, "onCompleteRunnable":Ljava/lang/Runnable;
    goto :goto_e

    .line 2108
    .end local v7    # "onCompleteRunnable":Ljava/lang/Runnable;
    .restart local v23    # "onCompleteRunnable":Ljava/lang/Runnable;
    :cond_17
    move-object/from16 v15, p2

    goto :goto_e

    .line 2100
    .end local v4    # "cellLayout":Lcom/android/launcher3/CellLayout;
    .end local v5    # "hostView":Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .end local v6    # "pInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_18
    move-object/from16 v15, p2

    .line 2117
    :cond_19
    :goto_e
    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v27

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object/from16 v28, v14

    move/from16 v29, v3

    move/from16 v30, v44

    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v33, v6

    move/from16 v34, v7

    invoke-virtual/range {v27 .. v34}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    .line 2119
    .end local v0    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v12    # "targetScreenIndex":I
    .end local v13    # "snapScreen":I
    .end local v14    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    move-object/from16 v12, v43

    goto :goto_10

    .line 2120
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v20    # "foundCell":Z
    .end local v44    # "screenId":I
    .end local v45    # "resultSpan":[I
    .end local v46    # "spanY":I
    .local v3, "screenId":I
    .local v4, "resultSpan":[I
    .local v5, "spanY":I
    .local v6, "container":I
    .local v7, "item":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v10    # "foundCell":Z
    :cond_1a
    move-object/from16 v15, p2

    move/from16 v44, v3

    move-object/from16 v45, v4

    move/from16 v46, v5

    move v3, v6

    move/from16 v20, v10

    move v10, v1

    move-object v1, v7

    .end local v4    # "resultSpan":[I
    .end local v5    # "spanY":I
    .end local v6    # "container":I
    .end local v7    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v10    # "foundCell":Z
    .restart local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .local v3, "container":I
    .restart local v20    # "foundCell":Z
    .restart local v44    # "screenId":I
    .restart local v45    # "resultSpan":[I
    .restart local v46    # "spanY":I
    if-nez v35, :cond_1b

    .line 2121
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v9, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    move-object/from16 v12, v43

    .end local v43    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v12, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v8, v12, v0, v4}, Lcom/android/launcher3/Workspace;->onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V

    goto :goto_f

    .line 2120
    .end local v12    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v43    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_1b
    move-object/from16 v12, v43

    .line 2123
    .end local v43    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v12    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :goto_f
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1c

    .line 2124
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 2128
    :cond_1c
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2129
    .restart local v0    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    aput v5, v4, v10

    .line 2130
    iget-object v4, v8, Lcom/android/launcher3/Workspace;->mTargetCell:[I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    aput v5, v4, v2

    .line 2131
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout;

    .line 2132
    .local v4, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4, v11}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2134
    .end local v0    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "container":I
    .end local v4    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v20    # "foundCell":Z
    .end local v25    # "hasMovedLayouts":Z
    .end local v26    # "hasMovedIntoHotseat":Z
    .end local v35    # "returnToOriginalCellToPreventShuffling":Z
    .end local v37    # "distance":F
    .end local v38    # "minSpanX":I
    .end local v39    # "minSpanY":I
    .end local v42    # "spanX":I
    .end local v44    # "screenId":I
    .end local v45    # "resultSpan":[I
    .end local v46    # "spanY":I
    :goto_10
    move/from16 v16, v40

    const-wide/16 v13, 0x1f4

    goto :goto_12

    .line 2019
    .end local v40    # "droppedOnOriginalCellDuringTransition":Z
    .local v10, "droppedOnOriginalCell":Z
    .local v12, "screenId":I
    .local v14, "spanX":I
    .local v15, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v16    # "droppedOnOriginalCellDuringTransition":Z
    .restart local v25    # "hasMovedLayouts":Z
    .restart local v26    # "hasMovedIntoHotseat":Z
    .local v35, "spanY":I
    .local v36, "container":I
    .restart local v37    # "distance":F
    :cond_1d
    move v0, v10

    move/from16 v44, v12

    move/from16 v42, v14

    move-object v12, v15

    move/from16 v46, v35

    move/from16 v3, v36

    move-object/from16 v15, p2

    .line 2023
    .end local v10    # "droppedOnOriginalCell":Z
    .end local v14    # "spanX":I
    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .end local v35    # "spanY":I
    .end local v36    # "container":I
    .local v0, "droppedOnOriginalCell":Z
    .restart local v3    # "container":I
    .local v12, "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v42    # "spanX":I
    .restart local v44    # "screenId":I
    .restart local v46    # "spanY":I
    :goto_11
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v13, 0x1f4

    invoke-virtual {v1, v2, v13, v14}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 2024
    return-void

    .line 1998
    .end local v0    # "droppedOnOriginalCell":Z
    .end local v3    # "container":I
    .end local v12    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .end local v25    # "hasMovedLayouts":Z
    .end local v26    # "hasMovedIntoHotseat":Z
    .end local v37    # "distance":F
    .end local v42    # "spanX":I
    .end local v44    # "screenId":I
    .end local v46    # "spanY":I
    .restart local v10    # "droppedOnOriginalCell":Z
    .restart local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_1e
    move v0, v10

    move v2, v12

    move v10, v13

    move-object v12, v15

    const-wide/16 v13, 0x1f4

    move-object/from16 v15, p2

    .line 2136
    .end local v10    # "droppedOnOriginalCell":Z
    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .restart local v0    # "droppedOnOriginalCell":Z
    .restart local v12    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_1f

    .line 2137
    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 2141
    :cond_1f
    move/from16 v36, v0

    .end local v0    # "droppedOnOriginalCell":Z
    .local v36, "droppedOnOriginalCell":Z
    :goto_12
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/CellLayout;

    .line 2142
    .local v7, "parent":Lcom/android/launcher3/CellLayout;
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v0

    const/16 v17, 0x0

    if-eqz v0, :cond_27

    .line 2143
    if-eqz v16, :cond_21

    .line 2146
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 2147
    .local v0, "callbackList":Lcom/android/launcher3/util/RunnableList;
    move-object/from16 v1, v23

    .line 2148
    .local v1, "onCompleteCallback":Ljava/lang/Runnable;
    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v3

    .line 2149
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    sget-object v5, Lcom/android/launcher3/LauncherState;->SPRING_LOADED:Lcom/android/launcher3/LauncherState;

    iget-object v6, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 2150
    invoke-virtual {v5, v6, v2}, Lcom/android/launcher3/LauncherState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v2

    .line 2148
    invoke-virtual {v3, v4, v11, v2}, Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V

    .line 2151
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v4, 0x0

    .line 2152
    if-nez v1, :cond_20

    .line 2153
    move-object/from16 v6, v17

    goto :goto_13

    .line 2154
    :cond_20
    new-instance v6, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda4;

    invoke-direct {v6, v0, v1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/util/RunnableList;Ljava/lang/Runnable;)V

    invoke-static {v6}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v17

    move-object/from16 v6, v17

    .line 2151
    :goto_13
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V

    .line 2156
    iget-object v2, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDropTargetBar()Lcom/android/launcher3/DropTargetBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/DropTargetBar;->onDragEnd()V

    .line 2157
    invoke-virtual {v7, v11}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2158
    return-void

    .line 2160
    .end local v0    # "callbackList":Lcom/android/launcher3/util/RunnableList;
    .end local v1    # "onCompleteCallback":Ljava/lang/Runnable;
    :cond_21
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/model/data/ItemInfo;

    .line 2161
    .local v6, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_23

    iget v0, v6, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_22

    goto :goto_14

    :cond_22
    move v2, v10

    :cond_23
    :goto_14
    move/from16 v18, v2

    .line 2163
    .local v18, "isWidget":Z
    if-eqz v18, :cond_25

    .line 2164
    if-eqz v22, :cond_24

    const/4 v5, 0x2

    goto :goto_15

    .line 2165
    :cond_24
    move v5, v10

    :goto_15
    nop

    .line 2166
    .local v5, "animationType":I
    iget-object v3, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v4, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v19, v6

    .end local v6    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v19, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v6, v11

    move-object v13, v7

    .end local v7    # "parent":Lcom/android/launcher3/CellLayout;
    .local v13, "parent":Lcom/android/launcher3/CellLayout;
    move v7, v10

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/Workspace;->animateWidgetDrop(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    .line 2167
    .end local v5    # "animationType":I
    goto :goto_16

    .line 2168
    .end local v13    # "parent":Lcom/android/launcher3/CellLayout;
    .end local v19    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v6    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v7    # "parent":Lcom/android/launcher3/CellLayout;
    :cond_25
    move-object/from16 v19, v6

    move-object v13, v7

    .end local v6    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v7    # "parent":Lcom/android/launcher3/CellLayout;
    .restart local v13    # "parent":Lcom/android/launcher3/CellLayout;
    .restart local v19    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v21, :cond_26

    const/16 v24, 0x12c

    :cond_26
    move/from16 v0, v24

    .line 2169
    .local v0, "duration":I
    iget-object v1, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    iget-object v2, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v1, v2, v11, v0, v8}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;ILandroid/view/View;)V

    .line 2172
    .end local v0    # "duration":I
    .end local v18    # "isWidget":Z
    .end local v19    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_16
    goto :goto_17

    .line 2173
    .end local v13    # "parent":Lcom/android/launcher3/CellLayout;
    .restart local v7    # "parent":Lcom/android/launcher3/CellLayout;
    :cond_27
    move-object v13, v7

    .end local v7    # "parent":Lcom/android/launcher3/CellLayout;
    .restart local v13    # "parent":Lcom/android/launcher3/CellLayout;
    iput-boolean v10, v9, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 2174
    invoke-virtual {v11, v10}, Landroid/view/View;->setVisibility(I)V

    .line 2176
    :goto_17
    invoke-virtual {v13, v11}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 2178
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    .line 2179
    if-nez v23, :cond_28

    goto :goto_18

    :cond_28
    invoke-static/range {v23 .. v23}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v17

    :goto_18
    move-object/from16 v2, v17

    .line 2178
    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;JLandroid/animation/Animator$AnimatorListener;)V

    .line 2180
    iget-object v0, v8, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, v9, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 2181
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    move/from16 v10, v36

    goto :goto_1a

    .line 1990
    .end local v11    # "cell":Landroid/view/View;
    .end local v12    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .end local v13    # "parent":Lcom/android/launcher3/CellLayout;
    .end local v16    # "droppedOnOriginalCellDuringTransition":Z
    .end local v36    # "droppedOnOriginalCell":Z
    .restart local v10    # "droppedOnOriginalCell":Z
    .restart local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :cond_29
    move v0, v10

    move v2, v12

    move v10, v13

    move-object v12, v15

    move-object/from16 v15, p2

    .line 1991
    .end local v10    # "droppedOnOriginalCell":Z
    .end local v15    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    .local v0, "droppedOnOriginalCell":Z
    .restart local v12    # "dropTargetLayout":Lcom/android/launcher3/CellLayout;
    :goto_19
    const/4 v1, 0x2

    new-array v1, v1, [I

    iget-object v3, v8, Lcom/android/launcher3/Workspace;->mDragViewVisualCenter:[F

    aget v4, v3, v10

    float-to-int v4, v4

    aput v4, v1, v10

    aget v3, v3, v2

    float-to-int v3, v3

    aput v3, v1, v2

    .line 1993
    .local v1, "touchXY":[I
    invoke-direct {v8, v1, v12, v9}, Lcom/android/launcher3/Workspace;->onDropExternal([ILcom/android/launcher3/CellLayout;Lcom/android/launcher3/DropTarget$DragObject;)V

    .line 1994
    .end local v1    # "touchXY":[I
    move v10, v0

    .line 2184
    .end local v0    # "droppedOnOriginalCell":Z
    .restart local v10    # "droppedOnOriginalCell":Z
    :goto_1a
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v0, :cond_2a

    if-nez v10, :cond_2a

    .line 2185
    iget-object v0, v9, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    sget v1, Lcom/android/launcher3/R$string;->item_moved:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    .line 2187
    :cond_2a
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 3067
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-eqz p3, :cond_0

    .line 3068
    if-eq p1, p0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    .line 3069
    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->removeWorkspaceItem(Landroid/view/View;)V

    goto :goto_0

    .line 3071
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    if-eqz v0, :cond_2

    .line 3073
    iget-object v0, v0, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    if-eqz v0, :cond_1

    .line 3074
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->detachContentView(Z)V

    .line 3076
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->container:I

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->screenId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3078
    .local v0, "cellLayout":Lcom/android/launcher3/CellLayout;
    if-eqz v0, :cond_2

    .line 3079
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->onDropChild(Landroid/view/View;)V

    .line 3085
    .end local v0    # "cellLayout":Lcom/android/launcher3/CellLayout;
    :cond_2
    :goto_0
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object v0

    .line 3086
    .local v0, "cell":Landroid/view/View;
    iget-boolean v1, p2, Lcom/android/launcher3/DropTarget$DragObject;->cancelled:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 3087
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3089
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 3090
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1428
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    if-eqz v0, :cond_0

    .line 1429
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->setLockToDefaultPage(Z)V

    .line 1430
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    .line 1432
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1433
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->syncWithScroll()V

    .line 1434
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 1436
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    .line 1437
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1438
    return-void
.end method

.method public onNoCellFound(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/logging/InstanceId;)V
    .locals 4
    .param p1, "dropTargetLayout"    # Landroid/view/View;
    .param p2, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p3, "logInstanceId"    # Lcom/android/launcher3/logging/InstanceId;

    .line 2191
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2192
    sget v0, Lcom/android/launcher3/R$string;->hotseat_out_of_space:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->out_of_space:I

    .line 2193
    .local v0, "strId":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2194
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 2195
    .local v1, "logger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    if-eqz p3, :cond_1

    .line 2196
    invoke-interface {v1, p3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 2198
    :cond_1
    sget-object v2, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_FAILED_INSUFFICIENT_SPACE:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 2199
    return-void
.end method

.method public onOverlayScrollChanged(F)V
    .locals 7
    .param p1, "scroll"    # F

    .line 1205
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-nez v1, :cond_1

    .line 1206
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-nez v1, :cond_0

    .line 1207
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1208
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1209
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1210
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 1212
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    .line 1213
    invoke-virtual {v5, v2}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    .line 1211
    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 1214
    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1210
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPELEFT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1215
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1217
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 1220
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    goto :goto_1

    .line 1223
    :cond_1
    invoke-static {p1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-nez v1, :cond_4

    .line 1224
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    if-eqz v1, :cond_2

    .line 1226
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1227
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withSrcState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1228
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withDstState(I)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    .line 1229
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 1231
    invoke-static {}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer;->newBuilder()Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    const/4 v6, -0x1

    .line 1232
    invoke-virtual {v5, v6}, Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;->setPageIndex(I)Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;

    move-result-object v5

    .line 1230
    invoke-virtual {v4, v5}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->setWorkspace(Lcom/android/launcher3/logger/LauncherAtom$WorkspaceContainer$Builder;)Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;

    move-result-object v4

    .line 1233
    invoke-virtual {v4}, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;

    .line 1229
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withContainerInfo(Lcom/android/launcher3/logger/LauncherAtom$ContainerInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_SWIPERIGHT:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1234
    invoke-interface {v1, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    goto :goto_0

    .line 1235
    :cond_2
    iget v1, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_3

    .line 1242
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->announcePageForAccessibility()V

    .line 1244
    :cond_3
    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/Workspace;->mOverlayShown:Z

    .line 1247
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->onOverlayVisibilityChanged(Z)V

    .line 1249
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    .line 1252
    :cond_4
    :goto_1
    const/4 v1, 0x0

    .line 1254
    .local v1, "offset":F
    sub-float v4, p1, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 1255
    sub-float v3, v0, v1

    div-float v3, p1, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 1257
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_3:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    sub-float/2addr v0, v3

    .line 1258
    .local v0, "alpha":F
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    .line 1260
    .local v3, "transX":F
    iget-boolean v4, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v4, :cond_5

    .line 1261
    neg-float v3, v3

    .line 1263
    :cond_5
    iput v3, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    .line 1268
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->setTranslationX(F)V

    .line 1269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Workspace onOverlayScrollChanged DragLayer ALPHA_INDEX_OVERLAY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "b/223498680"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    iget-object v4, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getAlphaProperty(I)Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 1271
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 0

    .line 1118
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 1119
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1120
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 1

    .line 1123
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 1124
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 1126
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1127
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInModalState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 1134
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    if-eqz v0, :cond_1

    .line 1135
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 1136
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 1141
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->onPageEndTransition()V

    .line 1142
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 4
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 1171
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 1175
    iget-boolean v0, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 1176
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getCurrentStableState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v3, Lcom/android/launcher3/LauncherState;->HINT_STATE:Lcom/android/launcher3/LauncherState;

    if-eq v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1177
    .local v0, "isSwitchingState":Z
    :goto_0
    if-nez v0, :cond_2

    .line 1178
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 1179
    .local v1, "isTransitioning":Z
    :goto_2
    if-nez v1, :cond_3

    .line 1180
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 1183
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageAlphaValues()V

    .line 1184
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updatePageScrollValues()V

    .line 1185
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->enableHwLayersOnVisiblePages()V

    .line 1186
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1037
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/Workspace;->shouldConsumeTouch(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 555
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    instance-of v0, p1, Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 558
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 559
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 560
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 561
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    .line 562
    return-void

    .line 556
    .end local v0    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A Workspace can only have CellLayout children."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1510
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempXY:[I

    .line 1511
    .local v0, "position":[I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getLocationOnScreen([I)V

    .line 1513
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    .line 1514
    .local v1, "pointerIndex":I
    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 1515
    const/4 v3, 0x1

    aget v4, v0, v3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    float-to-int v5, v5

    add-int/2addr v4, v5

    aput v4, v0, v3

    .line 1517
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    .line 1518
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1519
    const-string v4, "android.wallpaper.tap"

    goto :goto_0

    :cond_0
    const-string v4, "android.wallpaper.secondaryTap"

    :goto_0
    move-object v7, v4

    aget v8, v0, v2

    aget v9, v0, v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 1517
    invoke-virtual/range {v5 .. v11}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1521
    return-void
.end method

.method public persistRemoveItemsByMatcher(Ljava/util/function/Predicate;Ljava/lang/String;)V
    .locals 1
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3413
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/model/ModelWriter;->deleteItemsFromDatabase(Ljava/util/function/Predicate;Ljava/lang/String;)V

    .line 3414
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->removeItemsByMatcher(Ljava/util/function/Predicate;)V

    .line 3415
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 0

    .line 1973
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    return-void
.end method

.method public removeAllWorkspaceScreens()V
    .locals 2

    .line 596
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->disableLayoutTransitions()V

    .line 599
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 600
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeFolderListeners()V

    .line 605
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->removeAllViews()V

    .line 606
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntArray;->clear()V

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSparseArrayMap;->clear()V

    .line 610
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v0, v0, Lcom/android/launcher3/Launcher;->mHandler:Landroid/os/Handler;

    const-class v1, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 613
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->bindAndInitFirstWorkspaceScreen()V

    .line 616
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->enableLayoutTransitions()V

    .line 617
    return-void
.end method

.method public removeExtraEmptyScreen(Z)V
    .locals 2
    .param p1, "stripEmptyScreens"    # Z

    .line 770
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/Workspace;->removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V

    .line 771
    return-void
.end method

.method public removeExtraEmptyScreenDelayed(IZLjava/lang/Runnable;)V
    .locals 3
    .param p1, "delay"    # I
    .param p2, "stripEmptyScreens"    # Z
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .line 792
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 794
    return-void

    .line 797
    :cond_0
    if-lez p1, :cond_1

    .line 798
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p2, p3}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/Workspace;ZLjava/lang/Runnable;)V

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 800
    return-void

    .line 805
    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->convertFinalScreenToEmptyScreenIfNecessary()V

    .line 807
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->hasExtraEmptyScreens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 808
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->forEachExtraEmptyPageId(Ljava/util/function/Consumer;)V

    .line 814
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 817
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->showPageIndicatorAtCurrentScroll()V

    .line 820
    :cond_2
    if-eqz p2, :cond_3

    .line 823
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 826
    :cond_3
    if-eqz p3, :cond_4

    .line 827
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 829
    :cond_4
    return-void
.end method

.method public removeFolderListeners()V
    .locals 1

    .line 3133
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/Workspace$7;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3142
    return-void
.end method

.method public removeItemsByMatcher(Ljava/util/function/Predicate;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 3277
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 3278
    .local v4, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 3280
    .local v5, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 3281
    invoke-virtual {v5, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3282
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    .line 3284
    .local v8, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-interface {p1, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 3285
    invoke-virtual {v4, v7}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3286
    instance-of v9, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v9, :cond_1

    .line 3287
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v10, v7

    check-cast v10, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_2

    .line 3289
    :cond_0
    instance-of v9, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v9, :cond_1

    .line 3290
    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/model/data/FolderInfo;

    .line 3291
    .local v9, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v10, v9, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    .line 3292
    invoke-interface {v10, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 3293
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 3294
    .local v10, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3295
    invoke-virtual {v9, v10, v2}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    .line 3296
    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3297
    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 3280
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v9    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v10    # "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3277
    .end local v4    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v5    # "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v6    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3305
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 3306
    return-void
.end method

.method public removeItemsByMatcherWithoutWidget(Ljava/util/function/Predicate;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 3309
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getWorkspaceAndHotseatCellLayouts()[Lcom/android/launcher3/CellLayout;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 3310
    .local v4, "layout":Lcom/android/launcher3/CellLayout;
    invoke-virtual {v4}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v5

    .line 3312
    .local v5, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_2

    .line 3313
    invoke-virtual {v5, v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3314
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/model/data/ItemInfo;

    .line 3317
    .local v8, "info":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-interface {p1, v8}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    instance-of v9, v7, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-nez v9, :cond_0

    .line 3318
    invoke-virtual {v4, v7}, Lcom/android/launcher3/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 3319
    instance-of v9, v7, Lcom/android/launcher3/DropTarget;

    if-eqz v9, :cond_1

    .line 3320
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v10, v7

    check-cast v10, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    goto :goto_2

    .line 3322
    :cond_0
    instance-of v9, v7, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v9, :cond_1

    .line 3323
    move-object v9, v8

    check-cast v9, Lcom/android/launcher3/model/data/FolderInfo;

    .line 3324
    .local v9, "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    iget-object v10, v9, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    .line 3325
    invoke-interface {v10, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    .line 3326
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 3327
    .local v10, "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 3328
    invoke-virtual {v9, v10, v2}, Lcom/android/launcher3/model/data/FolderInfo;->removeAll(Ljava/util/List;Z)V

    .line 3329
    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/folder/Folder;->isOpen()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3330
    move-object v11, v7

    check-cast v11, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v11}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 3312
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v9    # "folderInfo":Lcom/android/launcher3/model/data/FolderInfo;
    .end local v10    # "matches":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    :cond_1
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 3309
    .end local v4    # "layout":Lcom/android/launcher3/CellLayout;
    .end local v5    # "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .end local v6    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3338
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->stripEmptyScreens()V

    .line 3339
    return-void
.end method

.method public removeWidget(I)V
    .locals 1
    .param p1, "appWidgetId"    # I

    .line 3116
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/Workspace;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3127
    return-void
.end method

.method public removeWorkspaceItem(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 3096
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getParentCellLayoutForView(Landroid/view/View;)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 3097
    .local v0, "parentCell":Lcom/android/launcher3/CellLayout;
    if-eqz v0, :cond_0

    .line 3098
    invoke-virtual {v0, p1}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    .line 3106
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/DropTarget;

    if-eqz v1, :cond_1

    .line 3107
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 3109
    :cond_1
    return-void
.end method

.method public resetTransitionTransform()V
    .locals 1

    .line 3026
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3027
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 3028
    iget v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 3030
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForChild(I)V
    .locals 2
    .param p1, "child"    # I

    .line 3157
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 3158
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 3159
    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 3160
    .local v0, "cl":Lcom/android/launcher3/CellLayout;
    if-eqz v0, :cond_0

    .line 3161
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    .line 3164
    .end local v0    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_0
    return-void
.end method

.method public restoreInstanceStateForRemainingPages()V
    .locals 3

    .line 3167
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v0

    .line 3168
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3169
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3170
    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->restoreInstanceStateForChild(I)V

    .line 3168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3173
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mRestoredPages:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntArray;->clear()V

    .line 3174
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mSavedStates:Landroid/util/SparseArray;

    .line 3175
    return-void
.end method

.method public runOnOverlayHidden(Ljava/lang/Runnable;)Z
    .locals 2
    .param p1, "callback"    # Ljava/lang/Runnable;

    .line 1299
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 1300
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    goto :goto_0

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    .line 1304
    .local v0, "oldCallback":Ljava/lang/Runnable;
    new-instance v1, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/launcher3/Workspace;->mOnOverlayHiddenCallback:Ljava/lang/Runnable;

    .line 1309
    .end local v0    # "oldCallback":Ljava/lang/Runnable;
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->tryRunOverlayCallback()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1310
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1311
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1312
    new-instance v1, Lcom/android/launcher3/Workspace$2;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/Workspace$2;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewTreeObserver;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnWindowFocusChangeListener(Landroid/view/ViewTreeObserver$OnWindowFocusChangeListener;)V

    .line 1321
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 1323
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public scrollLeft()Z
    .locals 2

    .line 3179
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 3180
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3181
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v0

    .line 3183
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 3184
    .local v1, "openFolder":Lcom/android/launcher3/folder/Folder;
    if-eqz v1, :cond_1

    .line 3185
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 3187
    :cond_1
    return v0
.end method

.method public scrollRight()Z
    .locals 2

    .line 3192
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    .line 3193
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsSwitchingState:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->workspaceInScrollableState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3194
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v0

    .line 3196
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v1

    .line 3197
    .local v1, "openFolder":Lcom/android/launcher3/folder/Folder;
    if-eqz v1, :cond_1

    .line 3198
    invoke-virtual {v1}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 3200
    :cond_1
    return v0
.end method

.method setCurrentDragOverlappingLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;

    .line 2293
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 2294
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2296
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragOverlappingLayout:Lcom/android/launcher3/CellLayout;

    .line 2297
    if-eqz p1, :cond_1

    .line 2298
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2300
    :cond_1
    return-void
.end method

.method setCurrentDropLayout(Lcom/android/launcher3/CellLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/launcher3/CellLayout;

    .line 2279
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    if-eqz v0, :cond_0

    .line 2280
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2281
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->onDragExit()V

    .line 2283
    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragTargetLayout:Lcom/android/launcher3/CellLayout;

    .line 2284
    if-eqz p1, :cond_1

    .line 2285
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->onDragEnter()V

    .line 2287
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2288
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2289
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/Workspace;->setCurrentDropOverCell(II)V

    .line 2290
    return-void
.end method

.method setCurrentDropOverCell(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2307
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    if-eq p2, v0, :cond_1

    .line 2308
    :cond_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragOverX:I

    .line 2309
    iput p2, p0, Lcom/android/launcher3/Workspace;->mDragOverY:I

    .line 2310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setDragMode(I)V

    .line 2312
    :cond_1
    return-void
.end method

.method setDragMode(I)V
    .locals 2
    .param p1, "dragMode"    # I

    .line 2315
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    if-eq p1, v0, :cond_4

    .line 2316
    if-nez p1, :cond_0

    .line 2317
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2321
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2322
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 2323
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    .line 2324
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    goto :goto_0

    .line 2325
    :cond_1
    if-ne p1, v1, :cond_2

    .line 2326
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2327
    invoke-direct {p0, v1}, Lcom/android/launcher3/Workspace;->cleanupReorder(Z)V

    goto :goto_0

    .line 2328
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 2329
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupAddToFolder()V

    .line 2330
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->cleanupFolderCreation()V

    .line 2332
    :cond_3
    :goto_0
    iput p1, p0, Lcom/android/launcher3/Workspace;->mDragMode:I

    .line 2334
    :cond_4
    return-void
.end method

.method public setFinalTransitionTransform()V
    .locals 1

    .line 3019
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3020
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScaleX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mCurrentScale:F

    .line 3021
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleX(F)V

    .line 3022
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->getFinalScale()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setScaleY(F)V

    .line 3024
    :cond_0
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 314
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 316
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->shouldFadeAdjacentWorkspaceScreens()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    .line 318
    iget-object v1, v0, Lcom/android/launcher3/DeviceProfile;->workspacePadding:Landroid/graphics/Rect;

    .line 319
    .local v1, "padding":Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/launcher3/Workspace;->setPadding(IIII)V

    .line 320
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 322
    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mWorkspaceFadeInAdjacentScreens:Z

    if-eqz v2, :cond_0

    .line 324
    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->setPageSpacing(I)V

    goto :goto_0

    .line 329
    :cond_0
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 330
    .local v2, "maxInsets":I
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->edgeMarginPx:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 331
    .local v3, "maxPadding":I
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->setPageSpacing(I)V

    .line 334
    .end local v2    # "maxInsets":I
    .end local v3    # "maxPadding":I
    :goto_0
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateCellLayoutPadding()V

    .line 335
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateWorkspaceWidgetsSizes()V

    .line 336
    return-void
.end method

.method public setLauncherOverlay(Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V
    .locals 2
    .param p1, "overlay"    # Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;

    .line 1145
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/OverlayEdgeEffect;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/util/OverlayEdgeEffect;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/shared/LauncherOverlayManager$LauncherOverlay;)V

    :goto_0
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    .line 1146
    if-nez p1, :cond_1

    .line 1147
    new-instance v0, Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    goto :goto_1

    :cond_1
    nop

    .line 1148
    .local v0, "newEffect":Lcom/android/launcher3/util/EdgeEffectCompat;
    :goto_1
    iget-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v1, :cond_2

    .line 1149
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    goto :goto_2

    .line 1151
    :cond_2
    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    .line 1153
    :goto_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->onOverlayScrollChanged(F)V

    .line 1154
    return-void
.end method

.method public setPivotToScaleWithSelf(Landroid/view/View;)V
    .locals 2
    .param p1, "sibling"    # Landroid/view/View;

    .line 3475
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPivotY()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3476
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3475
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 3477
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPivotX()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3478
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3477
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 3479
    return-void
.end method

.method public setState(Lcom/android/launcher3/LauncherState;)V
    .locals 1
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;

    .line 1544
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onStartStateTransition()V

    .line 1545
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setState(Lcom/android/launcher3/LauncherState;)V

    .line 1546
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->onEndStateTransition()V

    .line 1547
    return-void
.end method

.method public bridge synthetic setState(Ljava/lang/Object;)V
    .locals 0

    .line 141
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/Workspace;->setState(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 2
    .param p1, "toState"    # Lcom/android/launcher3/LauncherState;
    .param p2, "config"    # Lcom/android/launcher3/states/StateAnimationConfig;
    .param p3, "animation"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 1555
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/Workspace$StateTransitionListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/Workspace$StateTransitionListener;-><init>(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/Workspace$StateTransitionListener-IA;)V

    .line 1556
    .local v0, "listener":Lcom/android/launcher3/Workspace$StateTransitionListener;, "Lcom/android/launcher3/Workspace<TT;>.StateTransitionListener;"
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mStateTransitionAnimation:Lcom/android/launcher3/WorkspaceStateTransitionAnimation;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/launcher3/WorkspaceStateTransitionAnimation;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 1560
    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_MULTI_PAGE:I

    invoke-virtual {p1, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1561
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mForceDrawAdjacentPages:Z

    .line 1563
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->invalidate()V

    .line 1565
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 1566
    .local v1, "stepAnimator":Landroid/animation/ValueAnimator;
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1567
    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1568
    invoke-virtual {p3, v1}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 1569
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public bridge synthetic setStateWithAnimation(Ljava/lang/Object;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    .line 141
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/Workspace;->setStateWithAnimation(Lcom/android/launcher3/LauncherState;Lcom/android/launcher3/states/StateAnimationConfig;Lcom/android/launcher3/anim/PendingAnimation;)V

    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 2

    .line 1344
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/launcher3/Workspace$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/Workspace$3;-><init>(Lcom/android/launcher3/Workspace;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 1354
    return-void
.end method

.method setup(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 2
    .param p1, "dragController"    # Lcom/android/launcher3/dragndrop/DragController;

    .line 3054
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    new-instance v0, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/SpringLoadedDragController;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher3/Workspace;->mSpringLoadedDragController:Lcom/android/launcher3/dragndrop/SpringLoadedDragController;

    .line 3055
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 3059
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->updateChildrenLayersEnabled()V

    .line 3060
    return-void
.end method

.method protected shouldFlingForVelocity(I)Z
    .locals 2
    .param p1, "velocityX"    # I

    .line 1197
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget v0, p0, Lcom/android/launcher3/Workspace;->mOverlayTranslation:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    .line 1198
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->shouldFlingForVelocity(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1197
    :goto_0
    return v0
.end method

.method public showPageIndicatorAtCurrentScroll()V
    .locals 3

    .line 1189
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1190
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mPageIndicator:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/pageindicators/PageIndicator;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->computeMaxScroll()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/pageindicators/PageIndicator;->setScroll(II)V

    .line 1192
    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 1

    .line 1162
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mOverlayEdgeEffect:Lcom/android/launcher3/util/OverlayEdgeEffect;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/util/OverlayEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->snapToPageImmediately(I)Z

    goto :goto_0

    .line 1165
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->snapToDestination()V

    .line 1167
    :goto_0
    return-void
.end method

.method public startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4
    .param p1, "cellInfo"    # Lcom/android/launcher3/CellLayout$CellInfo;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1610
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p1, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 1612
    .local v0, "child":Landroid/view/View;
    iput-object p1, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    .line 1613
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1615
    iget-boolean v1, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v1, :cond_0

    .line 1616
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v2, Lcom/android/launcher3/Workspace$4;

    new-instance v3, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v2, p0, p0, v3}, Lcom/android/launcher3/Workspace$4;-><init>(Lcom/android/launcher3/Workspace;Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 1626
    :cond_0
    invoke-virtual {p0, v0, p0, p2}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 1627
    return-void
.end method

.method public stripEmptyScreens()V
    .locals 11

    .line 953
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    return-void

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->isPageInTransition()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 960
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mStripScreensOnPageStopMoving:Z

    .line 961
    return-void

    .line 964
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v0

    .line 965
    .local v0, "currentPage":I
    new-instance v2, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntArray;-><init>()V

    .line 966
    .local v2, "removeScreens":Lcom/android/launcher3/util/IntArray;
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSparseArrayMap;->size()I

    move-result v3

    .line 967
    .local v3, "total":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    .line 968
    iget-object v5, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->keyAt(I)I

    move-result v5

    .line 969
    .local v5, "id":I
    iget-object v6, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v6, v4}, Lcom/android/launcher3/util/IntSparseArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/CellLayout;

    .line 971
    .local v6, "cl":Lcom/android/launcher3/CellLayout;
    nop

    .line 972
    invoke-virtual {v6}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v7

    if-nez v7, :cond_2

    .line 973
    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 967
    .end local v5    # "id":I
    .end local v6    # "cl":Lcom/android/launcher3/CellLayout;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 979
    .end local v4    # "i":I
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 981
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 982
    .local v4, "removeScreensIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 983
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 984
    .local v5, "pageToRemove":I
    invoke-virtual {p0, v5}, Lcom/android/launcher3/Workspace;->getScreenPair(I)I

    move-result v6

    .line 985
    .local v6, "pagePair":I
    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->contains(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 988
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 990
    .end local v5    # "pageToRemove":I
    .end local v6    # "pagePair":I
    :cond_4
    goto :goto_1

    .line 996
    .end local v4    # "removeScreensIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v4

    .line 998
    .local v4, "minScreens":I
    const/4 v5, 0x0

    .line 999
    .local v5, "pageShift":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1000
    invoke-virtual {v2, v6}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    .line 1001
    .local v7, "id":I
    iget-object v8, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/util/IntSparseArrayMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/CellLayout;

    .line 1002
    .local v8, "cl":Lcom/android/launcher3/CellLayout;
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/IntSparseArrayMap;->remove(I)V

    .line 1003
    iget-object v9, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v9, v7}, Lcom/android/launcher3/util/IntArray;->removeValue(I)V

    .line 1005
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v9

    if-le v9, v4, :cond_7

    .line 1007
    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v9

    if-ge v9, v0, :cond_6

    .line 1008
    add-int/lit8 v5, v5, 0x1

    .line 1010
    :cond_6
    invoke-virtual {p0, v8}, Lcom/android/launcher3/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 1013
    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/Workspace;->isTwoPanelEnabled()Z

    move-result v9

    if-eqz v9, :cond_8

    rem-int/lit8 v9, v7, 0x2

    if-ne v9, v1, :cond_8

    .line 1015
    const/16 v9, -0xc8

    goto :goto_3

    .line 1018
    :cond_8
    const/16 v9, -0xc9

    :goto_3
    nop

    .line 1019
    .local v9, "extraScreenId":I
    iget-object v10, p0, Lcom/android/launcher3/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v10, v9, v8}, Lcom/android/launcher3/util/IntSparseArrayMap;->put(ILjava/lang/Object;)V

    .line 1020
    iget-object v10, p0, Lcom/android/launcher3/Workspace;->mScreenOrder:Lcom/android/launcher3/util/IntArray;

    invoke-virtual {v10, v9}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 999
    .end local v7    # "id":I
    .end local v8    # "cl":Lcom/android/launcher3/CellLayout;
    .end local v9    # "extraScreenId":I
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1024
    .end local v6    # "i":I
    :cond_9
    if-ltz v5, :cond_a

    .line 1025
    sub-int v1, v0, v5

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->setCurrentPage(I)V

    .line 1027
    :cond_a
    return-void
.end method

.method public unlockWallpaperFromDefaultPageOnNextLayout()V
    .locals 1

    .line 1361
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mWallpaperOffset:Lcom/android/launcher3/util/WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher3/util/WallpaperOffsetInterpolator;->isLockedToDefaultPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/Workspace;->mUnlockWallpaperFromDefaultPageOnLayout:Z

    .line 1363
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->requestLayout()V

    .line 1365
    :cond_0
    return-void
.end method

.method public updateAccessibilityFlags()V
    .locals 4

    .line 1578
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_INACCESSIBLE:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1579
    const/4 v0, 0x4

    goto :goto_0

    .line 1580
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 1581
    .local v0, "accessibilityFlag":I
    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1582
    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v1

    .line 1583
    .local v1, "total":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 1584
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/Workspace;->updateAccessibilityFlags(ILcom/android/launcher3/CellLayout;)V

    .line 1583
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1586
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->setImportantForAccessibility(I)V

    .line 1588
    .end local v1    # "total":I
    :cond_2
    return-void
.end method

.method protected updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1067
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->updateIsBeingDraggedOnTouchDown(Landroid/view/MotionEvent;)V

    .line 1069
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    .line 1070
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    .line 1071
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1072
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v2, p0, Lcom/android/launcher3/Workspace;->mXDown:F

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 1073
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    iget v2, p0, Lcom/android/launcher3/Workspace;->mYDown:F

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    const/4 v3, 0x1

    aput v2, v0, v3

    .line 1074
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    invoke-static {v0, p0, v2}, Lcom/android/launcher3/Utilities;->mapCoordInSelfToDescendant(Landroid/view/View;Landroid/view/View;[F)V

    .line 1075
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v2, v2, v1

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v2, v2, v1

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    .line 1076
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v2, v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mQsb:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mTempFXY:[F

    aget v2, v2, v3

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsEventOverQsb:Z

    goto :goto_1

    .line 1078
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/Workspace;->mIsEventOverQsb:Z

    .line 1080
    :goto_1
    return-void
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    .line 3372
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "updatedDots":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/util/PackageUserKey;>;"
    new-instance v0, Lcom/android/launcher3/util/PackageUserKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 3373
    .local v0, "packageUserKey":Lcom/android/launcher3/util/PackageUserKey;
    new-instance v1, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda8;-><init>(Lcom/android/launcher3/util/PackageUserKey;Ljava/util/function/Predicate;)V

    .line 3376
    .local v1, "matcher":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/launcher3/model/data/ItemInfo;>;"
    new-instance v2, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/Workspace$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/function/Predicate;)V

    .line 3399
    .local v2, "op":Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;
    invoke-virtual {p0, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3400
    iget-object v3, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v3

    .line 3401
    .local v3, "folder":Lcom/android/launcher3/folder/Folder;
    if-eqz v3, :cond_0

    .line 3402
    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/Folder;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3404
    :cond_0
    return-void
.end method

.method public widgetsRestored(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)V"
        }
    .end annotation

    .line 3418
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    .local p1, "changedInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3419
    new-instance v0, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;

    iget-object v1, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 3420
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;Lcom/android/launcher3/widget/LauncherAppWidgetHost;)V

    .line 3422
    .local v0, "widgetRefresh":Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;, "Lcom/android/launcher3/Workspace<TT;>.DeferredWidgetRefresh;"
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 3424
    .local v1, "item":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    new-instance v2, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    .line 3425
    .local v2, "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3426
    iget-object v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/widget/WidgetManagerHelper;->findProvider(Landroid/content/ComponentName;Landroid/os/UserHandle;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .local v3, "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    goto :goto_0

    .line 3428
    .end local v3    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    iget v3, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getLauncherAppWidgetInfo(I)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v3

    .line 3431
    .restart local v3    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :goto_0
    if-eqz v3, :cond_1

    .line 3433
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;->run()V

    goto :goto_1

    .line 3437
    :cond_1
    new-instance v4, Lcom/android/launcher3/Workspace$10;

    invoke-direct {v4, p0, p1}, Lcom/android/launcher3/Workspace$10;-><init>(Lcom/android/launcher3/Workspace;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    .line 3451
    .end local v0    # "widgetRefresh":Lcom/android/launcher3/Workspace$DeferredWidgetRefresh;, "Lcom/android/launcher3/Workspace<TT;>.DeferredWidgetRefresh;"
    .end local v1    # "item":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    .end local v2    # "widgetHelper":Lcom/android/launcher3/widget/WidgetManagerHelper;
    .end local v3    # "widgetInfo":Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    :goto_1
    return-void
.end method

.method willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 4
    .param p1, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "dropOverView"    # Landroid/view/View;

    .line 1870
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1871
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1872
    .local v1, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v3, :cond_1

    .line 1873
    :cond_0
    return v0

    .line 1877
    .end local v1    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1878
    const-string v2, "com.sonymobile.gameenhancer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1879
    return v0

    .line 1882
    :cond_2
    instance-of v1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_3

    .line 1883
    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/folder/FolderIcon;

    .line 1884
    .local v1, "fi":Lcom/android/launcher3/folder/FolderIcon;
    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/FolderIcon;->acceptDrop(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1885
    const/4 v0, 0x1

    return v0

    .line 1888
    .end local v1    # "fi":Lcom/android/launcher3/folder/FolderIcon;
    :cond_3
    return v0
.end method

.method willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IF)Z
    .locals 2
    .param p1, "dragInfo"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "target"    # Lcom/android/launcher3/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F

    .line 1864
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float v0, p4, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 1865
    :cond_0
    aget v0, p3, v1

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1866
    .local v0, "dropOverView":Landroid/view/View;
    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/Workspace;->willAddToExistingUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result v1

    return v1
.end method

.method willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z
    .locals 8
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "dropOverView"    # Landroid/view/View;
    .param p3, "considerTimeout"    # Z

    .line 1825
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1826
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1827
    .local v1, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-boolean v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_1

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v2, v3, :cond_0

    iget v2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v2, v3, :cond_1

    .line 1828
    :cond_0
    return v0

    .line 1832
    .end local v1    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_1
    const/4 v1, 0x0

    .line 1833
    .local v1, "hasntMoved":Z
    iget-object v2, p0, Lcom/android/launcher3/Workspace;->mDragInfo:Lcom/android/launcher3/CellLayout$CellInfo;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 1834
    iget-object v2, v2, Lcom/android/launcher3/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-ne p2, v2, :cond_2

    move v2, v3

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    move v1, v2

    .line 1837
    :cond_3
    if-eqz p2, :cond_c

    if-nez v1, :cond_c

    if-eqz p3, :cond_4

    iget-boolean v2, p0, Lcom/android/launcher3/Workspace;->mCreateUserFolderOnDrop:Z

    if-nez v2, :cond_4

    goto/16 :goto_6

    .line 1841
    :cond_4
    const/4 v2, 0x0

    .line 1842
    .local v2, "aboveShortcut":Z
    const/4 v4, 0x0

    .line 1844
    .local v4, "isOverlappedGameEnhancer":Z
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v5, :cond_8

    .line 1845
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    .line 1846
    .local v5, "wItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    iget v6, v5, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    const/16 v7, -0x67

    if-eq v6, v7, :cond_5

    move v6, v3

    goto :goto_1

    :cond_5
    move v6, v0

    :goto_1
    move v2, v6

    .line 1848
    invoke-virtual {v5}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1849
    const-string v7, "com.sonymobile.gameenhancer"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 1850
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1851
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    move v6, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v6, v3

    :goto_3
    move v4, v6

    .line 1854
    .end local v5    # "wItemInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    :cond_8
    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v5, :cond_a

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eq v5, v3, :cond_a

    iget v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_9

    goto :goto_4

    :cond_9
    move v5, v0

    goto :goto_5

    :cond_a
    :goto_4
    move v5, v3

    .line 1859
    .local v5, "willBecomeShortcut":Z
    :goto_5
    if-eqz v2, :cond_b

    if-eqz v5, :cond_b

    if-nez v4, :cond_b

    move v0, v3

    :cond_b
    return v0

    .line 1838
    .end local v2    # "aboveShortcut":Z
    .end local v4    # "isOverlappedGameEnhancer":Z
    .end local v5    # "willBecomeShortcut":Z
    :cond_c
    :goto_6
    return v0
.end method

.method willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/CellLayout;[IFZ)Z
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "target"    # Lcom/android/launcher3/CellLayout;
    .param p3, "targetCell"    # [I
    .param p4, "distance"    # F
    .param p5, "considerTimeout"    # Z

    .line 1819
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    invoke-virtual {p2, p3}, Lcom/android/launcher3/CellLayout;->getFolderCreationRadius([I)F

    move-result v0

    cmpl-float v0, p4, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 1820
    :cond_0
    aget v0, p3, v1

    const/4 v1, 0x1

    aget v1, p3, v1

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 1821
    .local v0, "dropOverView":Landroid/view/View;
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher3/Workspace;->willCreateUserFolder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Z)Z

    move-result v1

    return v1
.end method

.method public workspaceIconsCanBeDragged()Z
    .locals 2

    .line 1458
    .local p0, "this":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    return v0
.end method
