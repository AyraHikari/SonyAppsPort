.class public abstract Lcom/android/quickstep/views/RecentsView;
.super Lcom/android/launcher3/PagedView;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/launcher3/Insettable;
.implements Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;
.implements Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;
.implements Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;,
        Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;,
        Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ACTIVITY_TYPE:",
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "TSTATE_TYPE;>;STATE_TYPE::",
        "Lcom/android/launcher3/statemanager/BaseState<",
        "TSTATE_TYPE;>;>",
        "Lcom/android/launcher3/PagedView;",
        "Lcom/android/launcher3/Insettable;",
        "Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;",
        "Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;",
        "Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;"
    }
.end annotation


# static fields
.field private static final ADDITIONAL_DISMISS_TRANSLATION_INTERPOLATION_OFFSET:F = 0.05f

.field private static final ADDITION_TASK_DURATION:I = 0xc8

.field public static final ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field private static final ANIMATION_DISMISS_PROGRESS_MIDPOINT:F = 0.5f

.field private static final COLOR_TINT:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final CONTENT_ALPHA:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_ACTIONS_VIEW_ALPHA_ANIMATION_DURATION:I = 0x12c

.field private static final DISMISS_TASK_DURATION:I = 0x12c

.field private static final END_DISMISS_TRANSLATION_INTERPOLATION_OFFSET:F = 0.75f

.field public static final FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field private static final INITIAL_DISMISS_TRANSLATION_INTERPOLATION_OFFSET:F = 0.55f

.field private static final OVERSCROLL_PAGE_SNAP_ANIMATION_DURATION:I = 0x10e

.field public static final RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field private static final REMOVE_TASK_WAIT_FOR_APP_STOP_MS:I = 0x64

.field public static final SCROLL_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

.field public static final SCROLL_VIBRATION_PRIMITIVE:I

.field public static final SCROLL_VIBRATION_PRIMITIVE_SCALE:F = 0.6f

.field private static final SIGNIFICANT_MOVE_SCREEN_WIDTH_PERCENTAGE:F = 0.15f

.field private static final TAG:Ljava/lang/String; = "RecentsView"

.field public static final TASK_MODALNESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/RecentsView;",
            ">;"
        }
    .end annotation
.end field

.field public static final UPDATE_SYSUI_FLAGS_THRESHOLD:F = 0.85f


# instance fields
.field private final INVALID_TASK_IDS:[I

.field private mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

.field private mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

.field private mActionsViewAlphaAnimatorFinalValue:F

.field protected final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TACTIVITY_TYPE;"
        }
    .end annotation
.end field

.field private mAdjacentPageHorizontalOffset:F

.field private final mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

.field private final mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

.field private mColorTint:F

.field protected mContentAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

.field protected mDisallowScrollToClearAll:Z

.field private mDownX:I

.field private mDownY:I

.field private final mEmptyIcon:Landroid/graphics/drawable/Drawable;

.field private final mEmptyMessage:Ljava/lang/CharSequence;

.field private final mEmptyMessagePadding:I

.field private final mEmptyMessagePaint:Landroid/text/TextPaint;

.field private mEmptyTextLayout:Landroid/text/Layout;

.field protected mEnableDrawingLiveTile:Z

.field private final mFastFlingVelocity:F

.field private mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

.field protected mFocusedTaskViewId:I

.field protected mFreezeViewVisibility:Z

.field protected mFullscreenProgress:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mGestureActive:Z

.field private mGridProgress:F

.field private final mGroupedTaskViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/android/quickstep/views/GroupedTaskView;",
            ">;"
        }
    .end annotation
.end field

.field private mHandleTaskStackChanges:Z

.field private final mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

.field private final mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

.field private final mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private mIgnoreResetTaskId:I

.field protected final mLastComputedGridSize:Landroid/graphics/Rect;

.field protected final mLastComputedGridTaskSize:Landroid/graphics/Rect;

.field protected mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

.field protected final mLastComputedTaskSize:Landroid/graphics/Rect;

.field protected mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

.field private final mLastMeasureSize:Landroid/graphics/Point;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field protected mLoadPlanEverApplied:Z

.field private final mModel:Lcom/android/quickstep/RecentsModel;

.field private mMovingTaskView:Lcom/android/quickstep/views/TaskView;

.field private mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

.field private mOnEmptyMessageUpdatedListener:Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;

.field protected final mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

.field private mOverScrollShift:I

.field private mOverlayEnabled:Z

.field private mOverviewFullscreenEnabled:Z

.field private mOverviewGridEnabled:Z

.field private mOverviewSelectEnabled:Z

.field private mOverviewStateEnabled:Z

.field private mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

.field private mPipCornerRadius:I

.field private mPipShadowRadius:I

.field protected mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

.field protected mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

.field private mRunningTaskShowScreenshot:Z

.field protected mRunningTaskTileHidden:Z

.field protected mRunningTaskViewId:I

.field private final mScrollHapticMinGapMillis:I

.field private mScrollLastHapticTimestamp:J

.field private final mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

.field private mSecondSplitHiddenView:Landroid/view/View;

.field private mShowAsGridLastOnLayout:Z

.field private mShowEmptyMessage:Z

.field private mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

.field protected final mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/BaseActivityInterface<",
            "TSTATE_TYPE;TACTIVITY_TYPE;>;"
        }
    .end annotation
.end field

.field private mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

.field private mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

.field private mSplitHiddenTaskViewIndex:I

.field private final mSplitPlaceholderInset:I

.field private final mSplitPlaceholderSize:I

.field private mSplitSelectSource:Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

.field private mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

.field private final mSplitToast:Landroid/widget/Toast;

.field private final mSquaredTouchSlop:F

.field private mSwipeDownShouldLaunchApp:Z

.field protected mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private mTaskGridVerticalDiff:F

.field protected mTaskHeight:I

.field private mTaskIconScaledDown:Z

.field private mTaskLaunchListener:Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;

.field private mTaskListChangeId:I

.field protected mTaskModalness:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

.field private final mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private final mTaskViewDeadZoneRect:Landroid/graphics/Rect;

.field private mTaskViewIdCount:I

.field private final mTaskViewPool:Lcom/android/launcher3/util/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/ViewPool<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field protected mTaskViewsPrimarySplitTranslation:F

.field protected mTaskViewsSecondarySplitTranslation:F

.field protected mTaskViewsSecondaryTranslation:F

.field protected mTaskWidth:I

.field private final mTempFloat:[F

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPointF:Landroid/graphics/PointF;

.field protected final mTempRect:Landroid/graphics/Rect;

.field protected final mTempRectF:Landroid/graphics/RectF;

.field private mTintingAnimator:Landroid/animation/ObjectAnimator;

.field private final mTintingColor:I

.field private mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

.field private mTopBottomRowHeightDiff:F

.field private final mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

.field private mTouchDownToStartHome:Z


# direct methods
.method public static synthetic $r8$lambda$Quz4nOpG5u_McWaOdzIzYK7NdiE(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->animateRecentsRotationInPlace(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActionsView(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/OverviewActionsView;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAdjacentPageHorizontalOffset(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmClearAllButton(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/views/ClearAllButton;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGridProgress(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandleTaskStackChanges(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmModel(Lcom/android/quickstep/views/RecentsView;)Lcom/android/quickstep/RecentsModel;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverviewStateEnabled(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSplitPlaceholderSize(Lcom/android/quickstep/views/RecentsView;)I
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTopRowIdSet(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntSet;
    .locals 0

    iget-object p0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAdjacentPageHorizontalOffset(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPendingAnimation(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPipCornerRadius(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mPipCornerRadius:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPipShadowRadius(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mPipShadowRadius:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mdismissTask(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->dismissTask(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchScrollChanged(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableLayoutTransitions(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->enableLayoutTransitions()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetBottomRowIdArray(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetColorTint(Lcom/android/quickstep/views/RecentsView;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getColorTint()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetHighestVisibleTaskIndex(Lcom/android/quickstep/views/RecentsView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getHighestVisibleTaskIndex()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetLastGridTaskView(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetOffsetFromScrollPosition(Lcom/android/quickstep/views/RecentsView;ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetTaskViewFromTaskViewId(Lcom/android/quickstep/views/RecentsView;I)Lcom/android/quickstep/views/TaskView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetTopRowIdArray(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/util/IntArray;
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mremoveTaskInternal(Lcom/android/quickstep/views/RecentsView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->removeTaskInternal(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequireTaskViewAt(Lcom/android/quickstep/views/RecentsView;I)Lcom/android/quickstep/views/TaskView;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetColorTint(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setColorTint(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGridProgress(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setGridProgress(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskModalness(Lcom/android/quickstep/views/RecentsView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->setTaskModalness(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateActionsViewFocusedScroll(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateActionsViewFocusedScroll()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateChildTaskOrientations(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateCurrentTaskActionsVisibility(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurrentTaskActionsVisibility()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateGridProperties(Lcom/android/quickstep/views/RecentsView;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePageOffsets(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePageOffsets()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTaskSize(Lcom/android/quickstep/views/RecentsView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTaskViewsSnapshotRadius(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskViewsSnapshotRadius()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 217
    new-instance v0, Lcom/android/quickstep/views/RecentsView$1;

    const-string v1, "contentAlpha"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->CONTENT_ALPHA:Landroid/util/FloatProperty;

    .line 230
    new-instance v0, Lcom/android/quickstep/views/RecentsView$2;

    const-string v1, "fullscreenProgress"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    .line 243
    new-instance v0, Lcom/android/quickstep/views/RecentsView$3;

    const-string v1, "taskModalness"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_MODALNESS:Landroid/util/FloatProperty;

    .line 256
    new-instance v0, Lcom/android/quickstep/views/RecentsView$4;

    const-string v1, "adjacentPageHorizontalOffset"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->ADJACENT_PAGE_HORIZONTAL_OFFSET:Landroid/util/FloatProperty;

    .line 273
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    sput v0, Lcom/android/quickstep/views/RecentsView;->SCROLL_VIBRATION_PRIMITIVE:I

    .line 275
    sget-object v0, Lcom/android/quickstep/util/VibratorWrapper;->EFFECT_TEXTURE_TICK:Landroid/os/VibrationEffect;

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->SCROLL_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

    .line 283
    new-instance v0, Lcom/android/quickstep/views/RecentsView$5;

    const-string v1, "colorTint"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->COLOR_TINT:Landroid/util/FloatProperty;

    .line 302
    new-instance v0, Lcom/android/quickstep/views/RecentsView$6;

    const-string v1, "taskSecondaryTranslation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_TRANSLATION:Landroid/util/FloatProperty;

    .line 321
    new-instance v0, Lcom/android/quickstep/views/RecentsView$7;

    const-string v1, "taskPrimarySplitTranslation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    .line 334
    new-instance v0, Lcom/android/quickstep/views/RecentsView$8;

    const-string v1, "taskSecondarySplitTranslation"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    .line 348
    new-instance v0, Lcom/android/quickstep/views/RecentsView$9;

    const-string v1, "recentsScale"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    .line 374
    new-instance v0, Lcom/android/quickstep/views/RecentsView$10;

    const-string v1, "recentsGrid"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/RecentsView$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/android/quickstep/BaseActivityInterface;)V
    .locals 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "sizeStrategy"    # Lcom/android/quickstep/BaseActivityInterface;

    .line 689
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    move-object v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {p0 .. p3}, Lcom/android/launcher3/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 418
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    .line 419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    .line 420
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    .line 422
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    .line 424
    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    .line 426
    const/4 v9, 0x0

    iput-boolean v9, v6, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    .line 427
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 428
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    .line 429
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    .line 430
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 431
    const/4 v10, 0x1

    new-array v1, v10, [F

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    .line 432
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    .line 444
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    .line 445
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    .line 452
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    .line 471
    const/4 v1, 0x0

    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    .line 472
    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondaryTranslation:F

    .line 473
    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    .line 474
    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondarySplitTranslation:F

    .line 476
    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    .line 477
    iput-boolean v9, v6, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    .line 478
    new-instance v2, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v2}, Lcom/android/launcher3/util/IntSet;-><init>()V

    iput-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    .line 490
    iput v9, v6, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    .line 496
    new-instance v2, Lcom/android/quickstep/views/RecentsView$11;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/RecentsView$11;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    iput-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    .line 554
    new-instance v2, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    invoke-direct {v2, v0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;-><init>(Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener-IA;)V

    iput-object v2, v6, Lcom/android/quickstep/views/RecentsView;->mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    .line 561
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    .line 568
    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    .line 570
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, v6, Lcom/android/quickstep/views/RecentsView;->INVALID_TASK_IDS:[I

    .line 574
    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    .line 576
    iput-boolean v9, v6, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    .line 577
    iput-boolean v9, v6, Lcom/android/quickstep/views/RecentsView;->mRunningTaskShowScreenshot:Z

    .line 592
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v6, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    .line 594
    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    .line 600
    iput v1, v6, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    .line 604
    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    .line 611
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    .line 637
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->toast_split_select_app:I

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v6, Lcom/android/quickstep/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    .line 651
    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    .line 667
    new-instance v0, Lcom/android/quickstep/views/RecentsView$12;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/RecentsView$12;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    .line 690
    invoke-virtual {p0, v10}, Lcom/android/quickstep/views/RecentsView;->setEnableFreeScroll(Z)V

    .line 691
    iput-object v8, v6, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    .line 692
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object v11, v6, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 693
    new-instance v12, Lcom/android/quickstep/util/RecentsOrientedState;

    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda9;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-direct {v12, v7, v8, v0}, Lcom/android/quickstep/util/RecentsOrientedState;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;Ljava/util/function/IntConsumer;)V

    iput-object v12, v6, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 695
    invoke-virtual {v11}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v13

    .line 696
    .local v13, "rotation":I
    invoke-virtual {v12, v13}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    .line 698
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$integer;->recentsScrollHapticMinGapMillis:I

    .line 699
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mScrollHapticMinGapMillis:I

    .line 700
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->recents_fast_fling_velocity:I

    .line 701
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    .line 702
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    .line 703
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 705
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->overview_clear_all_button:I

    .line 706
    invoke-virtual {v0, v1, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/ClearAllButton;

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    .line 707
    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda10;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/ClearAllButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    new-instance v14, Lcom/android/launcher3/util/ViewPool;

    sget v3, Lcom/android/launcher3/R$layout;->task:I

    const/16 v4, 0x14

    const/16 v5, 0xa

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v14, v6, Lcom/android/quickstep/views/RecentsView;->mTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    .line 710
    new-instance v14, Lcom/android/launcher3/util/ViewPool;

    sget v3, Lcom/android/launcher3/R$layout;->task_grouped:I

    move-object v0, v14

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/ViewPool;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;III)V

    iput-object v14, v6, Lcom/android/quickstep/views/RecentsView;->mGroupedTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    .line 713
    iget-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    .line 714
    iget-boolean v0, v6, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setLayoutDirection(I)V

    .line 715
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->split_placeholder_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    .line 717
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->split_placeholder_inset:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderInset:I

    .line 719
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/Utilities;->squaredTouchSlop(Landroid/content/Context;)F

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mSquaredTouchSlop:F

    .line 721
    sget v0, Lcom/android/launcher3/R$drawable;->ic_empty_recents:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    .line 722
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 723
    sget v0, Lcom/android/launcher3/R$string;->recents_empty_message:I

    invoke-virtual {v7, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    .line 724
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    .line 725
    const v1, 0x1010036

    invoke-static {v7, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 726
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->recents_empty_message_text_size:I

    .line 727
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 726
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 728
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/Themes;->getDefaultBodyFont(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 730
    invoke-virtual {v0, v10}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 731
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->recents_empty_message_text_padding:I

    .line 732
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    .line 733
    invoke-virtual {p0, v9}, Lcom/android/quickstep/views/RecentsView;->setWillNotDraw(Z)V

    .line 734
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    .line 735
    invoke-virtual {v12}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 737
    const-class v0, Lcom/android/quickstep/TaskOverlayFactory;

    .line 739
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->task_overlay_factory_class:I

    .line 737
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TaskOverlayFactory;

    iput-object v0, v6, Lcom/android/quickstep/views/RecentsView;->mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

    .line 743
    invoke-virtual {v11}, Lcom/android/launcher3/statemanager/StatefulActivity;->getViewCache()Lcom/android/launcher3/util/ViewCache;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->digital_wellbeing_toast:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ViewCache;->setCacheSize(II)V

    .line 745
    invoke-static/range {p1 .. p1}, Lcom/sonymobile/quickstep/GeServiceHelper;->getInstance(Landroid/content/Context;)Lcom/sonymobile/quickstep/GeServiceHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/quickstep/GeServiceHelper;->init()V

    .line 747
    invoke-static/range {p1 .. p1}, Lcom/android/quickstep/views/RecentsView;->getForegroundScrimDimColor(Landroid/content/Context;)I

    move-result v0

    iput v0, v6, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    .line 748
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/quickstep/views/RecentsView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "x1"    # I

    .line 205
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/quickstep/views/RecentsView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/quickstep/views/RecentsView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    return v0
.end method

.method static synthetic access$1712(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "x1"    # I

    .line 205
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/quickstep/views/RecentsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->pageBeginTransition()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/quickstep/views/RecentsView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/quickstep/views/RecentsView;)Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/quickstep/views/RecentsView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "x1"    # I

    .line 205
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    return p1
.end method

.method static synthetic access$612(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "x1"    # I

    .line 205
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    return v0
.end method

.method static synthetic access$812(Lcom/android/quickstep/views/RecentsView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;
    .param p1, "x1"    # I

    .line 205
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/quickstep/views/RecentsView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/quickstep/views/RecentsView;

    .line 205
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    return v0
.end method

.method private addDismissedTaskAnimations(Lcom/android/quickstep/views/TaskView;JLcom/android/launcher3/anim/PendingAnimation;)V
    .locals 9
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "duration"    # J
    .param p4, "anim"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 2722
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    sget-object v0, Lcom/android/launcher3/LauncherAnimUtils;->VIEW_ALPHA:Landroid/util/FloatProperty;

    .line 2723
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->isOnGridBottomRow(Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->ACCEL:Landroid/view/animation/Interpolator;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->FINAL_FRAME:Landroid/view/animation/Interpolator;

    :goto_0
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 2722
    invoke-virtual {p4, p1, v0, v3, v1}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 2724
    nop

    .line 2725
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getSecondaryDissmissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v0

    .line 2726
    .local v0, "secondaryViewTranslate":Landroid/util/FloatProperty;, "Landroid/util/FloatProperty<Lcom/android/quickstep/views/TaskView;>;"
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryDimension(Landroid/view/View;)I

    move-result v1

    .line 2727
    .local v1, "secondaryTaskDimension":I
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryTranslationDirectionFactor()I

    move-result v2

    .line 2729
    .local v2, "verticalFactor":I
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-static {v3}, Lcom/android/launcher3/util/DynamicResource;->provider(Landroid/content/Context;)Lcom/android/systemui/plugins/ResourceProvider;

    move-result-object v3

    .line 2730
    .local v3, "rp":Lcom/android/systemui/plugins/ResourceProvider;
    new-instance v4, Lcom/android/launcher3/anim/SpringProperty;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Lcom/android/launcher3/anim/SpringProperty;-><init>(I)V

    sget v6, Lcom/android/launcher3/R$dimen;->dismiss_task_trans_y_damping_ratio:I

    .line 2731
    invoke-interface {v3, v6}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/anim/SpringProperty;->setDampingRatio(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v4

    sget v6, Lcom/android/launcher3/R$dimen;->dismiss_task_trans_y_stiffness:I

    .line 2732
    invoke-interface {v3, v6}, Lcom/android/systemui/plugins/ResourceProvider;->getFloat(I)F

    move-result v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/anim/SpringProperty;->setStiffness(F)Lcom/android/launcher3/anim/SpringProperty;

    move-result-object v4

    .line 2734
    .local v4, "sp":Lcom/android/launcher3/anim/SpringProperty;
    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    mul-int v8, v2, v1

    mul-int/2addr v8, v5

    int-to-float v5, v8

    aput v5, v6, v7

    invoke-static {p1, v0, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 2735
    invoke-virtual {v5, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 2734
    invoke-virtual {p4, v5, v6, v4}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;Landroid/animation/TimeInterpolator;Lcom/android/launcher3/anim/SpringProperty;)V

    .line 2737
    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v5, :cond_1

    .line 2738
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2739
    new-instance v5, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda23;

    invoke-direct {v5, p0, p1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda23;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p4, v5}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 2749
    :cond_1
    return-void
.end method

.method private animateActionsViewAlpha(FJ)V
    .locals 4
    .param p1, "alphaValue"    # F
    .param p2, "duration"    # J

    .line 1846
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    .line 1847
    invoke-virtual {v0}, Lcom/android/quickstep/views/OverviewActionsView;->getVisibilityAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/MultiValueAlpha;->VALUE:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 1846
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 1848
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimatorFinalValue:F

    .line 1849
    invoke-virtual {v0, p2, p3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1850
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1851
    return-void
.end method

.method private animateActionsViewIn()V
    .locals 3

    .line 2383
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isFocusedTaskInExpectedScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2384
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const-wide/16 v1, 0x78

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->animateActionsViewAlpha(FJ)V

    .line 2386
    :cond_1
    return-void
.end method

.method private animateRecentsRotationInPlace(I)V
    .locals 2
    .param p1, "newRotation"    # I

    .line 2150
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2152
    return-void

    .line 2154
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 2155
    .local v0, "pa":Landroid/animation/AnimatorSet;
    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda24;

    invoke-direct {v1, p0, p1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda24;-><init>(Lcom/android/quickstep/views/RecentsView;I)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forSuccessCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2160
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2161
    return-void
.end method

.method private createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 7
    .param p1, "anim"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 2756
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderInset:I

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 2757
    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    .line 2758
    invoke-virtual {v4}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 2756
    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V

    .line 2760
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 2761
    .local v0, "startingTaskRect":Landroid/graphics/RectF;
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_0

    .line 2762
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/TaskView;->setVisibility(I)V

    .line 2763
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    .line 2764
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    .line 2765
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    .line 2766
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 2763
    invoke-static {v1, v3, v4, v5, v0}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    .line 2767
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/FloatingTaskView;->setAlpha(F)V

    .line 2768
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/views/FloatingTaskView;->addAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    goto :goto_0

    .line 2771
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    iget-object v3, v3, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;->view:Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    iget-object v5, v5, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v4, v5, v0}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    .line 2774
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/FloatingTaskView;->setAlpha(F)V

    .line 2775
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/quickstep/views/FloatingTaskView;->addAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    .line 2778
    :goto_0
    const/16 v1, 0x31

    const-string v2, "First tile selected"

    invoke-static {p0, v1, v2}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    .line 2780
    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda13;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 2791
    return-void
.end method

.method private dismissCurrentTask()V
    .locals 2

    .line 3511
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 3512
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_0

    .line 3513
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    .line 3515
    :cond_0
    return-void
.end method

.method private dismissTask(I)V
    .locals 3
    .param p1, "taskId"    # I

    .line 3492
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 3493
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_0

    .line 3494
    return-void

    .line 3496
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    .line 3497
    return-void
.end method

.method private dispatchScrollChanged()V
    .locals 2

    .line 5187
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 5189
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 5190
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-interface {v1}, Landroid/view/ViewTreeObserver$OnScrollChangedListener;->onScrollChanged()V

    .line 5189
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5192
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 4

    .line 2673
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    if-nez v0, :cond_0

    .line 2674
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    .line 2675
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 2676
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 2677
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 2679
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    new-instance v1, Lcom/android/quickstep/views/RecentsView$14;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$14;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 2697
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2698
    return-void
.end method

.method private executeSideTaskLaunchCallback()V
    .locals 1

    .line 1009
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    if-eqz v0, :cond_0

    .line 1010
    invoke-virtual {v0}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    .line 1011
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    .line 1013
    :cond_0
    return-void
.end method

.method private getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;
    .locals 6

    .line 3373
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowTaskCountForTablet()I

    move-result v0

    .line 3374
    .local v0, "bottomRowIdArraySize":I
    if-gtz v0, :cond_0

    .line 3375
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    return-object v1

    .line 3377
    :cond_0
    new-instance v1, Lcom/android/launcher3/util/IntArray;

    invoke-direct {v1, v0}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    .line 3378
    .local v1, "bottomArray":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    .line 3379
    .local v2, "taskViewCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 3380
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v4

    .line 3381
    .local v4, "taskViewId":I
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v5

    if-nez v5, :cond_1

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-eq v4, v5, :cond_1

    .line 3382
    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 3379
    .end local v4    # "taskViewId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3385
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private getColorTint()F
    .locals 1

    .line 5064
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    return v0
.end method

.method private getFirstViewIndex()I
    .locals 2

    .line 4663
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4664
    .local v0, "focusedTaskView":Lcom/android/quickstep/views/TaskView;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public static getForegroundScrimDimColor(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 5242
    sget v0, Lcom/android/launcher3/R$attr;->overviewScrimColor:I

    invoke-static {p0, v0}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 5244
    .local v0, "baseColor":I
    const/high16 v1, -0x1000000

    const/high16 v2, 0x3e800000    # 0.25f

    invoke-static {v1, v0, v2}, Landroidx/core/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    return v1
.end method

.method private getHighestVisibleTaskIndex()I
    .locals 10

    .line 3395
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    const v1, 0x7fffffff

    if-eqz v0, :cond_0

    return v1

    .line 3397
    :cond_0
    const v0, 0x7fffffff

    .line 3398
    .local v0, "lastVisibleIndex":I
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v2

    .line 3399
    .local v2, "topRowIdArray":Lcom/android/launcher3/util/IntArray;
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v3

    .line 3400
    .local v3, "bottomRowIdArray":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {v3}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 3402
    .local v4, "balancedColumns":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_3

    .line 3403
    invoke-virtual {v2, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    .line 3405
    .local v6, "topTask":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3406
    invoke-virtual {v3, v5}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v7

    .line 3407
    .local v7, "bottomTask":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    invoke-virtual {p0, v7}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v7    # "bottomTask":Lcom/android/quickstep/views/TaskView;
    goto :goto_1

    .line 3408
    :cond_1
    if-ge v0, v1, :cond_2

    .line 3409
    goto :goto_2

    .line 3408
    :cond_2
    :goto_1
    nop

    .line 3402
    .end local v6    # "topTask":Lcom/android/quickstep/views/TaskView;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 3413
    .end local v5    # "i":I
    :cond_3
    :goto_2
    return v0
.end method

.method private getHorizontalOffsetSize(IIF)F
    .locals 7
    .param p1, "childIndex"    # I
    .param p2, "midpointIndex"    # I
    .param p3, "offsetProgress"    # F

    .line 3841
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-nez v1, :cond_0

    .line 3843
    return v0

    .line 3848
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    .line 3852
    .local v1, "taskPosition":Landroid/graphics/RectF;
    const/4 v2, -0x1

    if-le p2, v2, :cond_2

    .line 3856
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 3857
    invoke-interface {v3, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v3

    sub-int/2addr v2, v3

    .line 3859
    .local v2, "midpointScroll":I
    invoke-direct {p0, p2, v2, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    .line 3860
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result v3

    .line 3862
    .local v3, "midpointStart":F
    invoke-direct {p0, p1, v2, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    .line 3864
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result v4

    cmpg-float v4, v4, v3

    if-gez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    move v2, v4

    .line 3865
    .end local v3    # "midpointStart":F
    .local v2, "isStartShift":Z
    goto :goto_1

    .line 3867
    .end local v2    # "isStartShift":Z
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/quickstep/views/RecentsView;->getPersistentChildPosition(IILandroid/graphics/RectF;)V

    .line 3868
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    .line 3877
    .restart local v2    # "isStartShift":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 3878
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/graphics/RectF;)F

    move-result v3

    neg-float v3, v3

    .line 3879
    .local v3, "desiredStart":F
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result v4

    neg-float v4, v4

    .line 3880
    .local v4, "distanceToOffscreen":F
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    if-nez v5, :cond_3

    .line 3881
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 3882
    invoke-interface {v5, v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 3883
    invoke-interface {v6, v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v0

    .line 3881
    invoke-virtual {v1, v5, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 3884
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3885
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getEnd(Landroid/graphics/RectF;)F

    move-result v0

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 3886
    invoke-interface {v5, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v5

    div-float/2addr v0, v5

    .line 3885
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    .line 3888
    :cond_3
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v4, v0

    .line 3889
    .end local v3    # "desiredStart":F
    goto :goto_2

    .line 3890
    .end local v4    # "distanceToOffscreen":F
    :cond_4
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result v3

    int-to-float v3, v3

    .line 3891
    .restart local v3    # "desiredStart":F
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result v4

    sub-float v4, v3, v4

    .line 3892
    .restart local v4    # "distanceToOffscreen":F
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    if-nez v5, :cond_5

    .line 3893
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 3894
    invoke-interface {v5, v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v5

    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 3895
    invoke-interface {v6, v3, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v0

    .line 3893
    invoke-virtual {v1, v5, v0}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 3896
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3897
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getStart(Landroid/graphics/RectF;)F

    move-result v0

    sub-float/2addr v0, v3

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 3898
    invoke-interface {v5, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScale(Landroid/view/View;)F

    move-result v5

    div-float/2addr v0, v5

    .line 3897
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    .line 3900
    :cond_5
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v4, v0

    .line 3902
    .end local v3    # "desiredStart":F
    :goto_2
    mul-float v0, v4, p3

    return v0
.end method

.method private getLastGridTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 2

    .line 1096
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method private getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;
    .locals 2
    .param p1, "topRowIdArray"    # Lcom/android/launcher3/util/IntArray;
    .param p2, "bottomRowIdArray"    # Lcom/android/launcher3/util/IntArray;

    .line 1101
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntArray;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    const/4 v0, 0x0

    return-object v0

    .line 1104
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1105
    invoke-virtual {p1}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1104
    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    goto :goto_0

    .line 1105
    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/util/IntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/IntArray;->get(I)I

    move-result v0

    :goto_0
    nop

    .line 1106
    .local v0, "lastTaskViewId":I
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    return-object v1
.end method

.method private getLastTaskScroll(II)I
    .locals 2
    .param p1, "clearAllScroll"    # I
    .param p2, "clearAllWidth"    # I

    .line 1119
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getClearAllExtraPageSpacing()I

    move-result v0

    add-int/2addr v0, p2

    .line 1120
    .local v0, "distance":I
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    neg-int v1, v0

    :goto_0
    add-int/2addr v1, p1

    return v1
.end method

.method private getLastViewIndex()I
    .locals 1

    .line 4668
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mDisallowScrollToClearAll:Z

    if-eqz v0, :cond_1

    .line 4669
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    if-eqz v0, :cond_0

    .line 4670
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_0

    .line 4671
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4672
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4668
    :goto_0
    return v0
.end method

.method private getOffsetFromScrollPosition(I)I
    .locals 2
    .param p1, "pageIndex"    # I

    .line 4794
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getTopRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getBottomRowIdArray()Lcom/android/launcher3/util/IntArray;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result v0

    return v0
.end method

.method private getOffsetFromScrollPosition(ILcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I
    .locals 10
    .param p1, "pageIndex"    # I
    .param p2, "topRowIdArray"    # Lcom/android/launcher3/util/IntArray;
    .param p3, "bottomRowIdArray"    # Lcom/android/launcher3/util/IntArray;

    .line 4799
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4800
    return v1

    .line 4803
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 4804
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_1

    .line 4805
    return v1

    .line 4808
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView(Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 4809
    .local v2, "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    if-nez v2, :cond_2

    .line 4810
    return v1

    .line 4813
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v3

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v4

    if-eq v3, v4, :cond_3

    .line 4814
    return v1

    .line 4818
    :cond_3
    nop

    .line 4819
    invoke-direct {p0, v2, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getPositionInRow(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result v1

    .line 4820
    .local v1, "lastGridTaskViewPosition":I
    invoke-direct {p0, v0, p2, p3}, Lcom/android/quickstep/views/RecentsView;->getPositionInRow(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I

    move-result v3

    .line 4821
    .local v3, "taskViewPosition":I
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    add-int/2addr v4, v5

    .line 4822
    .local v4, "gridTaskSizeAndSpacing":I
    sub-int v5, v1, v3

    mul-int/2addr v5, v4

    .line 4824
    .local v5, "positionDiff":I
    iget-boolean v6, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v6, :cond_4

    .line 4825
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 4826
    :cond_4
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    .line 4827
    :goto_0
    iget-boolean v7, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    goto :goto_1

    :cond_5
    iget v7, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    neg-int v7, v7

    :goto_1
    add-int/2addr v6, v7

    .line 4828
    .local v6, "lastTaskEnd":I
    iget-boolean v7, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v7, :cond_6

    move v7, v5

    goto :goto_2

    :cond_6
    neg-int v7, v5

    :goto_2
    add-int/2addr v7, v6

    .line 4829
    .local v7, "taskEnd":I
    iget-boolean v8, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v8, :cond_7

    .line 4830
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 4831
    :cond_7
    iget-object v8, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    :goto_3
    nop

    .line 4832
    .local v8, "normalTaskEnd":I
    sub-int v9, v7, v8

    return v9
.end method

.method private getPersistentChildPosition(IILandroid/graphics/RectF;)V
    .locals 6
    .param p1, "childIndex"    # I
    .param p2, "midPointScroll"    # I
    .param p3, "outRect"    # Landroid/graphics/RectF;

    .line 3817
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3818
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p3, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 3819
    instance-of v1, v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_1

    .line 3820
    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    .line 3821
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getPersistentTranslationX()F

    move-result v2

    .line 3822
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getPersistentTranslationY()F

    move-result v3

    .line 3821
    invoke-virtual {p3, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 3823
    iget v2, p3, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p3, Landroid/graphics/RectF;->top:F

    .line 3825
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 3826
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v2

    .line 3827
    .local v2, "persistentScale":F
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempMatrix:Landroid/graphics/Matrix;

    .line 3828
    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v4, :cond_0

    iget v4, p3, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_0
    iget v4, p3, Landroid/graphics/RectF;->left:F

    :goto_0
    iget v5, p3, Landroid/graphics/RectF;->top:F

    .line 3827
    invoke-virtual {v3, v2, v2, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 3829
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3831
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v2    # "persistentScale":F
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    neg-int v2, p2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    neg-int v4, p2

    .line 3832
    invoke-interface {v2, v4, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v2

    int-to-float v2, v2

    .line 3831
    invoke-virtual {p3, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 3833
    return-void
.end method

.method private getPositionInRow(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/util/IntArray;Lcom/android/launcher3/util/IntArray;)I
    .locals 2
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "topRowIdArray"    # Lcom/android/launcher3/util/IntArray;
    .param p3, "bottomRowIdArray"    # Lcom/android/launcher3/util/IntArray;

    .line 4837
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v0

    .line 4838
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v1

    invoke-virtual {p3, v1}, Lcom/android/launcher3/util/IntArray;->indexOf(I)I

    move-result v1

    :goto_0
    return v1
.end method

.method private getSnapToFocusedTaskScrollDiff(Z)I
    .locals 6
    .param p1, "isClearAllHidden"    # Z

    .line 1124
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 1125
    .local v0, "screenStart":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v1

    .line 1126
    .local v1, "targetScroll":I
    if-nez p1, :cond_1

    .line 1127
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-interface {v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result v2

    .line 1128
    .local v2, "clearAllWidth":I
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    .line 1129
    .local v3, "taskGridHorizontalDiff":I
    sub-int v4, v3, v2

    .line 1130
    .local v4, "clearAllFocusScrollDiff":I
    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    neg-int v5, v4

    :goto_0
    add-int/2addr v1, v5

    .line 1132
    .end local v2    # "clearAllWidth":I
    .end local v3    # "taskGridHorizontalDiff":I
    .end local v4    # "clearAllFocusScrollDiff":I
    :cond_1
    sub-int v2, v0, v1

    return v2
.end method

.method private getSnapToLastTaskScrollDiff()I
    .locals 5

    .line 1111
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 1112
    .local v0, "screenStart":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v1

    .line 1113
    .local v1, "clearAllScroll":I
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-interface {v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result v2

    .line 1114
    .local v2, "clearAllWidth":I
    invoke-direct {p0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->getLastTaskScroll(II)I

    move-result v3

    .line 1115
    .local v3, "lastTaskScroll":I
    sub-int v4, v0, v3

    return v4
.end method

.method private getTaskIdsForTaskViewId(I)[I
    .locals 2
    .param p1, "taskViewId"    # I

    .line 2042
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 2043
    .local v0, "runningTaskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_0

    .line 2044
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->INVALID_TASK_IDS:[I

    return-object v1

    .line 2047
    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    return-object v1
.end method

.method private getTaskViewFromPool(Z)Lcom/android/quickstep/views/TaskView;
    .locals 3
    .param p1, "isGrouped"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/quickstep/views/TaskView;",
            ">(Z)TT;"
        }
    .end annotation

    .line 2087
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    if-eqz p1, :cond_0

    .line 2088
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mGroupedTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewPool;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    goto :goto_0

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ViewPool;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    :goto_0
    nop

    .line 2090
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;, "TT;"
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewIdCount:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setTaskViewId(I)V

    .line 2091
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewIdCount:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_1

    .line 2092
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewIdCount:I

    goto :goto_1

    .line 2094
    :cond_1
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewIdCount:I

    .line 2097
    :goto_1
    return-object v0
.end method

.method private getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;
    .locals 4
    .param p1, "taskViewId"    # I

    .line 2060
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 2061
    return-object v0

    .line 2064
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2065
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 2066
    .local v2, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 2067
    return-object v2

    .line 2064
    .end local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2070
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method private getTaskViewIdFromTaskId(I)I
    .locals 2
    .param p1, "taskId"    # I

    .line 2343
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 2344
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method private getTopRowIdArray()Lcom/android/launcher3/util/IntArray;
    .locals 5

    .line 3355
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3356
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    return-object v0

    .line 3358
    :cond_0
    new-instance v0, Lcom/android/launcher3/util/IntArray;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/IntArray;-><init>(I)V

    .line 3359
    .local v0, "topArray":Lcom/android/launcher3/util/IntArray;
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    .line 3360
    .local v1, "taskViewCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 3361
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    .line 3362
    .local v3, "taskViewId":I
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v4, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3363
    invoke-virtual {v0, v3}, Lcom/android/launcher3/util/IntArray;->add(I)V

    .line 3360
    .end local v3    # "taskViewId":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3366
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method private getUndampedOverScrollShift()F
    .locals 8

    .line 800
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWidth()I

    move-result v0

    .line 801
    .local v0, "width":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getHeight()I

    move-result v1

    .line 802
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v2

    .line 803
    .local v2, "primarySize":I
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3, v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(II)I

    move-result v3

    .line 805
    .local v3, "secondarySize":I
    const/4 v4, 0x0

    .line 806
    .local v4, "effectiveShift":F
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 807
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v5, v3, v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->setSize(II)V

    .line 808
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    check-cast v5, Lcom/android/launcher3/util/TranslateEdgeEffect;

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    invoke-virtual {v5, v7}, Lcom/android/launcher3/util/TranslateEdgeEffect;->getTranslationShift([F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 809
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    aget v4, v5, v6

    .line 810
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->postInvalidateOnAnimation()V

    .line 813
    :cond_0
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v5}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1

    .line 814
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v5, v3, v2}, Lcom/android/launcher3/util/EdgeEffectCompat;->setSize(II)V

    .line 815
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    check-cast v5, Lcom/android/launcher3/util/TranslateEdgeEffect;

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    invoke-virtual {v5, v7}, Lcom/android/launcher3/util/TranslateEdgeEffect;->getTranslationShift([F)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 816
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempFloat:[F

    aget v5, v5, v6

    sub-float/2addr v4, v5

    .line 817
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->postInvalidateOnAnimation()V

    .line 821
    :cond_1
    int-to-float v5, v2

    mul-float/2addr v5, v4

    return v5
.end method

.method private isFocusedTaskInExpectedScrollPosition()Z
    .locals 2

    .line 1164
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 1165
    .local v0, "focusedTask":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskInExpectedScrollPosition(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isModal()Z
    .locals 2

    .line 1534
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z
    .locals 4
    .param p1, "taskView1"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "taskView2"    # Lcom/android/quickstep/views/TaskView;

    .line 2641
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    .line 2644
    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v1

    .line 2645
    .local v1, "taskViewId1":I
    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v2

    .line 2646
    .local v2, "taskViewId2":I
    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-eq v1, v3, :cond_5

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 2649
    :cond_1
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    .line 2650
    invoke-virtual {v3, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/4 v0, 0x1

    .line 2649
    :cond_4
    return v0

    .line 2647
    :cond_5
    :goto_0
    return v0

    .line 2642
    .end local v1    # "taskViewId1":I
    .end local v2    # "taskViewId2":I
    :cond_6
    :goto_1
    return v0
.end method

.method private isSplitPlaceholderFirstInGrid()Z
    .locals 4

    .line 3965
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3966
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3969
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v0

    .line 3970
    .local v0, "position":I
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3971
    if-ne v0, v3, :cond_2

    move v1, v3

    goto :goto_0

    .line 3972
    :cond_1
    if-nez v0, :cond_2

    move v1, v3

    .line 3970
    :cond_2
    :goto_0
    return v1

    .line 3967
    .end local v0    # "position":I
    :cond_3
    :goto_1
    return v1
.end method

.method private isSplitPlaceholderLastInGrid()Z
    .locals 4

    .line 3980
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3981
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3984
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v0

    .line 3985
    .local v0, "position":I
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 3986
    if-nez v0, :cond_2

    move v1, v3

    goto :goto_0

    .line 3987
    :cond_1
    if-ne v0, v3, :cond_2

    move v1, v3

    .line 3985
    :cond_2
    :goto_0
    return v1

    .line 3982
    .end local v0    # "position":I
    :cond_3
    :goto_1
    return v1
.end method

.method private isTaskViewFullyWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z
    .locals 4
    .param p1, "tv"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1146
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v0

    .line 1147
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v2

    .line 1146
    invoke-virtual {p1, v1, v2}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1148
    .local v0, "taskStart":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    .line 1149
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v2

    .line 1148
    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1150
    .local v1, "taskSize":I
    add-int v2, v0, v1

    .line 1151
    .local v2, "taskEnd":I
    if-lt v0, p2, :cond_0

    if-gt v2, p3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z
    .locals 4
    .param p1, "tv"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 1136
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getChildStart(Landroid/view/View;)I

    move-result v0

    .line 1137
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v2

    .line 1136
    invoke-virtual {p1, v1, v2}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1138
    .local v0, "taskStart":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    int-to-float v1, v1

    .line 1139
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v2

    .line 1138
    invoke-virtual {p1, v2}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 1140
    .local v1, "taskSize":I
    add-int v2, v0, v1

    .line 1141
    .local v2, "taskEnd":I
    if-lt v0, p2, :cond_0

    if-le v0, p3, :cond_1

    :cond_0
    if-lt v2, p2, :cond_2

    if-gt v2, p3, :cond_2

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method static synthetic lambda$confirmSplitSelect$23(Lcom/android/quickstep/views/TaskView;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p0, "containerTaskView"    # Lcom/android/quickstep/views/TaskView;
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 4062
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimatedInternal()Lcom/android/launcher3/util/RunnableList;

    return-void
.end method

.method static synthetic lambda$createTaskDismissAnimation$12(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)Z
    .locals 2
    .param p0, "dismissedTaskView"    # Lcom/android/quickstep/views/TaskView;
    .param p1, "v"    # Landroid/view/View;

    .line 2861
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    if-eq p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$createTaskDismissAnimation$13(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p0, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 2959
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    sget-object v1, Lcom/android/quickstep/views/TaskView;->GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 2961
    invoke-virtual {v1, p0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 2959
    return-void
.end method

.method static synthetic lambda$createTaskLaunchAnimation$28(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p0, "dividerAnimator"    # Landroid/animation/ValueAnimator;

    .line 4377
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 4378
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->end()V

    .line 4379
    return-void
.end method

.method static synthetic lambda$onDetachedFromWindow$1(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p0, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 934
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    .line 935
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    .line 934
    return-void
.end method

.method static synthetic lambda$redrawLiveTile$30(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p0, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 4471
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    .line 4472
    .local v0, "params":Lcom/android/quickstep/util/TransformParams;
    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4473
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/TaskViewSimulator;->apply(Lcom/android/quickstep/util/TransformParams;)V

    .line 4475
    :cond_0
    return-void
.end method

.method static synthetic lambda$removeTaskInternal$17(II)V
    .locals 1
    .param p0, "primaryTaskId"    # I
    .param p1, "secondaryTaskId"    # I

    .line 3422
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    .line 3423
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 3424
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->removeTask(I)V

    .line 3426
    :cond_0
    return-void
.end method

.method static synthetic lambda$reset$6(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p0, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 2014
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setTargetSet(Lcom/android/quickstep/RemoteAnimationTargets;)Lcom/android/quickstep/util/TransformParams;

    .line 2015
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setDrawsBelowRecents(Z)V

    .line 2016
    return-void
.end method

.method static synthetic lambda$resetTaskVisuals$4(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 3
    .param p0, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 1603
    invoke-virtual {p0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    .line 1604
    .local v0, "simulator":Lcom/android/quickstep/util/TaskViewSimulator;
    iget-object v1, v0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 1605
    iget-object v1, v0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iput v2, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 1606
    iget-object v1, v0, Lcom/android/quickstep/util/TaskViewSimulator;->fullScreenProgress:Lcom/android/quickstep/AnimatedFloat;

    iput v2, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 1607
    iget-object v1, v0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v1, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 1608
    return-void
.end method

.method static synthetic lambda$setInsets$5(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1
    .param p0, "dp"    # Lcom/android/launcher3/DeviceProfile;
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 1662
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    return-void
.end method

.method static synthetic lambda$setTaskViewsResistanceTranslation$22(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1
    .param p0, "translation"    # F
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 3912
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iput p0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    return-void
.end method

.method static synthetic lambda$updatePageOffsets$21(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 1
    .param p0, "totalTranslation"    # F
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 3804
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iput p0, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    return-void
.end method

.method private onOrientationChanged()V
    .locals 1

    .line 1714
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setModalStateEnabled(Z)V

    .line 1715
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onRotateInSplitSelectionState()V

    .line 1718
    :cond_0
    return-void
.end method

.method private removeTaskInternal(I)V
    .locals 7
    .param p1, "dismissedTaskViewId"    # I

    .line 3417
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForTaskViewId(I)[I

    move-result-object v0

    .line 3418
    .local v0, "taskIds":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 3419
    .local v1, "primaryTaskId":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 3420
    .local v2, "secondaryTaskId":I
    sget-object v3, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v3}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v2}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda0;-><init>(II)V

    const-wide/16 v5, 0x64

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3428
    return-void
.end method

.method private removeTasksViewsAndClearAllButton()V
    .locals 2

    .line 1542
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1543
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 1542
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1545
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1546
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 1548
    :cond_1
    return-void
.end method

.method private requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;
    .locals 1
    .param p1, "index"    # I

    .line 3680
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    return-object v0
.end method

.method private runDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V
    .locals 3
    .param p1, "pendingAnim"    # Lcom/android/launcher3/anim/PendingAnimation;

    .line 3484
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    .line 3485
    .local v0, "controller":Lcom/android/launcher3/anim/AnimatorPlaybackController;
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnStart()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 3486
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->getAnimationPlayer()Landroid/animation/ValueAnimator;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3487
    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->start()V

    .line 3488
    return-void
.end method

.method private setColorTint(F)V
    .locals 4
    .param p1, "tintAmount"    # F

    .line 5045
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    .line 5047
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5048
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    .line 5047
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5051
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getScrimView()Lcom/android/launcher3/views/ScrimView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/ScrimView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5052
    .local v0, "scrimBg":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_2

    .line 5053
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 5054
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 5056
    :cond_1
    sget-object v1, Landroid/graphics/BlendMode;->SRC_OVER:Landroid/graphics/BlendMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    .line 5057
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTintingColor:I

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    float-to-int v2, v2

    .line 5058
    invoke-static {v1, v2}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v1

    .line 5057
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 5061
    :cond_2
    :goto_1
    return-void
.end method

.method private setGridProgress(F)V
    .locals 3
    .param p1, "gridProgress"    # F

    .line 2659
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 2660
    .local v0, "taskCount":I
    if-nez v0, :cond_0

    .line 2661
    return-void

    .line 2664
    :cond_0
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    .line 2666
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2667
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/quickstep/views/TaskView;->setGridProgress(F)V

    .line 2666
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2669
    .end local v1    # "i":I
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v1, p1}, Lcom/android/quickstep/views/ClearAllButton;->setGridProgress(F)V

    .line 2670
    return-void
.end method

.method private setRunningTaskViewShowScreenshot(Z)V
    .locals 2
    .param p1, "showScreenshot"    # Z

    .line 2363
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2364
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskShowScreenshot:Z

    .line 2365
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 2366
    .local v0, "runningTaskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_0

    .line 2367
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskShowScreenshot:Z

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setShowScreenshot(Z)V

    .line 2370
    .end local v0    # "runningTaskView":Lcom/android/quickstep/views/TaskView;
    :cond_0
    return-void
.end method

.method private setTaskModalness(F)V
    .locals 5
    .param p1, "modalness"    # F

    .line 4988
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    .line 4989
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePageOffsets()V

    .line 4990
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4991
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskView;->setModalness(F)V

    .line 4994
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 4995
    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4996
    .local v0, "inPlaceLandscape":Z
    :goto_0
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v4, p1, v4

    if-gez v4, :cond_2

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v3, v2, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    .line 4997
    return-void
.end method

.method private showAsFullscreen()Z
    .locals 2

    .line 5075
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewFullscreenEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v1, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showCurrentTask([Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 10
    .param p1, "runningTasks"    # [Lcom/android/systemui/shared/recents/model/Task;

    .line 2271
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2272
    return-void

    .line 2274
    :cond_0
    const/4 v0, -0x1

    .line 2275
    .local v0, "runningTaskViewId":I
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v1, v2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    .line 2276
    .local v1, "needGroupTaskView":Z
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2277
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    .line 2280
    .local v4, "wasEmpty":Z
    :goto_1
    if-eqz v1, :cond_3

    .line 2281
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(Z)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    .line 2282
    .local v5, "taskView":Lcom/android/quickstep/views/TaskView;
    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/systemui/shared/recents/model/Task;

    aget-object v7, p1, v3

    aput-object v7, v6, v3

    aget-object v7, p1, v2

    aput-object v7, v6, v2

    iput-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    .line 2283
    invoke-virtual {p0, v5, v3}, Lcom/android/quickstep/views/RecentsView;->addView(Landroid/view/View;I)V

    .line 2287
    move-object v6, v5

    check-cast v6, Lcom/android/quickstep/views/GroupedTaskView;

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    aget-object v8, v7, v3

    aget-object v2, v7, v2

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {v6, v8, v2, v7, v9}, Lcom/android/quickstep/views/GroupedTaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    goto :goto_2

    .line 2290
    .end local v5    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_3
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(Z)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    .line 2291
    .restart local v5    # "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {p0, v5, v3}, Lcom/android/quickstep/views/RecentsView;->addView(Landroid/view/View;I)V

    .line 2294
    new-array v2, v2, [Lcom/android/systemui/shared/recents/model/Task;

    aget-object v6, p1, v3

    aput-object v6, v2, v3

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    .line 2295
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v5, v6, v2}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 2297
    :goto_2
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v0

    .line 2298
    if-eqz v4, :cond_4

    .line 2299
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->addView(Landroid/view/View;)V

    .line 2304
    :cond_4
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMeasuredWidth()I

    move-result v2

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 2305
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 2304
    invoke-virtual {p0, v2, v6}, Lcom/android/quickstep/views/RecentsView;->measure(II)V

    .line 2306
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRight()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getBottom()I

    move-result v8

    invoke-virtual {p0, v2, v6, v7, v8}, Lcom/android/quickstep/views/RecentsView;->layout(IIII)V

    .end local v4    # "wasEmpty":Z
    .end local v5    # "taskView":Lcom/android/quickstep/views/TaskView;
    goto :goto_3

    .line 2307
    :cond_5
    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2308
    aget-object v2, p1, v3

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v0

    goto :goto_4

    .line 2307
    :cond_6
    :goto_3
    nop

    .line 2311
    :goto_4
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    .line 2312
    .local v2, "runningTaskTileHidden":Z
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    .line 2313
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    .line 2314
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 2315
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    .line 2316
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    .line 2318
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    .line 2319
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    .line 2322
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    .line 2323
    return-void
.end method

.method private snapToPageRelative(IIZ)Z
    .locals 2
    .param p1, "pageCount"    # I
    .param p2, "delta"    # I
    .param p3, "cycle"    # Z

    .line 3471
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 3472
    return v0

    .line 3474
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v1

    add-int/2addr v1, p2

    .line 3475
    .local v1, "newPageUnbound":I
    if-nez p3, :cond_2

    if-ltz v1, :cond_1

    if-lt v1, p1, :cond_2

    .line 3476
    :cond_1
    return v0

    .line 3478
    :cond_2
    add-int v0, v1, p1

    rem-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->snapToPage(I)Z

    .line 3479
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3480
    const/4 v0, 0x1

    return v0
.end method

.method private switchToScreenshotInternal(Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .line 4939
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 4940
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_0

    .line 4941
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4942
    return-void

    .line 4945
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setShowScreenshot(Z)V

    .line 4947
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 4948
    .local v4, "container":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    if-nez v4, :cond_1

    .line 4949
    goto :goto_1

    .line 4952
    :cond_1
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 4953
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v5, v6}, Lcom/android/quickstep/RecentsAnimationController;->screenshotTask(I)Lcom/android/systemui/shared/recents/model/ThumbnailData;

    move-result-object v5

    .line 4954
    .local v5, "td":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v6

    .line 4955
    .local v6, "thumbnailView":Lcom/android/quickstep/views/TaskThumbnailView;
    if-eqz v5, :cond_2

    .line 4956
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    goto :goto_1

    .line 4958
    :cond_2
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    .line 4947
    .end local v4    # "container":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .end local v5    # "td":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .end local v6    # "thumbnailView":Lcom/android/quickstep/views/TaskThumbnailView;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4961
    :cond_3
    invoke-static {v0, p1}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    .line 4962
    return-void
.end method

.method private unloadVisibleTaskData(I)V
    .locals 3
    .param p1, "dataChanges"    # I

    .line 1968
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1969
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1970
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 1971
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v1, :cond_0

    .line 1972
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    .line 1968
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1976
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 1977
    return-void
.end method

.method private updateActionsViewFocusedScroll()V
    .locals 3

    .line 1833
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1834
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isFocusedTaskInExpectedScrollPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1836
    .local v0, "actionsViewAlphaValue":F
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimator:Landroid/animation/ObjectAnimator;

    .line 1837
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsViewAlphaAnimatorFinalValue:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_2

    .line 1839
    :cond_1
    const-wide/16 v1, 0x12c

    invoke-direct {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->animateActionsViewAlpha(FJ)V

    .line 1843
    .end local v0    # "actionsViewAlphaValue":F
    :cond_2
    return-void
.end method

.method private updateChildTaskOrientations()V
    .locals 3

    .line 2178
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2179
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 2178
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2181
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/16 v1, 0x800

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskMenuView;

    .line 2182
    .local v0, "tv":Lcom/android/quickstep/views/TaskMenuView;
    if-eqz v0, :cond_1

    .line 2183
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskMenuView;->onRotationChanged()V

    .line 2185
    :cond_1
    return-void
.end method

.method private updateCurrentTaskActionsVisibility()V
    .locals 4

    .line 3342
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/quickstep/views/GroupedTaskView;

    .line 3343
    .local v0, "isCurrentSplit":Z
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    .line 3344
    if-eqz v0, :cond_0

    .line 3345
    return-void

    .line 3347
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 3348
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 3347
    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/OverviewActionsView;->setSplitButtonVisible(Z)V

    .line 3349
    return-void
.end method

.method private updateDeadZoneRects()V
    .locals 7

    .line 4188
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4189
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0}, Lcom/android/quickstep/views/ClearAllButton;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 4190
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->recents_clear_all_deadzone_vertical_margin:I

    .line 4191
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4192
    .local v0, "verticalMargin":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/ClearAllButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 4193
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPaddingRight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    neg-int v3, v0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->inset(II)V

    .line 4197
    .end local v0    # "verticalMargin":I
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 4198
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 4199
    .local v0, "count":I
    if-lez v0, :cond_1

    .line 4200
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 4201
    .local v1, "taskView":Landroid/view/View;
    add-int/lit8 v2, v0, -0x1

    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskView;->getHitRect(Landroid/graphics/Rect;)V

    .line 4202
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    .line 4203
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 4202
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    .line 4205
    .end local v1    # "taskView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private updateEmptyStateUi(Z)V
    .locals 8
    .param p1, "sizeChanged"    # Z

    .line 4208
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 4209
    .local v0, "hasValidSize":Z
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 4210
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    .line 4211
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 4214
    :cond_1
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    if-nez v2, :cond_2

    .line 4215
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v3

    .line 4216
    .local v2, "availableWidth":I
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-static {v3, v1, v4, v5, v2}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 4218
    invoke-virtual {v1, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 4219
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    .line 4220
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    .line 4221
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 4223
    .local v1, "totalHeight":I
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v1

    div-int/lit8 v3, v3, 0x2

    .line 4224
    .local v3, "top":I
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 4225
    .local v4, "left":I
    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    .line 4226
    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v7, v3

    .line 4225
    invoke-virtual {v5, v4, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4228
    .end local v1    # "totalHeight":I
    .end local v2    # "availableWidth":I
    .end local v3    # "top":I
    .end local v4    # "left":I
    :cond_2
    return-void
.end method

.method private updateEnabledOverlays()V
    .locals 5

    .line 4880
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverlayEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 4881
    .local v0, "overlayEnabledPage":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    .line 4882
    .local v1, "taskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 4883
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-ne v2, v0, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/TaskView;->setOverlayEnabled(Z)V

    .line 4882
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 4885
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method private updateGridProperties()V
    .locals 2

    .line 2404
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-direct {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(ZI)V

    .line 2405
    return-void
.end method

.method private updateGridProperties(Z)V
    .locals 1
    .param p1, "isTaskDismissal"    # Z

    .line 2416
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(ZI)V

    .line 2417
    return-void
.end method

.method private updateGridProperties(ZI)V
    .locals 31
    .param p1, "isTaskDismissal"    # Z
    .param p2, "startRebalanceAfter"    # I

    .line 2431
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    .line 2432
    .local v1, "taskCount":I
    if-nez v1, :cond_0

    .line 2433
    return-void

    .line 2436
    :cond_0
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 2438
    .local v2, "taskTopMargin":I
    const/4 v3, 0x0

    .line 2439
    .local v3, "topRowWidth":I
    const/4 v4, 0x0

    .line 2440
    .local v4, "bottomRowWidth":I
    const/4 v5, 0x0

    .line 2441
    .local v5, "topAccumulatedTranslationX":F
    const/4 v6, 0x0

    .line 2445
    .local v6, "bottomAccumulatedTranslationX":F
    new-instance v7, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v7}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 2446
    .local v7, "topSet":Lcom/android/launcher3/util/IntSet;
    new-instance v8, Lcom/android/launcher3/util/IntSet;

    invoke-direct {v8}, Lcom/android/launcher3/util/IntSet;-><init>()V

    .line 2449
    .local v8, "bottomSet":Lcom/android/launcher3/util/IntSet;
    new-array v9, v1, [F

    .line 2451
    .local v9, "gridTranslations":[F
    const v10, 0x7fffffff

    .line 2452
    .local v10, "focusedTaskIndex":I
    const/4 v11, 0x0

    .line 2453
    .local v11, "focusedTaskShift":I
    const/4 v12, 0x0

    .line 2454
    .local v12, "focusedTaskWidthAndSpacing":I
    const/4 v13, 0x0

    .line 2455
    .local v13, "snappedTaskRowWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v14

    .line 2456
    .local v14, "snappedPage":I
    invoke-virtual {v0, v14}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v15

    .line 2457
    .local v15, "snappedTaskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getHomeTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v16

    .line 2458
    .local v16, "homeTaskView":Lcom/android/quickstep/views/TaskView;
    const/16 v17, 0x0

    .line 2460
    .local v17, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    if-nez p1, :cond_1

    .line 2461
    move/from16 v18, v3

    .end local v3    # "topRowWidth":I
    .local v18, "topRowWidth":I
    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v3}, Lcom/android/launcher3/util/IntSet;->clear()V

    goto :goto_0

    .line 2460
    .end local v18    # "topRowWidth":I
    .restart local v3    # "topRowWidth":I
    :cond_1
    move/from16 v18, v3

    .line 2463
    .end local v3    # "topRowWidth":I
    .restart local v18    # "topRowWidth":I
    :goto_0
    const/4 v3, 0x0

    move/from16 v30, v5

    move v5, v4

    move/from16 v4, v18

    move-object/from16 v18, v17

    move/from16 v17, v13

    move v13, v12

    move v12, v11

    move v11, v10

    move v10, v6

    move/from16 v6, v30

    .local v3, "i":I
    .local v4, "topRowWidth":I
    .local v5, "bottomRowWidth":I
    .local v6, "topAccumulatedTranslationX":F
    .local v10, "bottomAccumulatedTranslationX":F
    .local v11, "focusedTaskIndex":I
    .local v12, "focusedTaskShift":I
    .local v13, "focusedTaskWidthAndSpacing":I
    .local v17, "snappedTaskRowWidth":I
    .local v18, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    :goto_1
    move/from16 v19, v14

    .end local v14    # "snappedPage":I
    .local v19, "snappedPage":I
    if-ge v3, v1, :cond_16

    .line 2464
    invoke-direct {v0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v14

    .line 2465
    .local v14, "taskView":Lcom/android/quickstep/views/TaskView;
    move/from16 v22, v1

    .end local v1    # "taskCount":I
    .local v22, "taskCount":I
    invoke-virtual {v14}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v23, v10

    .end local v10    # "bottomAccumulatedTranslationX":F
    .local v23, "bottomAccumulatedTranslationX":F
    iget v10, v0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    add-int/2addr v1, v10

    .line 2469
    .local v1, "taskWidthAndSpacing":I
    invoke-virtual {v14}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 2470
    add-int/2addr v4, v1

    .line 2471
    add-int/2addr v5, v1

    .line 2473
    move v10, v3

    .line 2474
    .end local v11    # "focusedTaskIndex":I
    .local v10, "focusedTaskIndex":I
    move v11, v1

    .line 2475
    .end local v13    # "focusedTaskWidthAndSpacing":I
    .local v11, "focusedTaskWidthAndSpacing":I
    aget v13, v9, v3

    move/from16 v20, v4

    .end local v4    # "topRowWidth":I
    .local v20, "topRowWidth":I
    int-to-float v4, v12

    add-float/2addr v13, v4

    aput v13, v9, v3

    .line 2476
    aget v4, v9, v3

    iget-boolean v13, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v13, :cond_2

    int-to-float v13, v1

    goto :goto_2

    :cond_2
    neg-int v13, v1

    int-to-float v13, v13

    :goto_2
    add-float/2addr v4, v13

    aput v4, v9, v3

    .line 2479
    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v2

    .line 2480
    invoke-virtual {v14}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v13

    int-to-float v4, v4

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v4, v13

    .line 2479
    invoke-virtual {v14, v4}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    .line 2482
    if-ne v14, v15, :cond_3

    .line 2484
    move v4, v1

    move/from16 v24, v2

    move/from16 v17, v4

    move v13, v11

    move/from16 v4, v20

    move v11, v10

    move/from16 v10, v23

    .end local v17    # "snappedTaskRowWidth":I
    .local v4, "snappedTaskRowWidth":I
    goto/16 :goto_12

    .line 2482
    .end local v4    # "snappedTaskRowWidth":I
    .restart local v17    # "snappedTaskRowWidth":I
    :cond_3
    move/from16 v24, v2

    move v13, v11

    move/from16 v4, v20

    move v11, v10

    move/from16 v10, v23

    goto/16 :goto_12

    .line 2487
    .end local v10    # "focusedTaskIndex":I
    .end local v20    # "topRowWidth":I
    .local v4, "topRowWidth":I
    .local v11, "focusedTaskIndex":I
    .restart local v13    # "focusedTaskWidthAndSpacing":I
    :cond_4
    if-le v3, v11, :cond_6

    .line 2489
    aget v10, v9, v3

    .line 2490
    move/from16 v24, v2

    .end local v2    # "taskTopMargin":I
    .local v24, "taskTopMargin":I
    iget-boolean v2, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v2, :cond_5

    int-to-float v2, v13

    goto :goto_3

    :cond_5
    neg-int v2, v13

    int-to-float v2, v2

    :goto_3
    add-float/2addr v10, v2

    aput v10, v9, v3

    goto :goto_5

    .line 2494
    .end local v24    # "taskTopMargin":I
    .restart local v2    # "taskTopMargin":I
    :cond_6
    move/from16 v24, v2

    .end local v2    # "taskTopMargin":I
    .restart local v24    # "taskTopMargin":I
    iget-boolean v2, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v2, :cond_7

    move v2, v1

    goto :goto_4

    :cond_7
    neg-int v2, v1

    :goto_4
    add-int/2addr v12, v2

    .line 2496
    :goto_5
    invoke-virtual {v14}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v2

    .line 2500
    .local v2, "taskViewId":I
    if-eqz p1, :cond_a

    .line 2501
    move/from16 v10, p2

    if-le v3, v10, :cond_9

    .line 2502
    iget-object v10, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v10, v2}, Lcom/android/launcher3/util/IntSet;->remove(I)V

    .line 2503
    if-gt v4, v5, :cond_8

    const/16 v20, 0x1

    goto :goto_6

    :cond_8
    const/16 v20, 0x0

    :goto_6
    move/from16 v10, v20

    .local v10, "isTopRow":Z
    goto :goto_8

    .line 2505
    .end local v10    # "isTopRow":Z
    :cond_9
    iget-object v10, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v10, v2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v10

    .restart local v10    # "isTopRow":Z
    goto :goto_8

    .line 2508
    .end local v10    # "isTopRow":Z
    :cond_a
    if-gt v4, v5, :cond_b

    const/16 v20, 0x1

    goto :goto_7

    :cond_b
    const/16 v20, 0x0

    :goto_7
    move/from16 v10, v20

    .line 2511
    .restart local v10    # "isTopRow":Z
    :goto_8
    if-eqz v10, :cond_10

    .line 2512
    if-eqz v16, :cond_c

    if-nez v18, :cond_c

    .line 2514
    move-object/from16 v18, v14

    goto :goto_9

    .line 2516
    :cond_c
    add-int/2addr v4, v1

    .line 2518
    :goto_9
    invoke-virtual {v7, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 2519
    move/from16 v20, v4

    .end local v4    # "topRowWidth":I
    .restart local v20    # "topRowWidth":I
    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v4, v2}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 2521
    iget v4, v0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    invoke-virtual {v14, v4}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    .line 2524
    const/4 v4, 0x0

    .line 2525
    .local v4, "widthOffset":F
    add-int/lit8 v21, v3, -0x1

    move/from16 v25, v2

    move/from16 v2, v21

    .local v2, "j":I
    .local v25, "taskViewId":I
    :goto_a
    invoke-virtual {v7, v2}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v21

    if-nez v21, :cond_e

    if-ltz v2, :cond_e

    .line 2526
    if-ne v2, v11, :cond_d

    .line 2527
    move/from16 v26, v12

    move/from16 v27, v13

    goto :goto_b

    .line 2529
    :cond_d
    invoke-direct {v0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v21

    move/from16 v26, v12

    .end local v12    # "focusedTaskShift":I
    .local v26, "focusedTaskShift":I
    invoke-virtual/range {v21 .. v21}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iget v12, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v27, v13

    .end local v13    # "focusedTaskWidthAndSpacing":I
    .local v27, "focusedTaskWidthAndSpacing":I
    iget v13, v0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    add-int/2addr v12, v13

    int-to-float v12, v12

    add-float/2addr v4, v12

    .line 2525
    :goto_b
    add-int/lit8 v2, v2, -0x1

    move/from16 v12, v26

    move/from16 v13, v27

    goto :goto_a

    .end local v26    # "focusedTaskShift":I
    .end local v27    # "focusedTaskWidthAndSpacing":I
    .restart local v12    # "focusedTaskShift":I
    .restart local v13    # "focusedTaskWidthAndSpacing":I
    :cond_e
    move/from16 v26, v12

    move/from16 v27, v13

    .line 2532
    .end local v2    # "j":I
    .end local v12    # "focusedTaskShift":I
    .end local v13    # "focusedTaskWidthAndSpacing":I
    .restart local v26    # "focusedTaskShift":I
    .restart local v27    # "focusedTaskWidthAndSpacing":I
    iget-boolean v2, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v2, :cond_f

    move v2, v4

    goto :goto_c

    :cond_f
    neg-float v2, v4

    .line 2533
    .local v2, "currentTaskTranslationX":F
    :goto_c
    aget v12, v9, v3

    add-float v13, v6, v2

    add-float/2addr v12, v13

    aput v12, v9, v3

    .line 2534
    add-float/2addr v6, v2

    .line 2535
    .end local v2    # "currentTaskTranslationX":F
    .end local v4    # "widthOffset":F
    move/from16 v28, v1

    move/from16 v4, v20

    goto :goto_10

    .line 2536
    .end local v20    # "topRowWidth":I
    .end local v25    # "taskViewId":I
    .end local v26    # "focusedTaskShift":I
    .end local v27    # "focusedTaskWidthAndSpacing":I
    .local v2, "taskViewId":I
    .local v4, "topRowWidth":I
    .restart local v12    # "focusedTaskShift":I
    .restart local v13    # "focusedTaskWidthAndSpacing":I
    :cond_10
    move/from16 v25, v2

    move/from16 v26, v12

    move/from16 v27, v13

    .end local v2    # "taskViewId":I
    .end local v12    # "focusedTaskShift":I
    .end local v13    # "focusedTaskWidthAndSpacing":I
    .restart local v25    # "taskViewId":I
    .restart local v26    # "focusedTaskShift":I
    .restart local v27    # "focusedTaskWidthAndSpacing":I
    add-int/2addr v5, v1

    .line 2537
    invoke-virtual {v8, v3}, Lcom/android/launcher3/util/IntSet;->add(I)V

    .line 2540
    iget v2, v0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    iget v12, v0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    add-float/2addr v2, v12

    invoke-virtual {v14, v2}, Lcom/android/quickstep/views/TaskView;->setGridTranslationY(F)V

    .line 2543
    const/4 v2, 0x0

    .line 2544
    .local v2, "widthOffset":F
    add-int/lit8 v12, v3, -0x1

    .local v12, "j":I
    :goto_d
    invoke-virtual {v8, v12}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v13

    if-nez v13, :cond_12

    if-ltz v12, :cond_12

    .line 2545
    if-ne v12, v11, :cond_11

    .line 2546
    move/from16 v28, v1

    goto :goto_e

    .line 2548
    :cond_11
    invoke-direct {v0, v12}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v28, v1

    .end local v1    # "taskWidthAndSpacing":I
    .local v28, "taskWidthAndSpacing":I
    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    add-int/2addr v13, v1

    int-to-float v1, v13

    add-float/2addr v2, v1

    .line 2544
    :goto_e
    add-int/lit8 v12, v12, -0x1

    move/from16 v1, v28

    goto :goto_d

    .end local v28    # "taskWidthAndSpacing":I
    .restart local v1    # "taskWidthAndSpacing":I
    :cond_12
    move/from16 v28, v1

    .line 2551
    .end local v1    # "taskWidthAndSpacing":I
    .end local v12    # "j":I
    .restart local v28    # "taskWidthAndSpacing":I
    iget-boolean v1, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v1, :cond_13

    move v1, v2

    goto :goto_f

    :cond_13
    neg-float v1, v2

    .line 2552
    .local v1, "currentTaskTranslationX":F
    :goto_f
    aget v12, v9, v3

    add-float v13, v23, v1

    add-float/2addr v12, v13

    aput v12, v9, v3

    .line 2553
    add-float v12, v23, v1

    move/from16 v23, v12

    .line 2555
    .end local v1    # "currentTaskTranslationX":F
    .end local v2    # "widthOffset":F
    :goto_10
    if-ne v14, v15, :cond_15

    .line 2556
    if-eqz v10, :cond_14

    move v1, v4

    goto :goto_11

    :cond_14
    move v1, v5

    :goto_11
    move/from16 v17, v1

    move/from16 v10, v23

    move/from16 v12, v26

    move/from16 v13, v27

    .end local v17    # "snappedTaskRowWidth":I
    .local v1, "snappedTaskRowWidth":I
    goto :goto_12

    .line 2555
    .end local v1    # "snappedTaskRowWidth":I
    .restart local v17    # "snappedTaskRowWidth":I
    :cond_15
    move/from16 v10, v23

    move/from16 v12, v26

    move/from16 v13, v27

    .line 2463
    .end local v14    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v23    # "bottomAccumulatedTranslationX":F
    .end local v25    # "taskViewId":I
    .end local v26    # "focusedTaskShift":I
    .end local v27    # "focusedTaskWidthAndSpacing":I
    .end local v28    # "taskWidthAndSpacing":I
    .local v10, "bottomAccumulatedTranslationX":F
    .local v12, "focusedTaskShift":I
    .restart local v13    # "focusedTaskWidthAndSpacing":I
    :goto_12
    add-int/lit8 v3, v3, 0x1

    move/from16 v14, v19

    move/from16 v1, v22

    move/from16 v2, v24

    goto/16 :goto_1

    .end local v22    # "taskCount":I
    .end local v24    # "taskTopMargin":I
    .local v1, "taskCount":I
    .local v2, "taskTopMargin":I
    :cond_16
    move/from16 v22, v1

    move/from16 v24, v2

    move/from16 v23, v10

    move/from16 v27, v13

    .line 2564
    .end local v1    # "taskCount":I
    .end local v2    # "taskTopMargin":I
    .end local v3    # "i":I
    .end local v10    # "bottomAccumulatedTranslationX":F
    .end local v13    # "focusedTaskWidthAndSpacing":I
    .restart local v22    # "taskCount":I
    .restart local v23    # "bottomAccumulatedTranslationX":F
    .restart local v24    # "taskTopMargin":I
    .restart local v27    # "focusedTaskWidthAndSpacing":I
    const/4 v1, 0x0

    .line 2565
    .local v1, "snappedTaskNonGridScrollAdjustment":F
    const/4 v2, 0x0

    .line 2566
    .local v2, "snappedTaskGridTranslationX":F
    if-eqz v15, :cond_17

    .line 2567
    const/4 v3, 0x0

    const/4 v10, 0x1

    invoke-virtual {v15, v10, v3}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(ZZ)F

    move-result v1

    .line 2569
    aget v2, v9, v19

    .line 2573
    :cond_17
    add-int/lit8 v3, v22, -0x1

    invoke-virtual {v7, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 2574
    move v3, v6

    goto :goto_13

    :cond_18
    move/from16 v3, v23

    .line 2578
    .local v3, "clearAllAccumulatedTranslation":F
    :goto_13
    const/4 v10, 0x0

    .line 2579
    .local v10, "shorterRowCompensation":F
    if-gt v4, v5, :cond_19

    .line 2580
    add-int/lit8 v13, v22, -0x1

    invoke-virtual {v7, v13}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 2581
    sub-int v13, v5, v4

    int-to-float v10, v13

    goto :goto_14

    .line 2584
    :cond_19
    add-int/lit8 v13, v22, -0x1

    invoke-virtual {v8, v13}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 2585
    sub-int v13, v4, v5

    int-to-float v10, v13

    .line 2589
    :cond_1a
    :goto_14
    iget-boolean v13, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v13, :cond_1b

    neg-float v13, v10

    goto :goto_15

    :cond_1b
    move v13, v10

    .line 2593
    .local v13, "clearAllShorterRowCompensation":F
    :goto_15
    const/4 v14, 0x0

    .line 2594
    .local v14, "clearAllShortTotalCompensation":F
    move/from16 v20, v6

    .end local v6    # "topAccumulatedTranslationX":F
    .local v20, "topAccumulatedTranslationX":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2595
    .local v6, "longRowWidth":I
    move/from16 v21, v4

    .end local v4    # "topRowWidth":I
    .local v21, "topRowWidth":I
    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v6, v4, :cond_1d

    .line 2596
    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v4, v6

    int-to-float v4, v4

    .line 2598
    .local v4, "shortTotalCompensation":F
    move/from16 v25, v5

    .end local v5    # "bottomRowWidth":I
    .local v25, "bottomRowWidth":I
    iget-boolean v5, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v5, :cond_1c

    neg-float v5, v4

    goto :goto_16

    :cond_1c
    move v5, v4

    :goto_16
    move v14, v5

    .line 2599
    iget-object v5, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    goto :goto_17

    .line 2595
    .end local v4    # "shortTotalCompensation":F
    .end local v25    # "bottomRowWidth":I
    .restart local v5    # "bottomRowWidth":I
    :cond_1d
    move/from16 v25, v5

    .line 2602
    .end local v5    # "bottomRowWidth":I
    .restart local v25    # "bottomRowWidth":I
    :goto_17
    add-float v4, v3, v13

    add-float/2addr v4, v14

    add-float/2addr v4, v1

    .line 2605
    .local v4, "clearAllTotalTranslationX":F
    move/from16 v5, v22

    .end local v22    # "taskCount":I
    .local v5, "taskCount":I
    if-ge v11, v5, :cond_1f

    .line 2607
    nop

    .line 2608
    move/from16 v22, v3

    .end local v3    # "clearAllAccumulatedTranslation":F
    .local v22, "clearAllAccumulatedTranslation":F
    iget-boolean v3, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v3, :cond_1e

    move-object/from16 v26, v7

    move/from16 v3, v27

    .end local v7    # "topSet":Lcom/android/launcher3/util/IntSet;
    .end local v27    # "focusedTaskWidthAndSpacing":I
    .local v3, "focusedTaskWidthAndSpacing":I
    .local v26, "topSet":Lcom/android/launcher3/util/IntSet;
    int-to-float v7, v3

    goto :goto_18

    .end local v3    # "focusedTaskWidthAndSpacing":I
    .end local v26    # "topSet":Lcom/android/launcher3/util/IntSet;
    .restart local v7    # "topSet":Lcom/android/launcher3/util/IntSet;
    .restart local v27    # "focusedTaskWidthAndSpacing":I
    :cond_1e
    move-object/from16 v26, v7

    move/from16 v3, v27

    .end local v7    # "topSet":Lcom/android/launcher3/util/IntSet;
    .end local v27    # "focusedTaskWidthAndSpacing":I
    .restart local v3    # "focusedTaskWidthAndSpacing":I
    .restart local v26    # "topSet":Lcom/android/launcher3/util/IntSet;
    neg-int v7, v3

    int-to-float v7, v7

    :goto_18
    add-float/2addr v4, v7

    goto :goto_19

    .line 2605
    .end local v22    # "clearAllAccumulatedTranslation":F
    .end local v26    # "topSet":Lcom/android/launcher3/util/IntSet;
    .local v3, "clearAllAccumulatedTranslation":F
    .restart local v7    # "topSet":Lcom/android/launcher3/util/IntSet;
    .restart local v27    # "focusedTaskWidthAndSpacing":I
    :cond_1f
    move/from16 v22, v3

    move-object/from16 v26, v7

    move/from16 v3, v27

    .line 2613
    .end local v7    # "topSet":Lcom/android/launcher3/util/IntSet;
    .end local v27    # "focusedTaskWidthAndSpacing":I
    .local v3, "focusedTaskWidthAndSpacing":I
    .restart local v22    # "clearAllAccumulatedTranslation":F
    .restart local v26    # "topSet":Lcom/android/launcher3/util/IntSet;
    :goto_19
    if-eqz v15, :cond_21

    .line 2614
    sub-int v7, v6, v17

    move/from16 v27, v3

    .end local v3    # "focusedTaskWidthAndSpacing":I
    .restart local v27    # "focusedTaskWidthAndSpacing":I
    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    add-int/2addr v7, v3

    .line 2616
    .local v7, "distanceFromClearAll":I
    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    .line 2617
    move/from16 v28, v6

    .end local v6    # "longRowWidth":I
    .local v28, "longRowWidth":I
    invoke-virtual {v15}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, v6

    iget-object v6, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    .line 2618
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    move-object/from16 v29, v8

    .end local v8    # "bottomSet":Lcom/android/launcher3/util/IntSet;
    .local v29, "bottomSet":Lcom/android/launcher3/util/IntSet;
    iget v8, v0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    .line 2619
    .local v3, "minimumDistance":I
    if-ge v7, v3, :cond_22

    .line 2620
    sub-int v6, v3, v7

    .line 2621
    .local v6, "distanceDifference":I
    iget-boolean v8, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v8, :cond_20

    int-to-float v8, v6

    goto :goto_1a

    :cond_20
    neg-int v8, v6

    int-to-float v8, v8

    :goto_1a
    add-float/2addr v2, v8

    goto :goto_1b

    .line 2613
    .end local v7    # "distanceFromClearAll":I
    .end local v27    # "focusedTaskWidthAndSpacing":I
    .end local v28    # "longRowWidth":I
    .end local v29    # "bottomSet":Lcom/android/launcher3/util/IntSet;
    .local v3, "focusedTaskWidthAndSpacing":I
    .local v6, "longRowWidth":I
    .restart local v8    # "bottomSet":Lcom/android/launcher3/util/IntSet;
    :cond_21
    move/from16 v27, v3

    move/from16 v28, v6

    move-object/from16 v29, v8

    .line 2625
    .end local v3    # "focusedTaskWidthAndSpacing":I
    .end local v6    # "longRowWidth":I
    .end local v8    # "bottomSet":Lcom/android/launcher3/util/IntSet;
    .restart local v27    # "focusedTaskWidthAndSpacing":I
    .restart local v28    # "longRowWidth":I
    .restart local v29    # "bottomSet":Lcom/android/launcher3/util/IntSet;
    :cond_22
    :goto_1b
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v5, :cond_23

    .line 2626
    invoke-direct {v0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    .line 2627
    .local v6, "taskView":Lcom/android/quickstep/views/TaskView;
    aget v7, v9, v3

    sub-float/2addr v7, v2

    add-float/2addr v7, v1

    invoke-virtual {v6, v7}, Lcom/android/quickstep/views/TaskView;->setGridTranslationX(F)V

    .line 2625
    .end local v6    # "taskView":Lcom/android/quickstep/views/TaskView;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 2631
    .end local v3    # "i":I
    :cond_23
    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    sub-float v6, v4, v2

    invoke-virtual {v3, v6}, Lcom/android/quickstep/views/ClearAllButton;->setGridTranslationPrimary(F)V

    .line 2633
    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    .line 2634
    iget-boolean v6, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v6, :cond_24

    iget-object v6, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1d

    .line 2635
    :cond_24
    iget-object v6, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    .line 2633
    :goto_1d
    invoke-virtual {v3, v6}, Lcom/android/quickstep/views/ClearAllButton;->setGridScrollOffset(F)V

    .line 2637
    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mGridProgress:F

    invoke-direct {v0, v3}, Lcom/android/quickstep/views/RecentsView;->setGridProgress(F)V

    .line 2638
    return-void
.end method

.method private updateOrientationHandler()V
    .locals 1

    .line 1671
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler(Z)V

    .line 1672
    return-void
.end method

.method private updateOrientationHandler(Z)V
    .locals 6
    .param p1, "forceRecreateDragLayerControllers"    # Z

    .line 1676
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1677
    .local v0, "oldOrientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1679
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRecentsRtlSetting(Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    .line 1680
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 1681
    move v1, v3

    goto :goto_0

    .line 1682
    :cond_0
    move v1, v2

    .line 1680
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setLayoutDirection(I)V

    .line 1683
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v4, :cond_1

    .line 1684
    move v4, v2

    goto :goto_1

    .line 1685
    :cond_1
    move v4, v3

    .line 1683
    :goto_1
    invoke-virtual {v1, v4}, Lcom/android/quickstep/views/ClearAllButton;->setLayoutDirection(I)V

    .line 1686
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/quickstep/views/ClearAllButton;->setRotation(F)V

    .line 1688
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 1689
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1691
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    .line 1692
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->onOrientationChanged()V

    .line 1695
    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getTouchRotation()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 1696
    invoke-virtual {v1}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v3

    .line 1697
    .local v1, "isInLandscape":Z
    :goto_3
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 1698
    invoke-virtual {v5}, Lcom/android/quickstep/util/RecentsOrientedState;->isRecentsActivityRotationAllowed()Z

    move-result v5

    if-nez v5, :cond_6

    if-eqz v1, :cond_6

    move v2, v3

    .line 1697
    :cond_6
    invoke-virtual {v4, v3, v2}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    .line 1701
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    .line 1704
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateSizeAndPadding()V

    .line 1706
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->requestLayout()V

    .line 1708
    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 1709
    return-void
.end method

.method private updatePageOffsets()V
    .locals 22

    .line 3745
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    .line 3746
    .local v1, "offset":F
    sget-object v2, Lcom/android/launcher3/anim/Interpolators;->ACCEL_0_75:Landroid/view/animation/Interpolator;

    iget v3, v0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-interface {v2, v3}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    .line 3747
    .local v2, "modalOffset":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v3

    .line 3749
    .local v3, "count":I
    iget v4, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    iget-boolean v4, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-nez v4, :cond_0

    goto :goto_0

    .line 3750
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v4, 0x0

    .line 3751
    .local v4, "runningTask":Lcom/android/quickstep/views/TaskView;
    :goto_1
    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 3752
    .local v5, "midpoint":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v6

    .line 3754
    .local v6, "modalMidpoint":I
    const/4 v7, 0x0

    .line 3755
    .local v7, "midpointOffsetSize":F
    add-int/lit8 v8, v5, -0x1

    if-ltz v8, :cond_3

    .line 3756
    add-int/lit8 v8, v5, -0x1

    invoke-direct {v0, v8, v5, v1}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v8

    goto :goto_3

    .line 3757
    :cond_3
    const/4 v8, 0x0

    :goto_3
    nop

    .line 3758
    .local v8, "leftOffsetSize":F
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v3, :cond_4

    .line 3759
    add-int/lit8 v10, v5, 0x1

    invoke-direct {v0, v10, v5, v1}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v10

    goto :goto_4

    .line 3760
    :cond_4
    const/4 v10, 0x0

    :goto_4
    nop

    .line 3762
    .local v10, "rightOffsetSize":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v11

    .line 3763
    .local v11, "showAsGrid":Z
    const/4 v12, 0x0

    .line 3764
    .local v12, "modalMidpointOffsetSize":F
    const/4 v13, 0x0

    .line 3765
    .local v13, "modalLeftOffsetSize":F
    const/4 v14, 0x0

    .line 3766
    .local v14, "modalRightOffsetSize":F
    const/4 v15, 0x0

    .line 3768
    .local v15, "gridOffsetSize":F
    if-eqz v11, :cond_7

    .line 3771
    if-nez v6, :cond_5

    const/16 v16, 0x1

    goto :goto_5

    :cond_5
    const/16 v16, 0x0

    :goto_5
    move/from16 v17, v16

    .line 3772
    .local v17, "referenceIndex":I
    move/from16 v9, v17

    .end local v17    # "referenceIndex":I
    .local v9, "referenceIndex":I
    if-ge v9, v3, :cond_6

    .line 3773
    invoke-direct {v0, v9, v6, v2}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v16

    goto :goto_6

    .line 3774
    :cond_6
    const/16 v16, 0x0

    :goto_6
    move/from16 v15, v16

    .line 3775
    .end local v9    # "referenceIndex":I
    goto :goto_9

    .line 3776
    :cond_7
    add-int/lit8 v9, v6, -0x1

    if-ltz v9, :cond_8

    .line 3777
    add-int/lit8 v9, v6, -0x1

    invoke-direct {v0, v9, v6, v2}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v9

    goto :goto_7

    .line 3778
    :cond_8
    const/4 v9, 0x0

    :goto_7
    move v13, v9

    .line 3779
    add-int/lit8 v9, v6, 0x1

    if-ge v9, v3, :cond_9

    .line 3780
    add-int/lit8 v9, v6, 0x1

    invoke-direct {v0, v9, v6, v2}, Lcom/android/quickstep/views/RecentsView;->getHorizontalOffsetSize(IIF)F

    move-result v9

    goto :goto_8

    .line 3781
    :cond_9
    const/4 v9, 0x0

    :goto_8
    move v14, v9

    .line 3784
    :goto_9
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_a
    if-ge v9, v3, :cond_11

    .line 3785
    if-ne v9, v5, :cond_a

    .line 3786
    move/from16 v16, v7

    goto :goto_b

    .line 3787
    :cond_a
    if-ge v9, v5, :cond_b

    .line 3788
    move/from16 v16, v8

    goto :goto_b

    .line 3789
    :cond_b
    move/from16 v16, v10

    :goto_b
    nop

    .line 3790
    .local v16, "translation":F
    if-ne v9, v6, :cond_c

    .line 3791
    move/from16 v17, v12

    goto :goto_c

    .line 3792
    :cond_c
    if-eqz v11, :cond_d

    .line 3793
    move/from16 v17, v15

    goto :goto_c

    .line 3794
    :cond_d
    if-ge v9, v6, :cond_e

    move/from16 v17, v13

    goto :goto_c

    :cond_e
    move/from16 v17, v14

    :goto_c
    nop

    .line 3795
    .local v17, "modalTranslation":F
    move/from16 v18, v1

    .end local v1    # "offset":F
    .local v18, "offset":F
    add-float v1, v16, v17

    .line 3796
    .local v1, "totalTranslation":F
    move/from16 v19, v2

    .end local v2    # "modalOffset":F
    .local v19, "modalOffset":F
    invoke-virtual {v0, v9}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3797
    .local v2, "child":Landroid/view/View;
    move/from16 v20, v3

    .end local v3    # "count":I
    .local v20, "count":I
    instance-of v3, v2, Lcom/android/quickstep/views/TaskView;

    if-eqz v3, :cond_f

    .line 3798
    move-object v3, v2

    check-cast v3, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v3

    goto :goto_d

    .line 3799
    :cond_f
    iget-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v3

    :goto_d
    nop

    .line 3800
    .local v3, "translationProperty":Landroid/util/FloatProperty;
    move-object/from16 v21, v4

    .end local v4    # "runningTask":Lcom/android/quickstep/views/TaskView;
    .local v21, "runningTask":Lcom/android/quickstep/views/TaskView;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 3801
    sget-object v4, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v4}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v4

    if-eqz v4, :cond_10

    iget-boolean v4, v0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v4, :cond_10

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v4

    if-ne v9, v4, :cond_10

    .line 3803
    new-instance v4, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda5;

    invoke-direct {v4, v1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda5;-><init>(F)V

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 3806
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    .line 3784
    .end local v1    # "totalTranslation":F
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "translationProperty":Landroid/util/FloatProperty;
    .end local v16    # "translation":F
    .end local v17    # "modalTranslation":F
    :cond_10
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move-object/from16 v4, v21

    goto :goto_a

    .line 3809
    .end local v9    # "i":I
    .end local v18    # "offset":F
    .end local v19    # "modalOffset":F
    .end local v20    # "count":I
    .end local v21    # "runningTask":Lcom/android/quickstep/views/TaskView;
    .local v1, "offset":F
    .local v2, "modalOffset":F
    .local v3, "count":I
    .restart local v4    # "runningTask":Lcom/android/quickstep/views/TaskView;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    .line 3810
    return-void
.end method

.method private updatePivots()V
    .locals 4

    .line 3733
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewSelectEnabled:Z

    if-eqz v0, :cond_0

    .line 3734
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setPivotX(F)V

    .line 3735
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setPivotY(F)V

    goto :goto_0

    .line 3737
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 3738
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    .line 3737
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    .line 3739
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setPivotX(F)V

    .line 3740
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setPivotY(F)V

    .line 3742
    :goto_0
    return-void
.end method

.method private updateSizeAndPadding()V
    .locals 6

    .line 1722
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1723
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    .line 1724
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    .line 1725
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskHeight:I

    .line 1727
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 1728
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/quickstep/views/RecentsView;->setPadding(IIII)V

    .line 1732
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridSize(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 1734
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/quickstep/BaseActivityInterface;->calculateGridTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    .line 1737
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    .line 1738
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    .line 1739
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/DeviceProfile;->overviewRowSpacing:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    .line 1743
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    .line 1744
    return-void
.end method

.method private updateTaskSize()V
    .locals 1

    .line 1750
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize(Z)V

    .line 1751
    return-void
.end method

.method private updateTaskSize(Z)V
    .locals 7
    .param p1, "isTaskDismissal"    # Z

    .line 1759
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 1760
    .local v0, "taskCount":I
    if-nez v0, :cond_0

    .line 1761
    return-void

    .line 1764
    :cond_0
    const/4 v1, 0x0

    .line 1765
    .local v1, "accumulatedTranslationX":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1766
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    .line 1767
    .local v3, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->updateTaskSize()V

    .line 1768
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 1769
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getSecondaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 1771
    nop

    .line 1772
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getNonGridScale()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v4, v5

    .line 1773
    .local v4, "widthDiff":F
    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    neg-float v5, v4

    :goto_1
    add-float/2addr v1, v5

    .line 1765
    .end local v3    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v4    # "widthDiff":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1776
    .end local v2    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/ClearAllButton;->setFullscreenTranslationPrimary(F)V

    .line 1778
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties(Z)V

    .line 1779
    return-void
.end method

.method private updateTaskStackListenerState()V
    .locals 2

    .line 1640
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1641
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1642
    .local v0, "handleTaskStackChanges":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-eq v0, v1, :cond_1

    .line 1643
    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    .line 1644
    if-eqz v0, :cond_1

    .line 1645
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->reloadIfNeeded()V

    .line 1648
    :cond_1
    return-void
.end method

.method private updateTaskViewsSnapshotRadius()V
    .locals 2

    .line 3917
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3918
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    .line 3917
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3920
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private vibrateForScroll()V
    .locals 6

    .line 1360
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1361
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/quickstep/views/RecentsView;->mScrollLastHapticTimestamp:J

    sub-long v2, v0, v2

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mScrollHapticMinGapMillis:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1362
    iput-wide v0, p0, Lcom/android/quickstep/views/RecentsView;->mScrollLastHapticTimestamp:J

    .line 1363
    sget-object v2, Lcom/android/quickstep/util/VibratorWrapper;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/util/VibratorWrapper;

    sget v3, Lcom/android/quickstep/views/RecentsView;->SCROLL_VIBRATION_PRIMITIVE:I

    const v4, 0x3f19999a    # 0.6f

    sget-object v5, Lcom/android/quickstep/views/RecentsView;->SCROLL_VIBRATION_FALLBACK:Landroid/os/VibrationEffect;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/quickstep/util/VibratorWrapper;->vibrate(IFLandroid/os/VibrationEffect;)V

    .line 1366
    :cond_0
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 4424
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    .local p1, "outChildren":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 4425
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4424
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 4427
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 5098
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5099
    return-void
.end method

.method public addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/launcher3/util/RunnableList;

    .line 987
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    if-nez v0, :cond_0

    .line 988
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    .line 990
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSideTaskLaunchCallback:Lcom/android/launcher3/util/RunnableList;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/launcher3/BaseDraggingActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/RunnableList;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/RunnableList;->add(Ljava/lang/Runnable;)V

    .line 991
    return-void
.end method

.method public animateUpTaskIconScale()V
    .locals 4

    .line 2389
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    .line 2390
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 2391
    .local v0, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2392
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 2393
    .local v2, "taskView":Lcom/android/quickstep/views/TaskView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskView;->setIconScaleAnimStartProgress(F)V

    .line 2394
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->animateIconScaleAndDimIntoView()V

    .line 2391
    .end local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2396
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected applyLoadPlan(Ljava/util/ArrayList;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/quickstep/util/GroupTask;",
            ">;)V"
        }
    .end annotation

    .line 1413
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    .local p1, "taskGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/quickstep/util/GroupTask;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v2, :cond_0

    .line 1414
    new-instance v3, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda3;

    invoke-direct {v3, v0, v1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/views/RecentsView;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 1415
    return-void

    .line 1418
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/quickstep/views/RecentsView;->mLoadPlanEverApplied:Z

    .line 1419
    if-eqz v1, :cond_15

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_b

    .line 1428
    :cond_1
    const/4 v3, -0x1

    .line 1429
    .local v3, "currentTaskId":I
    iget v4, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    .line 1430
    .local v4, "currentTaskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v4, :cond_2

    .line 1431
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    .line 1435
    :cond_2
    const/4 v5, 0x3

    invoke-direct {v0, v5}, Lcom/android/quickstep/views/RecentsView;->unloadVisibleTaskData(I)V

    .line 1438
    iget v5, v0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v5, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    .line 1442
    .local v5, "ignoreResetTaskView":Lcom/android/quickstep/views/TaskView;
    :goto_0
    iget v7, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-direct {v0, v7}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForTaskViewId(I)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v7, v7, v8

    .line 1443
    .local v7, "runningTaskId":I
    iget v9, v0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-direct {v0, v9}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForTaskViewId(I)[I

    move-result-object v9

    aget v9, v9, v8

    .line 1447
    .local v9, "focusedTaskId":I
    iget v10, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    .line 1448
    .local v10, "previousCurrentPage":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->removeAllViews()V

    .line 1451
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v2

    .local v11, "i":I
    :goto_1
    if-ltz v11, :cond_8

    .line 1452
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/quickstep/util/GroupTask;

    .line 1453
    .local v12, "groupTask":Lcom/android/quickstep/util/GroupTask;
    invoke-virtual {v12}, Lcom/android/quickstep/util/GroupTask;->hasMultipleTasks()Z

    move-result v13

    .line 1454
    .local v13, "hasMultipleTasks":Z
    invoke-direct {v0, v13}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromPool(Z)Lcom/android/quickstep/views/TaskView;

    move-result-object v14

    .line 1455
    .local v14, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v0, v14}, Lcom/android/quickstep/views/RecentsView;->addView(Landroid/view/View;)V

    .line 1457
    if-eqz v13, :cond_7

    .line 1458
    iget-object v15, v12, Lcom/android/quickstep/util/GroupTask;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    iget v15, v15, Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;->leftTopTaskId:I

    iget-object v2, v12, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v15, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v8

    .line 1460
    .local v2, "firstTaskIsLeftTopTask":Z
    :goto_2
    if-eqz v2, :cond_5

    iget-object v15, v12, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_3

    :cond_5
    iget-object v15, v12, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    .line 1461
    .local v15, "leftTopTask":Lcom/android/systemui/shared/recents/model/Task;
    :goto_3
    if-eqz v2, :cond_6

    iget-object v8, v12, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_4

    :cond_6
    iget-object v8, v12, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    .line 1462
    .local v8, "rightBottomTask":Lcom/android/systemui/shared/recents/model/Task;
    :goto_4
    move-object v6, v14

    check-cast v6, Lcom/android/quickstep/views/GroupedTaskView;

    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    move/from16 v16, v2

    .end local v2    # "firstTaskIsLeftTopTask":Z
    .local v16, "firstTaskIsLeftTopTask":Z
    iget-object v2, v12, Lcom/android/quickstep/util/GroupTask;->mStagedSplitBounds:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {v6, v15, v8, v1, v2}, Lcom/android/quickstep/views/GroupedTaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 1464
    .end local v8    # "rightBottomTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v15    # "leftTopTask":Lcom/android/systemui/shared/recents/model/Task;
    .end local v16    # "firstTaskIsLeftTopTask":Z
    goto :goto_5

    .line 1465
    :cond_7
    iget-object v1, v12, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v14, v1, v2}, Lcom/android/quickstep/views/TaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 1451
    .end local v12    # "groupTask":Lcom/android/quickstep/util/GroupTask;
    .end local v13    # "hasMultipleTasks":Z
    .end local v14    # "taskView":Lcom/android/quickstep/views/TaskView;
    :goto_5
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v8, 0x0

    goto :goto_1

    .line 1468
    .end local v11    # "i":I
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1469
    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->addView(Landroid/view/View;)V

    .line 1472
    :cond_9
    iget v1, v0, Lcom/android/quickstep/views/RecentsView;->mNextPage:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    const/4 v2, 0x1

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    move v1, v2

    .line 1473
    .local v1, "settlingOnNewTask":Z
    if-eqz v1, :cond_b

    .line 1475
    iput v10, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    goto :goto_7

    .line 1477
    :cond_b
    invoke-virtual {v0, v10}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 1481
    :goto_7
    invoke-virtual {v0, v9}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 1483
    .local v2, "newFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    if-nez v2, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v6

    if-lez v6, :cond_c

    .line 1484
    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 1486
    :cond_c
    if-eqz v2, :cond_d

    .line 1487
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v6

    goto :goto_8

    :cond_d
    const/4 v6, -0x1

    :goto_8
    iput v6, v0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    .line 1488
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskSize()V

    .line 1489
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateChildTaskOrientations()V

    .line 1491
    const/4 v6, 0x0

    .line 1492
    .local v6, "newRunningTaskView":Lcom/android/quickstep/views/TaskView;
    const/4 v8, -0x1

    if-eq v7, v8, :cond_f

    .line 1495
    invoke-virtual {v0, v7}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    .line 1496
    if-eqz v6, :cond_e

    .line 1497
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v11

    iput v11, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    goto :goto_9

    .line 1499
    :cond_e
    iput v8, v0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    .line 1503
    :cond_f
    :goto_9
    const/4 v11, -0x1

    .line 1504
    .local v11, "targetPage":I
    if-nez v1, :cond_11

    .line 1506
    if-eq v7, v8, :cond_10

    .line 1507
    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v11

    goto :goto_a

    .line 1508
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v8

    if-lez v8, :cond_12

    .line 1509
    const/4 v8, 0x0

    invoke-direct {v0, v8}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v11

    goto :goto_a

    .line 1511
    :cond_11
    const/4 v8, -0x1

    if-eq v3, v8, :cond_12

    .line 1512
    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    .line 1513
    if-eqz v4, :cond_12

    .line 1514
    invoke-virtual {v0, v4}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 1517
    :cond_12
    :goto_a
    const/4 v8, -0x1

    if-eq v11, v8, :cond_13

    iget v8, v0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    if-eq v8, v11, :cond_13

    .line 1518
    invoke-virtual {v0, v11}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 1521
    :cond_13
    iget v8, v0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    const/4 v12, -0x1

    if-eq v8, v12, :cond_14

    .line 1522
    invoke-virtual {v0, v8}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v8

    if-eq v8, v5, :cond_14

    .line 1526
    iput v12, v0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    .line 1528
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    .line 1529
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->onTaskStackUpdated()V

    .line 1530
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->updateEnabledOverlays()V

    .line 1531
    return-void

    .line 1420
    .end local v1    # "settlingOnNewTask":Z
    .end local v2    # "newFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v3    # "currentTaskId":I
    .end local v4    # "currentTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v5    # "ignoreResetTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v6    # "newRunningTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v7    # "runningTaskId":I
    .end local v9    # "focusedTaskId":I
    .end local v10    # "previousCurrentPage":I
    .end local v11    # "targetPage":I
    :cond_15
    :goto_b
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->removeTasksViewsAndClearAllButton()V

    .line 1421
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->onTaskStackUpdated()V

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->resetTouchState()V

    .line 1425
    return-void
.end method

.method public applySplitPrimaryScrollOffset()V
    .locals 4

    .line 3945
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    .line 3946
    .local v0, "taskSplitScrollOffsetPrimary":F
    const/4 v1, 0x0

    .line 3947
    .local v1, "clearAllSplitScrollOffsetPrimar":F
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitPlaceholderFirstInGrid()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3948
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    neg-int v2, v2

    :goto_0
    int-to-float v2, v2

    move v0, v2

    goto :goto_2

    .line 3949
    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitPlaceholderLastInGrid()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3951
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    neg-int v2, v2

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    :goto_1
    int-to-float v2, v2

    move v1, v2

    .line 3954
    :cond_3
    :goto_2
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 3955
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/quickstep/views/TaskView;->setSplitScrollOffsetPrimary(F)V

    .line 3954
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 3957
    .end local v2    # "i":I
    :cond_4
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/ClearAllButton;->setSplitSelectScrollOffsetPrimary(F)V

    .line 3958
    return-void
.end method

.method protected canLaunchFullscreenTask()Z
    .locals 1

    .line 904
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public cleanupRemoteTargets()V
    .locals 1

    .line 5080
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 5081
    return-void
.end method

.method public clearIgnoreResetTask(I)V
    .locals 1
    .param p1, "taskId"    # I

    .line 2713
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    if-ne v0, p1, :cond_0

    .line 2714
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    .line 2716
    :cond_0
    return-void
.end method

.method protected computeMaxScroll()I
    .locals 1

    .line 4655
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4656
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeMaxScroll()I

    move-result v0

    return v0

    .line 4659
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getLastViewIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v0

    return v0
.end method

.method protected computeMinScroll()I
    .locals 1

    .line 4646
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 4647
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeMinScroll()I

    move-result v0

    return v0

    .line 4650
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getLastViewIndex()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getFirstViewIndex()I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v0

    return v0
.end method

.method protected computeScrollHelper()Z
    .locals 4

    .line 1811
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->computeScrollHelper()Z

    move-result v0

    .line 1812
    .local v0, "scrolling":Z
    const/4 v1, 0x0

    .line 1813
    .local v1, "isFlingingFast":Z
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    .line 1814
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isHandlingTouch()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1815
    :cond_0
    if-eqz v0, :cond_2

    .line 1817
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v2

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mFastFlingVelocity:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    .line 1821
    :cond_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    .line 1825
    :cond_3
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateActionsViewFocusedScroll()V

    .line 1828
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v2}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->setFlingingFast(Z)V

    .line 1829
    return v0
.end method

.method public confirmSplitSelect(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/IconView;Lcom/android/quickstep/views/TaskThumbnailView;)Z
    .locals 26
    .param p1, "containerTaskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p3, "iconView"    # Lcom/android/quickstep/views/IconView;
    .param p4, "thumbnailView"    # Lcom/android/quickstep/views/TaskThumbnailView;

    .line 4052
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->canLaunchFullscreenTask()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 4053
    return v5

    .line 4055
    :cond_0
    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v4}, Lcom/android/quickstep/util/SplitSelectStateController;->isBothSplitAppsConfirmed()Z

    move-result v4

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    .line 4056
    return v6

    .line 4058
    :cond_1
    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->cancel()V

    .line 4059
    iget-boolean v4, v2, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez v4, :cond_2

    .line 4061
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda30;

    invoke-direct {v5, v1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda30;-><init>(Lcom/android/quickstep/views/TaskView;)V

    const/4 v7, 0x0

    invoke-static {v4, v5, v7, v7}, Lcom/android/launcher3/uioverrides/SomcUtils;->showConfirmationDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4064
    return v6

    .line 4066
    :cond_2
    iget-object v4, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v4, v2}, Lcom/android/quickstep/util/SplitSelectStateController;->setSecondTask(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 4067
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 4068
    .local v4, "secondTaskStartingBounds":Landroid/graphics/RectF;
    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V

    .line 4070
    .local v18, "secondTaskEndingBounds":Landroid/graphics/Rect;
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    move-object v12, v7

    .line 4071
    .local v12, "firstTaskStartingBounds":Landroid/graphics/Rect;
    iget-object v11, v0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 4072
    .local v11, "firstTaskEndingBounds":Landroid/graphics/Rect;
    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v7

    iget-object v8, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-interface {v7, v8, v5}, Lcom/android/launcher3/statemanager/BaseState;->getTransitionDuration(Landroid/content/Context;Z)I

    move-result v5

    .line 4074
    .local v5, "duration":I
    new-instance v7, Lcom/android/launcher3/anim/PendingAnimation;

    int-to-long v8, v5

    invoke-direct {v7, v8, v9}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    move-object v10, v7

    .line 4076
    .local v10, "pendingAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/launcher3/R$dimen;->multi_window_task_divider_size:I

    .line 4077
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    div-int/lit8 v25, v7, 0x2

    .line 4078
    .local v25, "halfDividerSize":I
    iget-object v13, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 4079
    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v15

    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    .line 4080
    invoke-virtual {v7}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v16

    .line 4078
    move/from16 v14, v25

    move-object/from16 v17, v11

    invoke-interface/range {v13 .. v18}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getFinalSplitPlaceholderBounds(ILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 4083
    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    invoke-virtual {v7, v12}, Lcom/android/quickstep/views/FloatingTaskView;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 4084
    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    const/16 v23, 0x0

    const/16 v24, 0x1

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v8

    move-object/from16 v22, v11

    invoke-virtual/range {v19 .. v24}, Lcom/android/quickstep/views/FloatingTaskView;->addAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    .line 4088
    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 4089
    invoke-virtual/range {p4 .. p4}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 4090
    invoke-virtual/range {p3 .. p3}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 4088
    invoke-static {v7, v3, v8, v9, v4}, Lcom/android/quickstep/views/FloatingTaskView;->getFloatingTaskView(Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)Lcom/android/quickstep/views/FloatingTaskView;

    move-result-object v7

    iput-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    .line 4091
    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/quickstep/views/FloatingTaskView;->setAlpha(F)V

    .line 4092
    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object v8, v10

    move-object v9, v4

    move-object v15, v10

    .end local v10    # "pendingAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    .local v15, "pendingAnimation":Lcom/android/launcher3/anim/PendingAnimation;
    move-object/from16 v10, v18

    move-object/from16 v16, v11

    .end local v11    # "firstTaskEndingBounds":Landroid/graphics/Rect;
    .local v16, "firstTaskEndingBounds":Landroid/graphics/Rect;
    move v11, v13

    move-object v13, v12

    .end local v12    # "firstTaskStartingBounds":Landroid/graphics/Rect;
    .local v13, "firstTaskStartingBounds":Landroid/graphics/Rect;
    move v12, v14

    invoke-virtual/range {v7 .. v12}, Lcom/android/quickstep/views/FloatingTaskView;->addAnimation(Lcom/android/launcher3/anim/PendingAnimation;Landroid/graphics/RectF;Landroid/graphics/Rect;ZZ)V

    .line 4094
    new-instance v7, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda31;

    invoke-direct {v7, v0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda31;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v15, v7}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 4099
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4101
    iput-object v3, v0, Lcom/android/quickstep/views/RecentsView;->mSecondSplitHiddenView:Landroid/view/View;

    goto :goto_0

    .line 4103
    :cond_3
    iput-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mSecondSplitHiddenView:Landroid/view/View;

    .line 4105
    :goto_0
    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mSecondSplitHiddenView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 4106
    const/16 v7, 0x31

    const-string v8, "Second tile selected"

    invoke-static {v0, v7, v8}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    .line 4108
    invoke-virtual {v15}, Lcom/android/launcher3/anim/PendingAnimation;->buildAnim()Landroid/animation/AnimatorSet;

    move-result-object v7

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 4109
    return v6
.end method

.method public createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;
    .locals 19
    .param p1, "tv"    # Lcom/android/quickstep/views/TaskView;

    .line 4258
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    move-object/from16 v0, p0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 4260
    .local v1, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    .line 4261
    .local v2, "taskIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v3

    .line 4262
    .local v3, "centerTaskIndex":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v6, v4

    goto :goto_0

    :cond_0
    move v6, v5

    .line 4264
    .local v6, "launchingCenterTask":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getMaxScaleForFullScreen()F

    move-result v7

    .line 4265
    .local v7, "toScale":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v8

    .line 4266
    .local v8, "recentsView":Lcom/android/quickstep/views/RecentsView;
    const/high16 v9, 0x3f800000    # 1.0f

    if-eqz v6, :cond_1

    .line 4267
    sget-object v10, Lcom/android/quickstep/views/RecentsView;->RECENTS_SCALE_PROPERTY:Landroid/util/FloatProperty;

    new-array v11, v4, [F

    aput v7, v11, v5

    invoke-static {v8, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4268
    sget-object v10, Lcom/android/quickstep/views/RecentsView;->FULLSCREEN_PROGRESS:Landroid/util/FloatProperty;

    new-array v4, v4, [F

    aput v9, v4, v5

    invoke-static {v8, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move/from16 v17, v6

    move/from16 v18, v7

    goto/16 :goto_4

    .line 4271
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    sub-float v11, v7, v9

    mul-float/2addr v10, v11

    .line 4272
    .local v10, "displacementX":F
    iget-boolean v11, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v11, :cond_2

    neg-float v11, v10

    goto :goto_1

    :cond_2
    move v11, v10

    .line 4273
    .local v11, "primaryTranslation":F
    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Landroid/view/View;

    move-result-object v12

    iget-object v13, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 4274
    invoke-interface {v13}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v13

    new-array v14, v4, [F

    aput v11, v14, v5

    .line 4273
    invoke-static {v12, v13, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v1, v12}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4275
    invoke-virtual {v8}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v12

    .line 4276
    .local v12, "runningTaskIndex":I
    sget-object v13, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v13}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v13

    if-eqz v13, :cond_5

    const/4 v13, -0x1

    if-eq v12, v13, :cond_5

    if-eq v12, v2, :cond_5

    .line 4279
    invoke-virtual {v8}, Lcom/android/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v13

    if-eqz v13, :cond_4

    .line 4280
    invoke-virtual {v8}, Lcom/android/quickstep/views/RecentsView;->getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v13

    array-length v14, v13

    move v15, v5

    :goto_2
    if-ge v15, v14, :cond_3

    aget-object v16, v13, v15

    .line 4281
    .local v16, "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    nop

    .line 4282
    invoke-virtual/range {v16 .. v16}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v9

    iget-object v9, v9, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    move/from16 v17, v6

    .end local v6    # "launchingCenterTask":Z
    .local v17, "launchingCenterTask":Z
    sget-object v6, Lcom/android/quickstep/AnimatedFloat;->VALUE:Landroid/util/FloatProperty;

    move/from16 v18, v7

    .end local v7    # "toScale":F
    .local v18, "toScale":F
    new-array v7, v4, [F

    aput v11, v7, v5

    .line 4281
    invoke-static {v9, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4280
    .end local v16    # "remoteHandle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v15, v15, 0x1

    move/from16 v6, v17

    move/from16 v7, v18

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_2

    .end local v17    # "launchingCenterTask":Z
    .end local v18    # "toScale":F
    .restart local v6    # "launchingCenterTask":Z
    .restart local v7    # "toScale":F
    :cond_3
    move/from16 v17, v6

    move/from16 v18, v7

    .end local v6    # "launchingCenterTask":Z
    .end local v7    # "toScale":F
    .restart local v17    # "launchingCenterTask":Z
    .restart local v18    # "toScale":F
    goto :goto_3

    .line 4279
    .end local v17    # "launchingCenterTask":Z
    .end local v18    # "toScale":F
    .restart local v6    # "launchingCenterTask":Z
    .restart local v7    # "toScale":F
    :cond_4
    move/from16 v17, v6

    move/from16 v18, v7

    .end local v6    # "launchingCenterTask":Z
    .end local v7    # "toScale":F
    .restart local v17    # "launchingCenterTask":Z
    .restart local v18    # "toScale":F
    goto :goto_3

    .line 4276
    .end local v17    # "launchingCenterTask":Z
    .end local v18    # "toScale":F
    .restart local v6    # "launchingCenterTask":Z
    .restart local v7    # "toScale":F
    :cond_5
    move/from16 v17, v6

    move/from16 v18, v7

    .line 4288
    .end local v6    # "launchingCenterTask":Z
    .end local v7    # "toScale":F
    .restart local v17    # "launchingCenterTask":Z
    .restart local v18    # "toScale":F
    :goto_3
    sub-int v6, v3, v2

    add-int/2addr v6, v3

    .line 4289
    .local v6, "otherAdjacentTaskIndex":I
    if-ltz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 4290
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    .line 4291
    .local v7, "properties":[Landroid/animation/PropertyValuesHolder;
    iget-object v9, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 4292
    invoke-interface {v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v9

    new-array v13, v4, [F

    aput v11, v13, v5

    .line 4291
    invoke-static {v9, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v5

    .line 4293
    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v4, [F

    const/high16 v14, 0x3f800000    # 1.0f

    aput v14, v13, v5

    invoke-static {v9, v13}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v4

    .line 4294
    const/4 v9, 0x2

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v4, [F

    aput v14, v4, v5

    invoke-static {v13, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v7, v9

    .line 4296
    invoke-virtual {v0, v6}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4300
    .end local v6    # "otherAdjacentTaskIndex":I
    .end local v7    # "properties":[Landroid/animation/PropertyValuesHolder;
    .end local v10    # "displacementX":F
    .end local v11    # "primaryTranslation":F
    .end local v12    # "runningTaskIndex":I
    :cond_6
    :goto_4
    return-object v1
.end method

.method public createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 4
    .param p1, "duration"    # J

    .line 3446
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 3448
    .local v0, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    .line 3449
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 3450
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    invoke-direct {p0, v3, p1, p2, v0}, Lcom/android/quickstep/views/RecentsView;->addDismissedTaskAnimations(Lcom/android/quickstep/views/TaskView;JLcom/android/launcher3/anim/PendingAnimation;)V

    .line 3449
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3453
    .end local v2    # "i":I
    :cond_0
    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    .line 3454
    new-instance v2, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda42;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda42;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 3467
    return-object v0
.end method

.method public createSplitSelectInitAnimation(I)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 7
    .param p1, "duration"    # I

    .line 4033
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_0

    .line 4034
    const/4 v2, 0x1

    const/4 v3, 0x0

    int-to-long v4, p1

    const/4 v6, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    return-object v0

    .line 4037
    :cond_0
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    .line 4038
    .local v0, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 4039
    return-object v0
.end method

.method public createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 51
    .param p1, "dismissedTaskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "animateTaskView"    # Z
    .param p3, "shouldRemoveTask"    # Z
    .param p4, "duration"    # J
    .param p6, "dismissingForSplitSelection"    # Z

    .line 2806
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    move-object/from16 v15, p0

    move-object/from16 v13, p1

    move-wide/from16 v11, p4

    iget-object v0, v15, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    if-eqz v0, :cond_0

    .line 2807
    invoke-virtual {v0}, Lcom/android/launcher3/anim/PendingAnimation;->createPlaybackController()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnCancel()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->dispatchOnEnd()Lcom/android/launcher3/anim/AnimatorPlaybackController;

    .line 2809
    :cond_0
    new-instance v0, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v0, v11, v12}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    move-object v9, v0

    .line 2811
    .local v9, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v8

    .line 2812
    .local v8, "count":I
    if-nez v8, :cond_1

    .line 2813
    return-object v9

    .line 2816
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v16

    .line 2817
    .local v16, "showAsGrid":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v5

    .line 2818
    .local v5, "taskCount":I
    invoke-virtual/range {p0 .. p1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 2819
    .local v4, "dismissedIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v3

    .line 2822
    .local v3, "dismissedTaskViewId":I
    const/4 v0, 0x0

    .line 2823
    .local v0, "isFocusedTaskDismissed":Z
    const/4 v1, 0x0

    .line 2824
    .local v1, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    const/4 v2, 0x0

    .line 2825
    .local v2, "nextFocusedTaskFromTop":Z
    const/4 v6, 0x0

    .line 2826
    .local v6, "dismissedTaskWidth":F
    const/4 v7, 0x0

    .line 2829
    .local v7, "nextFocusedTaskWidth":F
    new-array v14, v8, [I

    .line 2830
    .local v14, "oldScroll":[I
    new-array v10, v8, [I

    .line 2831
    .local v10, "newScroll":[I
    const/16 v17, 0x0

    .line 2832
    .local v17, "scrollDiffPerPage":I
    const/16 v18, 0x0

    .line 2834
    .local v18, "needsCurveUpdates":Z
    move/from16 v19, v0

    .end local v0    # "isFocusedTaskDismissed":Z
    .local v19, "isFocusedTaskDismissed":Z
    if-eqz v16, :cond_c

    .line 2835
    invoke-virtual/range {p1 .. p1}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move-object/from16 v22, v1

    .end local v1    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .local v22, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    iget v1, v15, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    add-int/2addr v0, v1

    int-to-float v6, v0

    .line 2836
    iget v0, v15, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-ne v3, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 2837
    .end local v19    # "isFocusedTaskDismissed":Z
    .restart local v0    # "isFocusedTaskDismissed":Z
    :goto_0
    if-eqz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v1

    if-nez v1, :cond_b

    .line 2838
    iget-object v1, v15, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    .line 2839
    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, v15, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v1

    int-to-float v1, v1

    move/from16 v19, v0

    .end local v0    # "isFocusedTaskDismissed":Z
    .restart local v19    # "isFocusedTaskDismissed":Z
    add-int/lit8 v0, v5, -0x1

    int-to-float v0, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v0, v0, v23

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    .end local v19    # "isFocusedTaskDismissed":Z
    .restart local v0    # "isFocusedTaskDismissed":Z
    :cond_3
    move/from16 v19, v0

    .end local v0    # "isFocusedTaskDismissed":Z
    .restart local v19    # "isFocusedTaskDismissed":Z
    :cond_4
    const/4 v0, 0x0

    :goto_1
    move v2, v0

    .line 2841
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v5, :cond_9

    .line 2842
    invoke-direct {v15, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 2843
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    if-ne v1, v13, :cond_5

    .line 2844
    move/from16 v23, v6

    move/from16 v24, v7

    goto :goto_3

    .line 2846
    :cond_5
    move/from16 v23, v6

    .end local v6    # "dismissedTaskWidth":F
    .local v23, "dismissedTaskWidth":F
    iget-object v6, v15, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    move/from16 v24, v7

    .end local v7    # "nextFocusedTaskWidth":F
    .local v24, "nextFocusedTaskWidth":F
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v6

    .line 2847
    .local v6, "isTopRow":Z
    if-eqz v2, :cond_6

    if-nez v6, :cond_7

    :cond_6
    if-nez v2, :cond_8

    if-nez v6, :cond_8

    .line 2849
    :cond_7
    move-object v7, v1

    .line 2850
    .end local v22    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .local v7, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    goto :goto_4

    .line 2841
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v6    # "isTopRow":Z
    .end local v7    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v22    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    :cond_8
    :goto_3
    add-int/lit8 v0, v0, 0x1

    move/from16 v6, v23

    move/from16 v7, v24

    goto :goto_2

    .end local v23    # "dismissedTaskWidth":F
    .end local v24    # "nextFocusedTaskWidth":F
    .local v6, "dismissedTaskWidth":F
    .local v7, "nextFocusedTaskWidth":F
    :cond_9
    move/from16 v23, v6

    move/from16 v24, v7

    .end local v6    # "dismissedTaskWidth":F
    .end local v7    # "nextFocusedTaskWidth":F
    .restart local v23    # "dismissedTaskWidth":F
    .restart local v24    # "nextFocusedTaskWidth":F
    move-object/from16 v1, v22

    .line 2853
    .end local v0    # "i":I
    .end local v22    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .local v1, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    :goto_4
    if-eqz v1, :cond_a

    .line 2854
    nop

    .line 2855
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v6, v15, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    add-int/2addr v0, v6

    int-to-float v7, v0

    move/from16 v24, v7

    move/from16 v7, v17

    move/from16 v0, v23

    move/from16 v17, v2

    move-object v2, v1

    const/4 v1, 0x0

    .end local v24    # "nextFocusedTaskWidth":F
    .restart local v7    # "nextFocusedTaskWidth":F
    goto :goto_5

    .line 2853
    .end local v7    # "nextFocusedTaskWidth":F
    .restart local v24    # "nextFocusedTaskWidth":F
    :cond_a
    move/from16 v7, v17

    move/from16 v0, v23

    move/from16 v17, v2

    move-object v2, v1

    const/4 v1, 0x0

    goto :goto_5

    .line 2837
    .end local v1    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v19    # "isFocusedTaskDismissed":Z
    .end local v23    # "dismissedTaskWidth":F
    .end local v24    # "nextFocusedTaskWidth":F
    .local v0, "isFocusedTaskDismissed":Z
    .restart local v6    # "dismissedTaskWidth":F
    .restart local v7    # "nextFocusedTaskWidth":F
    .restart local v22    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    :cond_b
    move/from16 v19, v0

    move/from16 v23, v6

    move/from16 v24, v7

    .line 2867
    .end local v0    # "isFocusedTaskDismissed":Z
    .end local v6    # "dismissedTaskWidth":F
    .end local v7    # "nextFocusedTaskWidth":F
    .restart local v19    # "isFocusedTaskDismissed":Z
    .restart local v23    # "dismissedTaskWidth":F
    .restart local v24    # "nextFocusedTaskWidth":F
    move/from16 v7, v17

    move/from16 v0, v23

    const/4 v1, 0x0

    move/from16 v17, v2

    move-object/from16 v2, v22

    goto :goto_5

    .line 2859
    .end local v22    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v23    # "dismissedTaskWidth":F
    .end local v24    # "nextFocusedTaskWidth":F
    .restart local v1    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v6    # "dismissedTaskWidth":F
    .restart local v7    # "nextFocusedTaskWidth":F
    :cond_c
    move-object/from16 v22, v1

    move/from16 v24, v7

    .end local v1    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v7    # "nextFocusedTaskWidth":F
    .restart local v22    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v24    # "nextFocusedTaskWidth":F
    sget-object v0, Lcom/android/quickstep/views/RecentsView;->SIMPLE_SCROLL_LOGIC:Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    const/4 v1, 0x0

    invoke-virtual {v15, v14, v1, v0}, Lcom/android/quickstep/views/RecentsView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    .line 2860
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda14;

    invoke-direct {v0, v13}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda14;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v15, v10, v1, v0}, Lcom/android/quickstep/views/RecentsView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    .line 2862
    const/4 v0, 0x1

    if-le v8, v0, :cond_d

    .line 2863
    aget v7, v14, v0

    aget v0, v14, v1

    sub-int/2addr v7, v0

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v17

    move v0, v6

    move/from16 v7, v17

    move/from16 v17, v2

    move-object/from16 v2, v22

    goto :goto_5

    .line 2862
    :cond_d
    move v0, v6

    move/from16 v7, v17

    move/from16 v17, v2

    move-object/from16 v2, v22

    .line 2867
    .end local v6    # "dismissedTaskWidth":F
    .end local v22    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .local v0, "dismissedTaskWidth":F
    .local v2, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .local v7, "scrollDiffPerPage":I
    .local v17, "nextFocusedTaskFromTop":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v1, Lcom/android/launcher3/R$string;->task_view_closed:I

    invoke-virtual {v6, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/android/quickstep/views/RecentsView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 2869
    const/high16 v1, 0x3f800000    # 1.0f

    .line 2870
    .local v1, "dismissTranslationInterpolationEnd":F
    const/4 v6, 0x0

    .line 2871
    .local v6, "closeGapBetweenClearAll":Z
    move/from16 v22, v1

    .end local v1    # "dismissTranslationInterpolationEnd":F
    .local v22, "dismissTranslationInterpolationEnd":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result v1

    .line 2872
    .local v1, "isClearAllHidden":Z
    const/16 v23, 0x0

    .line 2873
    .local v23, "snapToLastTask":Z
    move/from16 v25, v6

    .end local v6    # "closeGapBetweenClearAll":Z
    .local v25, "closeGapBetweenClearAll":Z
    iget-object v6, v15, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 2874
    invoke-virtual {v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v6, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x1

    goto :goto_6

    :cond_e
    const/4 v6, 0x0

    :goto_6
    move/from16 v26, v6

    .line 2875
    .local v26, "isLandscapeSplit":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isSplitPlaceholderFirstInGrid()Z

    move-result v27

    .line 2876
    .local v27, "isSplitPlaceholderFirstInGrid":Z
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->isSplitPlaceholderLastInGrid()Z

    move-result v28

    .line 2877
    .local v28, "isSplitPlaceholderLastInGrid":Z
    if-eqz v16, :cond_f

    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getLastGridTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    goto :goto_7

    :cond_f
    const/4 v6, 0x0

    .line 2878
    .local v6, "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    :goto_7
    move-object/from16 v29, v2

    .end local v2    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .local v29, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    iget v2, v15, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {v15, v2}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v2

    .line 2879
    .local v2, "currentPageScroll":I
    move-object/from16 v30, v14

    .end local v14    # "oldScroll":[I
    .local v30, "oldScroll":[I
    invoke-virtual {v15, v6}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v14

    invoke-virtual {v15, v14}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v14

    .line 2880
    .local v14, "lastGridTaskScroll":I
    if-ne v2, v14, :cond_10

    const/16 v31, 0x1

    goto :goto_8

    :cond_10
    const/16 v31, 0x0

    .line 2881
    .local v31, "currentPageSnapsToEndOfGrid":Z
    :goto_8
    move/from16 v32, v2

    .end local v2    # "currentPageScroll":I
    .local v32, "currentPageScroll":I
    if-eqz v6, :cond_27

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->isVisibleToUser()Z

    move-result v34

    if-eqz v34, :cond_27

    .line 2885
    const/16 v34, 0x0

    .line 2887
    .local v34, "longGridRowWidthDiff":F
    iget-object v2, v15, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v2

    .line 2888
    .local v2, "topGridRowSize":I
    move-object/from16 v36, v6

    .end local v6    # "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    .local v36, "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    iget-object v6, v15, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v6}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v6

    sub-int v6, v5, v6

    const/16 v21, 0x1

    add-int/lit8 v6, v6, -0x1

    .line 2889
    .local v6, "bottomGridRowSize":I
    if-le v2, v6, :cond_11

    const/16 v37, 0x1

    goto :goto_9

    :cond_11
    const/16 v37, 0x0

    .line 2890
    .local v37, "topRowLonger":Z
    :goto_9
    if-le v6, v2, :cond_12

    const/16 v38, 0x1

    goto :goto_a

    :cond_12
    const/16 v38, 0x0

    .line 2891
    .local v38, "bottomRowLonger":Z
    :goto_a
    move/from16 v39, v2

    .end local v2    # "topGridRowSize":I
    .local v39, "topGridRowSize":I
    iget-object v2, v15, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v2

    .line 2892
    .local v2, "dismissedTaskFromTop":Z
    if-nez v2, :cond_13

    if-nez v19, :cond_13

    const/16 v40, 0x1

    goto :goto_b

    :cond_13
    const/16 v40, 0x0

    .line 2893
    .local v40, "dismissedTaskFromBottom":Z
    :goto_b
    const/16 v41, 0x0

    .line 2894
    .local v41, "gapWidth":F
    if-eqz v37, :cond_14

    if-nez v2, :cond_15

    :cond_14
    if-eqz v38, :cond_16

    if-eqz v40, :cond_16

    .line 2896
    :cond_15
    move/from16 v41, v0

    move/from16 v42, v2

    move/from16 v2, v41

    goto :goto_c

    .line 2897
    :cond_16
    if-eqz v37, :cond_17

    if-nez v17, :cond_18

    :cond_17
    if-eqz v38, :cond_19

    if-nez v17, :cond_19

    .line 2899
    :cond_18
    move/from16 v41, v24

    move/from16 v42, v2

    move/from16 v2, v41

    goto :goto_c

    .line 2901
    :cond_19
    move/from16 v42, v2

    move/from16 v2, v41

    .end local v41    # "gapWidth":F
    .local v2, "gapWidth":F
    .local v42, "dismissedTaskFromTop":Z
    :goto_c
    const/16 v35, 0x0

    cmpl-float v41, v2, v35

    if-lez v41, :cond_1c

    .line 2902
    move/from16 v41, v3

    .end local v3    # "dismissedTaskViewId":I
    .local v41, "dismissedTaskViewId":I
    const/4 v3, 0x2

    if-le v5, v3, :cond_1b

    .line 2904
    iget-boolean v3, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v3, :cond_1a

    neg-float v3, v2

    goto :goto_d

    :cond_1a
    move v3, v2

    :goto_d
    add-float v34, v34, v3

    .line 2905
    if-eqz v1, :cond_1d

    .line 2907
    const/16 v23, 0x1

    goto :goto_e

    .line 2911
    :cond_1b
    invoke-direct {v15, v1}, Lcom/android/quickstep/views/RecentsView;->getSnapToFocusedTaskScrollDiff(Z)I

    move-result v3

    int-to-float v3, v3

    add-float v34, v34, v3

    goto :goto_e

    .line 2901
    .end local v41    # "dismissedTaskViewId":I
    .restart local v3    # "dismissedTaskViewId":I
    :cond_1c
    move/from16 v41, v3

    .line 2914
    .end local v3    # "dismissedTaskViewId":I
    .restart local v41    # "dismissedTaskViewId":I
    :cond_1d
    :goto_e
    iget-object v3, v15, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v3}, Lcom/android/quickstep/views/ClearAllButton;->getAlpha()F

    move-result v3

    const/16 v35, 0x0

    cmpl-float v3, v3, v35

    if-eqz v3, :cond_1e

    if-eqz v26, :cond_1e

    .line 2916
    const/16 v23, 0x1

    .line 2918
    :cond_1e
    if-eqz v23, :cond_21

    .line 2919
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getSnapToLastTaskScrollDiff()I

    move-result v3

    int-to-float v3, v3

    add-float v34, v34, v3

    .line 2920
    if-eqz v28, :cond_20

    .line 2922
    iget-boolean v3, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v3, :cond_1f

    iget v3, v15, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    goto :goto_f

    :cond_1f
    iget v3, v15, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    neg-int v3, v3

    :goto_f
    int-to-float v3, v3

    add-float v34, v34, v3

    move/from16 v3, v34

    goto :goto_10

    .line 2920
    :cond_20
    move/from16 v3, v34

    goto :goto_10

    .line 2924
    :cond_21
    if-eqz v26, :cond_22

    if-eqz v31, :cond_22

    .line 2927
    const/4 v3, 0x1

    move/from16 v23, v3

    move/from16 v3, v34

    .end local v23    # "snapToLastTask":Z
    .local v3, "snapToLastTask":Z
    goto :goto_10

    .line 2936
    .end local v3    # "snapToLastTask":Z
    .restart local v23    # "snapToLastTask":Z
    :cond_22
    move/from16 v3, v34

    .end local v34    # "longGridRowWidthDiff":F
    .local v3, "longGridRowWidthDiff":F
    :goto_10
    const/16 v34, 0x0

    cmpl-float v43, v3, v34

    if-eqz v43, :cond_26

    .line 2937
    const/16 v25, 0x1

    .line 2940
    const v34, 0x3ccccccd    # 0.025f

    .line 2942
    .local v34, "halfAdditionalDismissTranslationOffset":F
    move/from16 v43, v2

    .end local v2    # "gapWidth":F
    .local v43, "gapWidth":F
    add-int/lit8 v2, v5, -0x1

    int-to-float v2, v2

    mul-float v2, v2, v34

    move/from16 v44, v6

    .end local v6    # "bottomGridRowSize":I
    .local v44, "bottomGridRowSize":I
    const/high16 v6, 0x3f400000    # 0.75f

    add-float/2addr v2, v6

    move/from16 v45, v14

    const/high16 v14, 0x3f800000    # 1.0f

    .end local v14    # "lastGridTaskScroll":I
    .local v45, "lastGridTaskScroll":I
    invoke-static {v2, v6, v14}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    .line 2946
    .end local v22    # "dismissTranslationInterpolationEnd":F
    .local v2, "dismissTranslationInterpolationEnd":F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_11
    if-ge v14, v5, :cond_24

    .line 2947
    invoke-direct {v15, v14}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    .line 2948
    .local v6, "taskView":Lcom/android/quickstep/views/TaskView;
    move/from16 v46, v0

    .end local v0    # "dismissedTaskWidth":F
    .local v46, "dismissedTaskWidth":F
    sget-object v0, Lcom/android/quickstep/views/TaskView;->GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;

    move-object/from16 v47, v10

    .end local v10    # "newScroll":[I
    .local v47, "newScroll":[I
    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 2949
    move/from16 v48, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .end local v7    # "scrollDiffPerPage":I
    .local v48, "scrollDiffPerPage":I
    invoke-static {v10, v2, v7}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v10

    .line 2948
    invoke-virtual {v9, v6, v0, v3, v10}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 2950
    sub-float v0, v2, v34

    const/high16 v10, 0x3f400000    # 0.75f

    invoke-static {v0, v10, v7}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v2

    .line 2954
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, v15, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_23

    .line 2955
    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2956
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda15;

    invoke-direct {v0, v15, v6}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda15;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v9, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 2946
    .end local v6    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_23
    add-int/lit8 v14, v14, 0x1

    move v6, v10

    move/from16 v0, v46

    move-object/from16 v10, v47

    move/from16 v7, v48

    goto :goto_11

    .end local v46    # "dismissedTaskWidth":F
    .end local v47    # "newScroll":[I
    .end local v48    # "scrollDiffPerPage":I
    .restart local v0    # "dismissedTaskWidth":F
    .restart local v7    # "scrollDiffPerPage":I
    .restart local v10    # "newScroll":[I
    :cond_24
    move/from16 v46, v0

    move/from16 v48, v7

    move-object/from16 v47, v10

    .line 2968
    .end local v0    # "dismissedTaskWidth":F
    .end local v7    # "scrollDiffPerPage":I
    .end local v10    # "newScroll":[I
    .end local v14    # "i":I
    .restart local v46    # "dismissedTaskWidth":F
    .restart local v47    # "newScroll":[I
    .restart local v48    # "scrollDiffPerPage":I
    if-eqz v1, :cond_25

    .line 2969
    iget-object v0, v15, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    sget-object v6, Lcom/android/quickstep/views/ClearAllButton;->DISMISS_ALPHA:Landroid/util/FloatProperty;

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    const/4 v10, 0x0

    invoke-virtual {v9, v0, v6, v10, v7}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 2970
    new-instance v0, Lcom/android/quickstep/views/RecentsView$15;

    invoke-direct {v0, v15}, Lcom/android/quickstep/views/RecentsView$15;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v9, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2981
    .end local v3    # "longGridRowWidthDiff":F
    .end local v34    # "halfAdditionalDismissTranslationOffset":F
    .end local v37    # "topRowLonger":Z
    .end local v38    # "bottomRowLonger":Z
    .end local v39    # "topGridRowSize":I
    .end local v40    # "dismissedTaskFromBottom":Z
    .end local v42    # "dismissedTaskFromTop":Z
    .end local v43    # "gapWidth":F
    .end local v44    # "bottomGridRowSize":I
    :cond_25
    move v3, v2

    goto :goto_12

    .line 2936
    .end local v45    # "lastGridTaskScroll":I
    .end local v46    # "dismissedTaskWidth":F
    .end local v47    # "newScroll":[I
    .end local v48    # "scrollDiffPerPage":I
    .restart local v0    # "dismissedTaskWidth":F
    .local v2, "gapWidth":F
    .restart local v3    # "longGridRowWidthDiff":F
    .local v6, "bottomGridRowSize":I
    .restart local v7    # "scrollDiffPerPage":I
    .restart local v10    # "newScroll":[I
    .local v14, "lastGridTaskScroll":I
    .restart local v22    # "dismissTranslationInterpolationEnd":F
    .restart local v37    # "topRowLonger":Z
    .restart local v38    # "bottomRowLonger":Z
    .restart local v39    # "topGridRowSize":I
    .restart local v40    # "dismissedTaskFromBottom":Z
    .restart local v42    # "dismissedTaskFromTop":Z
    :cond_26
    move/from16 v46, v0

    move/from16 v43, v2

    move/from16 v44, v6

    move/from16 v48, v7

    move-object/from16 v47, v10

    move/from16 v45, v14

    .end local v0    # "dismissedTaskWidth":F
    .end local v2    # "gapWidth":F
    .end local v6    # "bottomGridRowSize":I
    .end local v7    # "scrollDiffPerPage":I
    .end local v10    # "newScroll":[I
    .end local v14    # "lastGridTaskScroll":I
    .restart local v43    # "gapWidth":F
    .restart local v44    # "bottomGridRowSize":I
    .restart local v45    # "lastGridTaskScroll":I
    .restart local v46    # "dismissedTaskWidth":F
    .restart local v47    # "newScroll":[I
    .restart local v48    # "scrollDiffPerPage":I
    move/from16 v3, v22

    goto :goto_12

    .line 2881
    .end local v36    # "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v37    # "topRowLonger":Z
    .end local v38    # "bottomRowLonger":Z
    .end local v39    # "topGridRowSize":I
    .end local v40    # "dismissedTaskFromBottom":Z
    .end local v41    # "dismissedTaskViewId":I
    .end local v42    # "dismissedTaskFromTop":Z
    .end local v43    # "gapWidth":F
    .end local v44    # "bottomGridRowSize":I
    .end local v45    # "lastGridTaskScroll":I
    .end local v46    # "dismissedTaskWidth":F
    .end local v47    # "newScroll":[I
    .end local v48    # "scrollDiffPerPage":I
    .restart local v0    # "dismissedTaskWidth":F
    .local v3, "dismissedTaskViewId":I
    .local v6, "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v7    # "scrollDiffPerPage":I
    .restart local v10    # "newScroll":[I
    .restart local v14    # "lastGridTaskScroll":I
    :cond_27
    move/from16 v46, v0

    move/from16 v41, v3

    move-object/from16 v36, v6

    move/from16 v48, v7

    move-object/from16 v47, v10

    move/from16 v45, v14

    .line 2981
    .end local v0    # "dismissedTaskWidth":F
    .end local v3    # "dismissedTaskViewId":I
    .end local v6    # "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v7    # "scrollDiffPerPage":I
    .end local v10    # "newScroll":[I
    .end local v14    # "lastGridTaskScroll":I
    .restart local v36    # "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v41    # "dismissedTaskViewId":I
    .restart local v45    # "lastGridTaskScroll":I
    .restart local v46    # "dismissedTaskWidth":F
    .restart local v47    # "newScroll":[I
    .restart local v48    # "scrollDiffPerPage":I
    move/from16 v3, v22

    .end local v22    # "dismissTranslationInterpolationEnd":F
    .local v3, "dismissTranslationInterpolationEnd":F
    :goto_12
    const/4 v0, 0x0

    .line 2982
    .local v0, "distanceFromDismissedTask":I
    const/4 v2, 0x0

    move/from16 v22, v18

    move/from16 v18, v0

    .end local v0    # "distanceFromDismissedTask":I
    .local v2, "i":I
    .local v18, "distanceFromDismissedTask":I
    .local v22, "needsCurveUpdates":Z
    :goto_13
    if-ge v2, v8, :cond_42

    .line 2983
    invoke-virtual {v15, v2}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2984
    .local v0, "child":Landroid/view/View;
    if-ne v0, v13, :cond_2a

    .line 2985
    if-eqz p2, :cond_29

    .line 2986
    if-eqz p6, :cond_28

    .line 2987
    invoke-direct {v15, v9}, Lcom/android/quickstep/views/RecentsView;->createInitialSplitSelectAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    move/from16 v39, v1

    move/from16 v38, v5

    move/from16 v33, v8

    move-object/from16 v8, v29

    move/from16 v14, v46

    goto/16 :goto_21

    .line 2989
    :cond_28
    invoke-direct {v15, v13, v11, v12, v9}, Lcom/android/quickstep/views/RecentsView;->addDismissedTaskAnimations(Lcom/android/quickstep/views/TaskView;JLcom/android/launcher3/anim/PendingAnimation;)V

    move/from16 v39, v1

    move/from16 v38, v5

    move/from16 v33, v8

    move-object/from16 v8, v29

    move/from16 v14, v46

    goto/16 :goto_21

    .line 2985
    :cond_29
    move/from16 v39, v1

    move/from16 v38, v5

    move/from16 v33, v8

    move-object/from16 v8, v29

    move/from16 v14, v46

    goto/16 :goto_21

    .line 2992
    :cond_2a
    if-nez v16, :cond_34

    .line 3000
    iget-boolean v10, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v10, :cond_2b

    move/from16 v10, v48

    goto :goto_14

    :cond_2b
    const/4 v10, 0x0

    .line 3001
    .local v10, "offset":I
    :goto_14
    iget v14, v15, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    if-ne v14, v4, :cond_2e

    .line 3002
    add-int/lit8 v14, v5, -0x1

    .line 3003
    .local v14, "lastPage":I
    iget v7, v15, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    if-ne v7, v14, :cond_2d

    .line 3004
    iget-boolean v7, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v7, :cond_2c

    move/from16 v7, v48

    .end local v48    # "scrollDiffPerPage":I
    .restart local v7    # "scrollDiffPerPage":I
    neg-int v6, v7

    goto :goto_15

    .end local v7    # "scrollDiffPerPage":I
    .restart local v48    # "scrollDiffPerPage":I
    :cond_2c
    move/from16 v7, v48

    .end local v48    # "scrollDiffPerPage":I
    .restart local v7    # "scrollDiffPerPage":I
    move v6, v7

    :goto_15
    add-int/2addr v10, v6

    goto :goto_16

    .line 3003
    .end local v7    # "scrollDiffPerPage":I
    .restart local v48    # "scrollDiffPerPage":I
    :cond_2d
    move/from16 v7, v48

    .line 3006
    .end local v14    # "lastPage":I
    .end local v48    # "scrollDiffPerPage":I
    .restart local v7    # "scrollDiffPerPage":I
    :goto_16
    goto :goto_18

    .line 3008
    .end local v7    # "scrollDiffPerPage":I
    .restart local v48    # "scrollDiffPerPage":I
    :cond_2e
    move/from16 v7, v48

    .end local v48    # "scrollDiffPerPage":I
    .restart local v7    # "scrollDiffPerPage":I
    iget v6, v15, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    const/4 v14, 0x1

    sub-int/2addr v6, v14

    .line 3009
    .local v6, "negativeAdjacent":I
    if-ne v4, v6, :cond_30

    .line 3010
    iget-boolean v14, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v14, :cond_2f

    neg-int v14, v7

    goto :goto_17

    :cond_2f
    move v14, v7

    :goto_17
    add-int/2addr v10, v14

    .line 3014
    .end local v6    # "negativeAdjacent":I
    :cond_30
    :goto_18
    aget v6, v47, v2

    aget v14, v30, v2

    sub-int/2addr v6, v14

    add-int/2addr v6, v10

    .line 3015
    .local v6, "scrollDiff":I
    if-eqz v6, :cond_33

    .line 3016
    instance-of v14, v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v14, :cond_31

    .line 3017
    move-object v14, v0

    check-cast v14, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v14}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v14

    goto :goto_19

    .line 3018
    :cond_31
    iget-object v14, v15, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v14}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryViewTranslate()Landroid/util/FloatProperty;

    move-result-object v14

    :goto_19
    nop

    .line 3020
    .local v14, "translationProperty":Landroid/util/FloatProperty;
    sub-int v38, v2, v4

    .line 3021
    move/from16 v39, v1

    .end local v1    # "isClearAllHidden":Z
    .local v39, "isClearAllHidden":Z
    invoke-static/range {v38 .. v38}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    const v37, 0x3d4ccccd    # 0.05f

    mul-float v1, v1, v37

    .line 3023
    .local v1, "additionalDismissDuration":F
    move/from16 v38, v5

    .end local v5    # "taskCount":I
    .local v38, "taskCount":I
    int-to-float v5, v6

    move/from16 v37, v6

    .end local v6    # "scrollDiff":I
    .local v37, "scrollDiff":I
    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v48, v7

    const v34, 0x3f0ccccd    # 0.55f

    .end local v7    # "scrollDiffPerPage":I
    .restart local v48    # "scrollDiffPerPage":I
    add-float v7, v1, v34

    .line 3024
    move/from16 v34, v1

    move/from16 v33, v8

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .end local v1    # "additionalDismissDuration":F
    .end local v8    # "count":I
    .local v33, "count":I
    .local v34, "additionalDismissDuration":F
    invoke-static {v7, v8, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v7

    .line 3023
    invoke-static {v6, v7, v1}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v9, v0, v14, v5, v6}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 3026
    sget-object v5, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v5}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v5

    if-eqz v5, :cond_32

    iget-boolean v5, v15, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v5, :cond_32

    instance-of v5, v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v5, :cond_32

    move-object v5, v0

    check-cast v5, Lcom/android/quickstep/views/TaskView;

    .line 3028
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v5

    if-eqz v5, :cond_32

    .line 3029
    new-instance v5, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda16;

    invoke-direct {v5, v15, v0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda16;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V

    invoke-virtual {v9, v5}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 3041
    :cond_32
    const/16 v22, 0x1

    goto :goto_1a

    .line 3015
    .end local v14    # "translationProperty":Landroid/util/FloatProperty;
    .end local v33    # "count":I
    .end local v34    # "additionalDismissDuration":F
    .end local v37    # "scrollDiff":I
    .end local v38    # "taskCount":I
    .end local v39    # "isClearAllHidden":Z
    .end local v48    # "scrollDiffPerPage":I
    .local v1, "isClearAllHidden":Z
    .restart local v5    # "taskCount":I
    .restart local v6    # "scrollDiff":I
    .restart local v7    # "scrollDiffPerPage":I
    .restart local v8    # "count":I
    :cond_33
    move/from16 v39, v1

    move/from16 v38, v5

    move/from16 v37, v6

    move/from16 v48, v7

    move/from16 v33, v8

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3043
    .end local v1    # "isClearAllHidden":Z
    .end local v5    # "taskCount":I
    .end local v6    # "scrollDiff":I
    .end local v7    # "scrollDiffPerPage":I
    .end local v8    # "count":I
    .end local v10    # "offset":I
    .restart local v33    # "count":I
    .restart local v38    # "taskCount":I
    .restart local v39    # "isClearAllHidden":Z
    .restart local v48    # "scrollDiffPerPage":I
    :goto_1a
    move-object/from16 v8, v29

    move/from16 v14, v46

    goto/16 :goto_21

    .end local v33    # "count":I
    .end local v38    # "taskCount":I
    .end local v39    # "isClearAllHidden":Z
    .restart local v1    # "isClearAllHidden":Z
    .restart local v5    # "taskCount":I
    .restart local v8    # "count":I
    :cond_34
    move/from16 v39, v1

    move/from16 v38, v5

    move/from16 v33, v8

    const/high16 v1, 0x3f800000    # 1.0f

    .end local v1    # "isClearAllHidden":Z
    .end local v5    # "taskCount":I
    .end local v8    # "count":I
    .restart local v33    # "count":I
    .restart local v38    # "taskCount":I
    .restart local v39    # "isClearAllHidden":Z
    instance-of v5, v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v5, :cond_41

    .line 3044
    move-object v5, v0

    check-cast v5, Lcom/android/quickstep/views/TaskView;

    .line 3045
    .local v5, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v19, :cond_36

    .line 3046
    if-eqz v29, :cond_35

    .line 3047
    move-object/from16 v8, v29

    .end local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .local v8, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    invoke-direct {v15, v5, v8}, Lcom/android/quickstep/views/RecentsView;->isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 3048
    move/from16 v14, v46

    goto/16 :goto_21

    .line 3046
    .end local v8    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    :cond_35
    move-object/from16 v8, v29

    .end local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v8    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    goto :goto_1b

    .line 3051
    .end local v8    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    :cond_36
    move-object/from16 v8, v29

    .end local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v8    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    if-lt v2, v4, :cond_40

    invoke-direct {v15, v5, v13}, Lcom/android/quickstep/views/RecentsView;->isSameGridRow(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/TaskView;)Z

    move-result v6

    if-nez v6, :cond_37

    .line 3052
    move/from16 v14, v46

    goto/16 :goto_21

    .line 3058
    :cond_37
    :goto_1b
    add-int/lit8 v6, v18, 0x1

    .end local v18    # "distanceFromDismissedTask":I
    .local v6, "distanceFromDismissedTask":I
    int-to-float v7, v6

    const v10, 0x3d4ccccd    # 0.05f

    mul-float/2addr v7, v10

    const v10, 0x3f0ccccd    # 0.55f

    add-float/2addr v7, v10

    const/4 v10, 0x0

    invoke-static {v7, v10, v3}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v7

    .line 3063
    .local v7, "animationStartProgress":F
    if-ne v5, v8, :cond_3a

    .line 3065
    iget v10, v15, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    int-to-float v10, v10

    iget-object v14, v15, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v14

    int-to-float v14, v14

    div-float/2addr v10, v14

    .line 3066
    .local v10, "scale":F
    sget-object v14, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 3067
    invoke-static {v1, v7, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 3066
    invoke-virtual {v9, v5, v14, v10, v1}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 3069
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v1

    .line 3070
    iget-boolean v14, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    move-object/from16 v34, v0

    if-eqz v14, :cond_38

    move/from16 v0, v46

    move v14, v0

    goto :goto_1c

    :cond_38
    move/from16 v14, v46

    .end local v0    # "child":Landroid/view/View;
    .end local v46    # "dismissedTaskWidth":F
    .local v14, "dismissedTaskWidth":F
    .local v34, "child":Landroid/view/View;
    neg-float v0, v14

    :goto_1c
    move/from16 v18, v6

    .end local v6    # "distanceFromDismissedTask":I
    .restart local v18    # "distanceFromDismissedTask":I
    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 3071
    invoke-static {v6, v7, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 3069
    invoke-virtual {v9, v5, v1, v0, v6}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 3073
    iget v0, v15, Lcom/android/quickstep/views/RecentsView;->mTaskGridVerticalDiff:F

    neg-float v0, v0

    .line 3074
    .local v0, "secondaryTranslation":F
    if-nez v17, :cond_39

    .line 3075
    iget v1, v15, Lcom/android/quickstep/views/RecentsView;->mTopBottomRowHeightDiff:F

    sub-float/2addr v0, v1

    .line 3077
    :cond_39
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getSecondaryDissmissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v1

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 3078
    invoke-static {v6, v7, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v6

    .line 3077
    invoke-virtual {v9, v5, v1, v0, v6}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 3080
    sget-object v1, Lcom/android/quickstep/views/TaskView;->FOCUS_TRANSITION:Landroid/util/FloatProperty;

    sget-object v6, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    move/from16 v37, v0

    .end local v0    # "secondaryTranslation":F
    .local v37, "secondaryTranslation":F
    const/high16 v0, 0x3f000000    # 0.5f

    .line 3081
    move/from16 v40, v10

    const/4 v10, 0x0

    .end local v10    # "scale":F
    .local v40, "scale":F
    invoke-static {v6, v10, v0}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 3080
    invoke-virtual {v9, v5, v1, v10, v0}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    .line 3082
    .end local v37    # "secondaryTranslation":F
    .end local v40    # "scale":F
    goto :goto_21

    .line 3084
    .end local v14    # "dismissedTaskWidth":F
    .end local v18    # "distanceFromDismissedTask":I
    .end local v34    # "child":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    .restart local v6    # "distanceFromDismissedTask":I
    .restart local v46    # "dismissedTaskWidth":F
    :cond_3a
    move-object/from16 v34, v0

    move/from16 v18, v6

    move/from16 v14, v46

    const/4 v10, 0x0

    .end local v0    # "child":Landroid/view/View;
    .end local v6    # "distanceFromDismissedTask":I
    .end local v46    # "dismissedTaskWidth":F
    .restart local v14    # "dismissedTaskWidth":F
    .restart local v18    # "distanceFromDismissedTask":I
    .restart local v34    # "child":Landroid/view/View;
    if-eqz v8, :cond_3b

    move/from16 v0, v24

    goto :goto_1d

    :cond_3b
    move v0, v14

    .line 3085
    .local v0, "primaryTranslation":F
    :goto_1d
    if-eqz v19, :cond_3e

    if-nez v8, :cond_3e

    .line 3087
    invoke-virtual {v15, v4}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v1

    .line 3088
    .local v1, "focusedTaskScroll":I
    iget-object v6, v15, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v6, v15}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v6

    .line 3089
    .local v6, "primaryScroll":I
    sub-int v10, v6, v1

    .line 3090
    .local v10, "focusedTaskScrollDiff":I
    nop

    .line 3091
    move/from16 v37, v1

    .end local v1    # "focusedTaskScroll":I
    .local v37, "focusedTaskScroll":I
    iget-boolean v1, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v1, :cond_3c

    int-to-float v1, v10

    goto :goto_1e

    :cond_3c
    neg-int v1, v10

    int-to-float v1, v1

    :goto_1e
    add-float/2addr v0, v1

    .line 3092
    if-eqz v27, :cond_3e

    .line 3094
    nop

    .line 3095
    iget-boolean v1, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v1, :cond_3d

    iget v1, v15, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    neg-int v1, v1

    goto :goto_1f

    :cond_3d
    iget v1, v15, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    :goto_1f
    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 3099
    .end local v6    # "primaryScroll":I
    .end local v10    # "focusedTaskScrollDiff":I
    .end local v37    # "focusedTaskScroll":I
    :cond_3e
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v1

    .line 3100
    iget-boolean v6, v15, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v6, :cond_3f

    move v6, v0

    goto :goto_20

    :cond_3f
    neg-float v6, v0

    :goto_20
    sget-object v10, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 3101
    invoke-static {v10, v7, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v10

    .line 3099
    invoke-virtual {v9, v5, v1, v6, v10}, Lcom/android/launcher3/anim/PendingAnimation;->setFloat(Ljava/lang/Object;Landroid/util/FloatProperty;FLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    goto :goto_21

    .line 3051
    .end local v7    # "animationStartProgress":F
    .end local v14    # "dismissedTaskWidth":F
    .end local v34    # "child":Landroid/view/View;
    .local v0, "child":Landroid/view/View;
    .restart local v46    # "dismissedTaskWidth":F
    :cond_40
    move-object/from16 v34, v0

    move/from16 v14, v46

    .end local v0    # "child":Landroid/view/View;
    .end local v46    # "dismissedTaskWidth":F
    .restart local v14    # "dismissedTaskWidth":F
    .restart local v34    # "child":Landroid/view/View;
    goto :goto_21

    .line 3043
    .end local v5    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v8    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v14    # "dismissedTaskWidth":F
    .end local v34    # "child":Landroid/view/View;
    .restart local v0    # "child":Landroid/view/View;
    .restart local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v46    # "dismissedTaskWidth":F
    :cond_41
    move-object/from16 v34, v0

    move-object/from16 v8, v29

    move/from16 v14, v46

    .line 2982
    .end local v0    # "child":Landroid/view/View;
    .end local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v46    # "dismissedTaskWidth":F
    .restart local v8    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v14    # "dismissedTaskWidth":F
    :goto_21
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v29, v8

    move/from16 v46, v14

    move/from16 v8, v33

    move/from16 v5, v38

    move/from16 v1, v39

    goto/16 :goto_13

    .end local v14    # "dismissedTaskWidth":F
    .end local v33    # "count":I
    .end local v38    # "taskCount":I
    .end local v39    # "isClearAllHidden":Z
    .local v1, "isClearAllHidden":Z
    .local v5, "taskCount":I
    .local v8, "count":I
    .restart local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v46    # "dismissedTaskWidth":F
    :cond_42
    move/from16 v39, v1

    move/from16 v38, v5

    move/from16 v33, v8

    move-object/from16 v8, v29

    move/from16 v14, v46

    .line 3107
    .end local v1    # "isClearAllHidden":Z
    .end local v2    # "i":I
    .end local v5    # "taskCount":I
    .end local v29    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v46    # "dismissedTaskWidth":F
    .local v8, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .restart local v14    # "dismissedTaskWidth":F
    .restart local v33    # "count":I
    .restart local v38    # "taskCount":I
    .restart local v39    # "isClearAllHidden":Z
    if-eqz v22, :cond_43

    .line 3108
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda17;

    invoke-direct {v0, v15}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda17;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v9, v0}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 3112
    :cond_43
    if-eqz p2, :cond_44

    .line 3113
    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {v13, v0}, Lcom/android/quickstep/views/TaskView;->setTranslationZ(F)V

    .line 3116
    :cond_44
    iput-object v9, v15, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    .line 3117
    move-object/from16 v20, v47

    .end local v47    # "newScroll":[I
    .local v20, "newScroll":[I
    move-object v10, v8

    .line 3118
    .local v10, "finalNextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    move-object/from16 v21, v36

    .end local v36    # "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    .local v21, "lastGridTaskView":Lcom/android/quickstep/views/TaskView;
    move/from16 v6, v25

    .line 3119
    .local v6, "finalCloseGapBetweenClearAll":Z
    move/from16 v29, v48

    .end local v48    # "scrollDiffPerPage":I
    .local v29, "scrollDiffPerPage":I
    move/from16 v7, v23

    .line 3120
    .local v7, "finalSnapToLastTask":Z
    move v0, v14

    move/from16 v34, v45

    .end local v14    # "dismissedTaskWidth":F
    .end local v45    # "lastGridTaskScroll":I
    .local v0, "dismissedTaskWidth":F
    .local v34, "lastGridTaskScroll":I
    move/from16 v14, v19

    .line 3121
    .local v14, "finalIsFocusedTaskDismissed":Z
    new-instance v5, Lcom/android/quickstep/views/RecentsView$16;

    move/from16 v35, v0

    .end local v0    # "dismissedTaskWidth":F
    .local v35, "dismissedTaskWidth":F
    move-object v0, v5

    move/from16 v36, v39

    .end local v39    # "isClearAllHidden":Z
    .local v36, "isClearAllHidden":Z
    move-object/from16 v1, p0

    move-object/from16 v37, v8

    .end local v8    # "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    .local v37, "nextFocusedTaskView":Lcom/android/quickstep/views/TaskView;
    move-object/from16 v2, p1

    move/from16 v40, v3

    move/from16 v39, v41

    .end local v3    # "dismissTranslationInterpolationEnd":F
    .end local v41    # "dismissedTaskViewId":I
    .local v39, "dismissedTaskViewId":I
    .local v40, "dismissTranslationInterpolationEnd":F
    move/from16 v3, p3

    move/from16 v41, v4

    .end local v4    # "dismissedIndex":I
    .local v41, "dismissedIndex":I
    move/from16 v4, v39

    move-object v8, v5

    move/from16 v5, v16

    move-object/from16 v49, v8

    move/from16 v8, v38

    move-object/from16 v50, v9

    .end local v9    # "anim":Lcom/android/launcher3/anim/PendingAnimation;
    .local v50, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    move/from16 v9, v36

    move/from16 v11, v27

    move/from16 v12, v28

    move/from16 v13, v41

    move/from16 v15, v31

    invoke-direct/range {v0 .. v15}, Lcom/android/quickstep/views/RecentsView$16;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;ZIZZZIZLcom/android/quickstep/views/TaskView;ZZIZZ)V

    move-object/from16 v1, v49

    move-object/from16 v0, v50

    .end local v50    # "anim":Lcom/android/launcher3/anim/PendingAnimation;
    .local v0, "anim":Lcom/android/launcher3/anim/PendingAnimation;
    invoke-virtual {v0, v1}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 3332
    return-object v0
.end method

.method public createTaskLaunchAnimation(Lcom/android/quickstep/views/TaskView;JLandroid/view/animation/Interpolator;)Lcom/android/launcher3/anim/PendingAnimation;
    .locals 11
    .param p1, "tv"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "duration"    # J
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 4318
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 4319
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 4320
    new-instance v1, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v1, p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    return-object v1

    .line 4325
    :cond_0
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties()V

    .line 4326
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateScrollSynchronously()V

    .line 4328
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getSysUiStatusNavFlags()I

    move-result v1

    .line 4329
    .local v1, "targetSysUiFlags":I
    const/4 v2, 0x1

    new-array v3, v2, [Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v4

    .line 4330
    .local v3, "passedOverviewThreshold":[Z
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 4331
    .local v5, "progressAnim":Landroid/animation/ValueAnimator;
    new-instance v6, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;

    invoke-direct {v6, p0, v1, v3}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;-><init>(Lcom/android/quickstep/views/RecentsView;I[Z)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4351
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 4353
    .local v6, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v7

    .line 4354
    .local v7, "depthController":Lcom/android/launcher3/statehandlers/DepthController;
    if-eqz v7, :cond_1

    .line 4355
    sget-object v8, Lcom/android/launcher3/statehandlers/DepthController;->DEPTH:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    sget-object v9, Lcom/android/launcher3/LauncherState;->BACKGROUND_APP:Lcom/android/launcher3/LauncherState;

    iget-object v10, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 4356
    invoke-virtual {v9, v10}, Lcom/android/launcher3/LauncherState;->getDepth(Landroid/content/Context;)F

    move-result v9

    aput v9, v2, v4

    .line 4355
    invoke-static {v7, v8, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4357
    .local v2, "depthAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual {v6, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4359
    .end local v2    # "depthAnimator":Landroid/animation/ObjectAnimator;
    :cond_1
    invoke-virtual {v6, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 4360
    invoke-virtual {v6, p4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4362
    new-instance v2, Lcom/android/launcher3/anim/PendingAnimation;

    invoke-direct {v2, p2, p3}, Lcom/android/launcher3/anim/PendingAnimation;-><init>(J)V

    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    .line 4363
    invoke-virtual {v2, v6}, Lcom/android/launcher3/anim/PendingAnimation;->add(Landroid/animation/Animator;)V

    .line 4364
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4365
    new-instance v2, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda39;

    invoke-direct {v2, p0, p4}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda39;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/view/animation/Interpolator;)V

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 4368
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    new-instance v4, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/launcher3/uioverrides/touchcontrollers/NavBarToHomeTouchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/anim/PendingAnimation;->addOnFrameCallback(Ljava/lang/Runnable;)V

    .line 4370
    :cond_2
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    new-instance v4, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda40;

    invoke-direct {v4, p0, p1, v6}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda40;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v2, v4}, Lcom/android/launcher3/anim/PendingAnimation;->addEndListener(Ljava/util/function/Consumer;)V

    .line 4399
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)V
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchSlopScale"    # F

    .line 1371
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isModal()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1372
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    .line 1374
    :cond_0
    return-void
.end method

.method public dismissAllTasks(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 3506
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const-wide/16 v0, 0x12c

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->createAllTasksDismissAnimation(J)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 3507
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_CLEAR_ALL:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 3508
    return-void
.end method

.method public dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V
    .locals 7
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "animateTaskView"    # Z
    .param p3, "removeTask"    # Z

    .line 3500
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const-wide/16 v4, 0x12c

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/quickstep/views/RecentsView;->createTaskDismissAnimation(Lcom/android/quickstep/views/TaskView;ZZJZ)Lcom/android/launcher3/anim/PendingAnimation;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runDismissAnimation(Lcom/android/launcher3/anim/PendingAnimation;)V

    .line 3502
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 772
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mAllowOverScroll:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/util/EdgeEffectCompat;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 773
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 775
    .local v0, "restoreCount":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getHeight()I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v1

    .line 776
    .local v1, "primarySize":I
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getUndampedOverScrollShift()F

    move-result v2

    invoke-static {v2, v1}, Lcom/android/launcher3/touch/OverScroll;->dampedScroll(FI)I

    move-result v2

    .line 777
    .local v2, "scroll":I
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    sget-object v4, Lcom/android/launcher3/touch/PagedOrientationHandler;->CANVAS_TRANSLATE:Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;

    int-to-float v5, v2

    invoke-interface {v3, p1, v4, v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setPrimary(Ljava/lang/Object;Lcom/android/launcher3/touch/PagedOrientationHandler$Float2DAction;F)V

    .line 779
    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    if-eq v3, v2, :cond_1

    .line 780
    iput v2, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    .line 781
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    .line 784
    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 785
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 786
    .end local v0    # "restoreCount":I
    .end local v1    # "primarySize":I
    .end local v2    # "scroll":I
    goto :goto_0

    .line 787
    :cond_2
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    if-eqz v0, :cond_3

    .line 788
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    .line 789
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    .line 791
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 793
    :goto_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-eqz v0, :cond_4

    .line 795
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    .line 797
    :cond_4
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 3519
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 3520
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 3533
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3535
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dismissCurrentTask()V

    .line 3536
    return v3

    .line 3530
    :sswitch_1
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dismissCurrentTask()V

    .line 3531
    return v3

    .line 3522
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3523
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    .line 3522
    invoke-direct {p0, v0, v2, v1}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(IIZ)Z

    move-result v0

    return v0

    .line 3525
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-direct {p0, v0, v2, v1}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(IIZ)Z

    move-result v0

    return v0

    .line 3527
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v0

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lcom/android/quickstep/views/RecentsView;->snapToPageRelative(IIZ)Z

    move-result v0

    return v0

    .line 3540
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_4
        0x16 -> :sswitch_3
        0x3d -> :sswitch_2
        0x43 -> :sswitch_1
        0x70 -> :sswitch_1
        0x9e -> :sswitch_0
    .end sparse-switch
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 982
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V

    .line 983
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->draw(Landroid/graphics/Canvas;)V

    .line 984
    return-void
.end method

.method protected drawEdgeEffect(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 767
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    return-void
.end method

.method public finishRecentsAnimation(ZLjava/lang/Runnable;)V
    .locals 1
    .param p1, "toRecents"    # Z
    .param p2, "onFinishComplete"    # Ljava/lang/Runnable;

    .line 4537
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    .line 4538
    return-void
.end method

.method public finishRecentsAnimation(ZZLjava/lang/Runnable;)V
    .locals 9
    .param p1, "toRecents"    # Z
    .param p2, "shouldPip"    # Z
    .param p3, "onFinishComplete"    # Ljava/lang/Runnable;

    .line 4543
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->cleanupRemoteTargets()V

    .line 4544
    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-object v1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4548
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setSplitScreenMinimized(Z)V

    .line 4551
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v1, :cond_2

    .line 4552
    if-eqz p3, :cond_1

    .line 4553
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 4555
    :cond_1
    return-void

    .line 4558
    :cond_2
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    .line 4559
    .local v2, "sendUserLeaveHint":Z
    :goto_0
    if-eqz v2, :cond_4

    .line 4561
    sget-object v3, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/quickstep/SystemUiProxy;

    .line 4562
    .local v3, "systemUiProxy":Lcom/android/quickstep/SystemUiProxy;
    invoke-virtual {v3}, Lcom/android/quickstep/SystemUiProxy;->notifySwipeToHomeFinished()V

    .line 4563
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    invoke-virtual {v3, v1, v4}, Lcom/android/quickstep/SystemUiProxy;->setShelfHeight(ZI)V

    .line 4566
    new-instance v1, Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    invoke-direct {v1}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;-><init>()V

    const/4 v4, 0x0

    .line 4568
    invoke-virtual {v1, v4}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->setAlpha(F)Landroid/window/PictureInPictureSurfaceTransaction$Builder;

    move-result-object v1

    .line 4569
    invoke-virtual {v1}, Landroid/window/PictureInPictureSurfaceTransaction$Builder;->build()Landroid/window/PictureInPictureSurfaceTransaction;

    move-result-object v1

    .line 4570
    .local v1, "tx":Landroid/window/PictureInPictureSurfaceTransaction;
    sget-object v4, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker;->getRunningSplitTaskIds()[I

    move-result-object v4

    .line 4571
    .local v4, "taskIds":[I
    array-length v5, v4

    :goto_1
    if-ge v0, v5, :cond_4

    aget v6, v4, v0

    .line 4572
    .local v6, "taskId":I
    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v1, v8}, Lcom/android/quickstep/RecentsAnimationController;->setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V

    .line 4571
    .end local v6    # "taskId":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4576
    .end local v1    # "tx":Landroid/window/PictureInPictureSurfaceTransaction;
    .end local v3    # "systemUiProxy":Lcom/android/quickstep/SystemUiProxy;
    .end local v4    # "taskIds":[I
    :cond_4
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda35;

    invoke-direct {v1, p0, p3}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda35;-><init>(Lcom/android/quickstep/views/RecentsView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/quickstep/RecentsAnimationController;->finish(ZLjava/lang/Runnable;Z)V

    .line 4582
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .line 4457
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const-class v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBottomRowTaskCountForTablet()I
    .locals 2

    .line 1579
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v1}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected getChildGap(II)I
    .locals 2
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .line 4624
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 4625
    .local v0, "clearAllIndex":I
    if-eq p1, v0, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 4626
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getClearAllExtraPageSpacing()I

    move-result v1

    .line 4625
    :goto_1
    return v1
.end method

.method protected getChildOffset(I)I
    .locals 6
    .param p1, "index"    # I

    .line 4738
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getChildOffset(I)I

    move-result v0

    .line 4739
    .local v0, "childOffset":I
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 4740
    .local v1, "child":Landroid/view/View;
    instance-of v2, v1, Lcom/android/quickstep/views/TaskView;

    if-eqz v2, :cond_0

    .line 4741
    int-to-float v2, v0

    move-object v3, v1

    check-cast v3, Lcom/android/quickstep/views/TaskView;

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v4

    .line 4742
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v5

    .line 4741
    invoke-virtual {v3, v4, v5}, Lcom/android/quickstep/views/TaskView;->getOffsetAdjustment(ZZ)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    goto :goto_0

    .line 4743
    :cond_0
    instance-of v2, v1, Lcom/android/quickstep/views/ClearAllButton;

    if-eqz v2, :cond_1

    .line 4744
    int-to-float v2, v0

    move-object v3, v1

    check-cast v3, Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewFullscreenEnabled:Z

    .line 4745
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v5

    .line 4744
    invoke-virtual {v3, v4, v5}, Lcom/android/quickstep/views/ClearAllButton;->getOffsetAdjustment(ZZ)F

    move-result v3

    add-float/2addr v2, v3

    float-to-int v0, v2

    .line 4747
    :cond_1
    :goto_0
    return v0
.end method

.method protected getChildVisibleSize(I)I
    .locals 3
    .param p1, "index"    # I

    .line 4752
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 4753
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_0

    .line 4754
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getChildVisibleSize(I)I

    move-result v1

    return v1

    .line 4756
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getChildVisibleSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 4757
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v2

    .line 4756
    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/TaskView;->getSizeAdjustment(Z)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getClearAllButton()Lcom/android/quickstep/views/ClearAllButton;
    .locals 1

    .line 4761
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    return-object v0
.end method

.method protected getClearAllExtraPageSpacing()I
    .locals 3

    .line 4630
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4631
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->overviewGridSideMargin:I

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    sub-int/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    .line 4632
    :cond_0
    nop

    .line 4630
    :goto_0
    return v1
.end method

.method public getClearAllScroll()I
    .locals 1

    .line 4679
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v0

    return v0
.end method

.method public getContentAlpha()F
    .locals 1

    .line 3562
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    return v0
.end method

.method protected getCurrentPageDescription()Ljava/lang/String;
    .locals 1

    .line 4418
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const-string v0, ""

    return-object v0
.end method

.method public getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 3653
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method protected getDepthController()Lcom/android/launcher3/statehandlers/DepthController;
    .locals 1

    .line 5001
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getDestinationPage(I)I
    .locals 4
    .param p1, "scaledScroll"    # I

    .line 1866
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    .line 1867
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->getDestinationPage(I)I

    move-result v0

    return v0

    .line 1869
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->pageScrollsInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1870
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "RecentsView"

    const-string v2, "Cannot get destination page: RecentsView not properly initialized"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1873
    const/4 v0, -0x1

    return v0

    .line 1878
    :cond_1
    const v0, 0x7fffffff

    .line 1879
    .local v0, "minDistanceFromScreenStart":I
    const/4 v1, -0x1

    .line 1880
    .local v1, "minDistanceFromScreenStartIndex":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1881
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mPageScrolls:[I

    aget v3, v3, v2

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1882
    .local v3, "distanceFromScreenStart":I
    if-ge v3, v0, :cond_2

    .line 1883
    move v0, v3

    .line 1884
    move v1, v2

    .line 1880
    .end local v3    # "distanceFromScreenStart":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1887
    .end local v2    # "i":I
    :cond_3
    return v1
.end method

.method public getEventDispatcher(F)Ljava/util/function/Consumer;
    .locals 2
    .param p1, "navbarRotation"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/function/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 4852
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    cmpl-float v1, p1, v0

    if-nez v1, :cond_0

    .line 4853
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    .local v1, "degreesRotated":F
    goto :goto_0

    .line 4855
    .end local v1    # "degreesRotated":F
    :cond_0
    neg-float v1, p1

    .line 4857
    .restart local v1    # "degreesRotated":F
    :goto_0
    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    .line 4858
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda32;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda32;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    return-object v0

    .line 4864
    :cond_1
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda33;-><init>(Lcom/android/quickstep/views/RecentsView;FF)V

    return-object v0
.end method

.method public getFocusedTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 2055
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public getGroupedTaskViewCount()I
    .locals 3

    .line 1559
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    .line 1560
    .local v0, "groupViewCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1561
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v2, :cond_0

    .line 1562
    add-int/lit8 v0, v0, 0x1

    .line 1560
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1565
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method protected getHomeTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 2079
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastComputedGridTaskSize()Landroid/graphics/Rect;
    .locals 1

    .line 1801
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getLastComputedTaskSize()Landroid/graphics/Rect;
    .locals 1

    .line 1797
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMaxScaleForFullScreen()F
    .locals 4

    .line 4307
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    .line 4308
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 4309
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempPointF:Landroid/graphics/PointF;

    .line 4308
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getFullScreenScaleAndPivot(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/PointF;)F

    move-result v0

    return v0
.end method

.method public getModalTaskSize(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 1806
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/quickstep/BaseActivityInterface;->calculateModalTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 1807
    return-void
.end method

.method public getNextPageTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 3658
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public getNextTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 3648
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public getOverScrollShift()I
    .locals 1

    .line 828
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverScrollShift:I

    return v0
.end method

.method protected getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z
    .locals 17
    .param p1, "outPageScrolls"    # [I
    .param p2, "layoutChildren"    # Z
    .param p3, "scrollLogic"    # Lcom/android/launcher3/PagedView$ComputePageScrollsLogic;

    .line 4685
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    array-length v3, v1

    new-array v3, v3, [I

    .line 4686
    .local v3, "newPageScrolls":[I
    move-object/from16 v4, p3

    invoke-super {v0, v3, v2, v4}, Lcom/android/launcher3/PagedView;->getPageScrolls([IZLcom/android/launcher3/PagedView$ComputePageScrollsLogic;)Z

    .line 4687
    invoke-direct/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsFullscreen()Z

    move-result v5

    .line 4688
    .local v5, "showAsFullscreen":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v6

    .line 4692
    .local v6, "showAsGrid":Z
    if-eqz v2, :cond_1

    .line 4693
    iget-object v7, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v8, v0, Lcom/android/quickstep/views/RecentsView;->mTaskWidth:I

    iget v9, v0, Lcom/android/quickstep/views/RecentsView;->mTaskHeight:I

    invoke-interface {v7, v8, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(II)I

    move-result v7

    iget-object v8, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v9, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    .line 4694
    invoke-interface {v8, v9}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    .line 4695
    .local v7, "clearAllWidthDiff":I
    iget-object v8, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v9, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v9, :cond_0

    int-to-float v9, v7

    goto :goto_0

    :cond_0
    neg-int v9, v7

    int-to-float v9, v9

    :goto_0
    invoke-virtual {v8, v9}, Lcom/android/quickstep/views/ClearAllButton;->setScrollOffsetPrimary(F)V

    .line 4698
    .end local v7    # "clearAllWidthDiff":I
    :cond_1
    const/4 v7, 0x0

    .line 4700
    .local v7, "pageScrollChanged":Z
    iget-object v8, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0, v8}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v8

    .line 4701
    .local v8, "clearAllIndex":I
    const/4 v9, 0x0

    .line 4702
    .local v9, "clearAllScroll":I
    iget-object v10, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v11, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-interface {v10, v11}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimarySize(Landroid/view/View;)I

    move-result v10

    .line 4703
    .local v10, "clearAllWidth":I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    array-length v11, v1

    if-ge v8, v11, :cond_2

    .line 4704
    iget-object v11, v0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v11, v5, v6}, Lcom/android/quickstep/views/ClearAllButton;->getScrollAdjustment(ZZ)F

    move-result v11

    .line 4705
    .local v11, "scrollDiff":F
    aget v12, v3, v8

    float-to-int v13, v11

    add-int v9, v12, v13

    .line 4706
    aget v12, v1, v8

    if-eq v12, v9, :cond_2

    .line 4707
    const/4 v7, 0x1

    .line 4708
    aput v9, v1, v8

    .line 4712
    .end local v11    # "scrollDiff":F
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v11

    .line 4713
    .local v11, "taskCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v11, :cond_7

    .line 4714
    invoke-direct {v0, v12}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v13

    .line 4715
    .local v13, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v13, v5, v6}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(ZZ)F

    move-result v14

    .line 4716
    .local v14, "scrollDiff":F
    aget v15, v3, v12

    float-to-int v2, v14

    add-int/2addr v15, v2

    .line 4717
    .local v15, "pageScroll":I
    invoke-direct {v0, v9, v10}, Lcom/android/quickstep/views/RecentsView;->getLastTaskScroll(II)I

    move-result v2

    .line 4718
    .local v2, "lastTaskScroll":I
    move-object/from16 v16, v3

    .end local v3    # "newPageScrolls":[I
    .local v16, "newPageScrolls":[I
    iget-boolean v3, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v3, :cond_3

    if-lt v15, v2, :cond_4

    :cond_3
    iget-boolean v3, v0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-nez v3, :cond_5

    if-le v15, v2, :cond_5

    .line 4720
    :cond_4
    move v15, v2

    .line 4722
    :cond_5
    aget v3, v1, v12

    if-eq v3, v15, :cond_6

    .line 4723
    const/4 v3, 0x1

    .line 4724
    .end local v7    # "pageScrollChanged":Z
    .local v3, "pageScrollChanged":Z
    aput v15, v1, v12

    move v7, v3

    .line 4713
    .end local v2    # "lastTaskScroll":I
    .end local v3    # "pageScrollChanged":Z
    .end local v13    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v14    # "scrollDiff":F
    .end local v15    # "pageScroll":I
    .restart local v7    # "pageScrollChanged":Z
    :cond_6
    add-int/lit8 v12, v12, 0x1

    move/from16 v2, p2

    move-object/from16 v3, v16

    goto :goto_1

    .line 4733
    .end local v12    # "i":I
    .end local v16    # "newPageScrolls":[I
    .local v3, "newPageScrolls":[I
    :cond_7
    return v7
.end method

.method public getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1

    .line 3643
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    return-object v0
.end method

.method public getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;
    .locals 1

    .line 3639
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    return-object v0
.end method

.method public getPipCornerRadius()I
    .locals 1

    .line 5113
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mPipCornerRadius:I

    return v0
.end method

.method public getPipShadowRadius()I
    .locals 1

    .line 5121
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mPipShadowRadius:I

    return v0
.end method

.method public getRecentsAnimationController()Lcom/android/quickstep/RecentsAnimationController;
    .locals 1

    .line 5250
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    return-object v0
.end method

.method public getRemoteTargetHandles()[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    .locals 1

    .line 4479
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    return-object v0
.end method

.method public getRunningTaskIndex()I
    .locals 2

    .line 2074
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 2075
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getRunningTaskView()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 2051
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewFromTaskViewId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public getRunningTaskViewId()I
    .locals 1

    .line 2033
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    return v0
.end method

.method public getScrollOffset()I
    .locals 1

    .line 4768
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset(I)I

    move-result v0

    return v0
.end method

.method public getScrollOffset(I)I
    .locals 4
    .param p1, "pageIndex"    # I

    .line 4775
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 4776
    const/4 v0, 0x0

    return v0

    .line 4779
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getOverScrollShift()I

    move-result v0

    .line 4780
    .local v0, "overScrollShift":I
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mAdjacentPageHorizontalOffset:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 4783
    int-to-float v2, v0

    .line 4784
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->getUndampedOverScrollShift()F

    move-result v3

    .line 4783
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    float-to-int v0, v1

    .line 4786
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v2, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 4787
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getOffsetFromScrollPosition(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 4786
    return v1
.end method

.method public getScroller()Landroid/widget/OverScroller;
    .locals 1

    .line 751
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method public getSelectedTaskSize()Landroid/graphics/Point;
    .locals 4

    .line 1790
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 1792
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;
    .locals 1

    .line 5021
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    return-object v0
.end method

.method public getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;
    .locals 1

    .line 892
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    return-object v0
.end method

.method public getSplitSelectTranslation()F
    .locals 5

    .line 4157
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v0

    .line 4158
    .local v0, "splitPosition":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->shouldShiftThumbnailsForSplitSelect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4159
    const/4 v1, 0x0

    return v1

    .line 4161
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    .line 4162
    .local v1, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 4163
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 4162
    invoke-interface {v1, v0, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitTranslationDirectionFactor(ILcom/android/launcher3/DeviceProfile;)I

    move-result v2

    .line 4164
    .local v2, "direction":I
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$dimen;->split_placeholder_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    int-to-float v4, v2

    mul-float/2addr v3, v4

    return v3
.end method

.method protected getTaskIdsForRunningTaskView()[I
    .locals 1

    .line 2037
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForTaskViewId(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getTaskIndexForId(I)I
    .locals 2
    .param p1, "taskId"    # I

    .line 2105
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 2106
    .local v0, "tv":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getTaskOverlayFactory()Lcom/android/quickstep/TaskOverlayFactory;
    .locals 1

    .line 5017
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

    return-object v0
.end method

.method public getTaskSize(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 1782
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/quickstep/BaseActivityInterface;->calculateTaskSize(Landroid/content/Context;Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 1783
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1784
    return-void
.end method

.method public getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;
    .locals 2
    .param p1, "index"    # I

    .line 3671
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3672
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/quickstep/views/TaskView;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/android/quickstep/views/TaskView;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;
    .locals 5
    .param p1, "taskId"    # I

    .line 1173
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1174
    return-object v0

    .line 1177
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 1178
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 1179
    .local v2, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v3

    .line 1180
    .local v3, "taskIds":[I
    const/4 v4, 0x0

    aget v4, v3, v4

    if-eq v4, p1, :cond_2

    const/4 v4, 0x1

    aget v4, v3, v4

    if-ne v4, p1, :cond_1

    goto :goto_1

    .line 1177
    .end local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v3    # "taskIds":[I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1181
    .restart local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    .restart local v3    # "taskIds":[I
    :cond_2
    :goto_1
    return-object v2

    .line 1184
    .end local v1    # "i":I
    .end local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v3    # "taskIds":[I
    :cond_3
    return-object v0
.end method

.method public getTaskViewCount()I
    .locals 3

    .line 1551
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    .line 1552
    .local v0, "taskViewCount":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1553
    add-int/lit8 v0, v0, -0x1

    .line 1555
    :cond_0
    return v0
.end method

.method public getTaskViewNearestToCenterOfScreen()Lcom/android/quickstep/views/TaskView;
    .locals 1

    .line 3663
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageNearestToCenterOfScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    return-object v0
.end method

.method public getTopRowTaskCountForTablet()I
    .locals 1

    .line 1572
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    invoke-virtual {v0}, Lcom/android/launcher3/util/IntSet;->size()I

    move-result v0

    return v0
.end method

.method public init(Lcom/android/quickstep/views/OverviewActionsView;Lcom/android/quickstep/util/SplitSelectStateController;)V
    .locals 3
    .param p1, "actionsView"    # Lcom/android/quickstep/views/OverviewActionsView;
    .param p2, "splitController"    # Lcom/android/quickstep/util/SplitSelectStateController;

    .line 885
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    .line 886
    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OverviewActionsView;->setRecentsView(Lcom/android/quickstep/views/RecentsView;)V

    .line 887
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    .line 888
    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    .line 889
    return-void
.end method

.method protected initEdgeEffect()V
    .locals 2

    .line 760
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    new-instance v0, Lcom/android/launcher3/util/TranslateEdgeEffect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TranslateEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowLeft:Lcom/android/launcher3/util/EdgeEffectCompat;

    .line 761
    new-instance v0, Lcom/android/launcher3/util/TranslateEdgeEffect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TranslateEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEdgeGlowRight:Lcom/android/launcher3/util/EdgeEffectCompat;

    .line 762
    return-void
.end method

.method public initiateSplitSelect(Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;)V
    .locals 3
    .param p1, "splitSelectSource"    # Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    .line 4027
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    .line 4028
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    iget-object v1, p1, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;->intent:Landroid/content/Intent;

    iget-object v2, p1, Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;->position:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    iget v2, v2, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(Landroid/content/Intent;I)V

    .line 4030
    return-void
.end method

.method public initiateSplitSelect(Lcom/android/quickstep/views/TaskView;)V
    .locals 2
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;

    .line 4011
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 4012
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDefaultSplitPosition(Lcom/android/launcher3/DeviceProfile;)I

    move-result v0

    .line 4013
    .local v0, "defaultSplitPosition":I
    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/quickstep/views/TaskView;I)V

    .line 4014
    return-void
.end method

.method public initiateSplitSelect(Lcom/android/quickstep/views/TaskView;I)V
    .locals 2
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "stagePosition"    # I

    .line 4017
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    .line 4018
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/util/SplitSelectStateController;->setInitialTaskSelect(II)V

    .line 4020
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    .line 4021
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4022
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    .line 4024
    :cond_0
    return-void
.end method

.method public isClearAllHidden()Z
    .locals 2

    .line 1208
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0}, Lcom/android/quickstep/views/ClearAllButton;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLoadingTasks()Z
    .locals 1

    .line 1538
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->isLoadingTasksInBackground()Z

    move-result v0

    return v0
.end method

.method public isOnGridBottomRow(Lcom/android/quickstep/views/TaskView;)Z
    .locals 2
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;

    .line 4845
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTopRowIdSet:Lcom/android/launcher3/util/IntSet;

    .line 4846
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4847
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v0

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4845
    :goto_0
    return v0
.end method

.method protected isPageOrderFlipped()Z
    .locals 1

    .line 4462
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isRtl()Z
    .locals 1

    .line 755
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    return v0
.end method

.method protected isSignificantMove(FI)Z
    .locals 3
    .param p1, "absoluteDelta"    # F
    .param p2, "pageOrientedSize"    # I

    .line 1232
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1233
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v1, :cond_0

    .line 1234
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/PagedView;->isSignificantMove(FI)Z

    move-result v1

    return v1

    .line 1237
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

.method public isSplitSelectionActive()Z
    .locals 1

    .line 896
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->isSplitSelectActive()Z

    move-result v0

    return v0
.end method

.method public isTaskInExpectedScrollPosition(I)Z
    .locals 2
    .param p1, "taskIndex"    # I

    .line 1160
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z
    .locals 3
    .param p1, "tv"    # Lcom/android/quickstep/views/TaskView;

    .line 1084
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 1086
    .local v0, "screenStart":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1087
    .local v1, "screenEnd":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result v2

    return v2

    .line 1090
    .end local v0    # "screenStart":I
    .end local v1    # "screenEnd":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z
    .locals 3
    .param p1, "tv"    # Lcom/android/quickstep/views/TaskView;

    .line 1073
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 1075
    .local v0, "screenStart":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v1

    add-int/2addr v1, v0

    .line 1076
    .local v1, "screenEnd":I
    invoke-direct {p0, p1, v0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result v2

    return v2

    .line 1079
    .end local v0    # "screenStart":I
    .end local v1    # "screenEnd":I
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method synthetic lambda$addDismissedTaskAnimations$10$com-android-quickstep-views-RecentsView(Lcom/android/quickstep/views/TaskView;)V
    .locals 1
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;

    .line 2740
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda26;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda26;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 2746
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    .line 2747
    return-void
.end method

.method synthetic lambda$addDismissedTaskAnimations$9$com-android-quickstep-views-RecentsView(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 4
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 2741
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/util/TaskViewSimulator;->taskSecondaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 2743
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTranslationX()F

    move-result v2

    .line 2744
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTranslationY()F

    move-result v3

    .line 2743
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(FF)F

    move-result v1

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 2741
    return-void
.end method

.method synthetic lambda$animateRecentsRotationInPlace$8$com-android-quickstep-views-RecentsView(I)V
    .locals 1
    .param p1, "newRotation"    # I

    .line 2156
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getDisplayRotation()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    .line 2157
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/views/BaseDragLayer;->recreateControllers()V

    .line 2158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2159
    return-void
.end method

.method synthetic lambda$applyLoadPlan$3$com-android-quickstep-views-RecentsView(Ljava/util/ArrayList;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "taskGroups"    # Ljava/util/ArrayList;
    .param p2, "success"    # Ljava/lang/Boolean;

    .line 1414
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->applyLoadPlan(Ljava/util/ArrayList;)V

    return-void
.end method

.method synthetic lambda$confirmSplitSelect$24$com-android-quickstep-views-RecentsView(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "aBoolean1"    # Ljava/lang/Boolean;

    .line 4096
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetFromSplitSelectionState()V

    return-void
.end method

.method synthetic lambda$confirmSplitSelect$25$com-android-quickstep-views-RecentsView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "aBoolean"    # Ljava/lang/Boolean;

    .line 4095
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda11;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->launchSplitTasks(Ljava/util/function/Consumer;)V

    .line 4097
    const/16 v0, 0x31

    invoke-static {v0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    .line 4098
    return-void
.end method

.method synthetic lambda$createAllTasksDismissAnimation$18$com-android-quickstep-views-RecentsView()V
    .locals 5

    .line 3458
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 3459
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda12;

    invoke-direct {v2, v1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/shared/system/ActivityManagerWrapper;)V

    .line 3458
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3461
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->removeTasksViewsAndClearAllButton()V

    .line 3462
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    .line 3463
    return-void
.end method

.method synthetic lambda$createAllTasksDismissAnimation$19$com-android-quickstep-views-RecentsView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "isSuccess"    # Ljava/lang/Boolean;

    .line 3455
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3457
    const/4 v0, 0x1

    const/4 v1, 0x0

    new-instance v2, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda25;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZZLjava/lang/Runnable;)V

    .line 3465
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    .line 3466
    return-void
.end method

.method synthetic lambda$createInitialSplitSelectAnimation$11$com-android-quickstep-views-RecentsView(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "success"    # Ljava/lang/Boolean;

    .line 2781
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x31

    if-eqz v0, :cond_0

    .line 2782
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2783
    invoke-static {v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    goto :goto_0

    .line 2786
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->cancel(I)V

    .line 2789
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onDismissAnimationEnds()V

    .line 2790
    return-void
.end method

.method synthetic lambda$createTaskDismissAnimation$14$com-android-quickstep-views-RecentsView(Lcom/android/quickstep/views/TaskView;)V
    .locals 1
    .param p1, "taskView"    # Lcom/android/quickstep/views/TaskView;

    .line 2957
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda29;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda29;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 2962
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    .line 2963
    return-void
.end method

.method synthetic lambda$createTaskDismissAnimation$15$com-android-quickstep-views-RecentsView(Landroid/view/View;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 3032
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 3035
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v2

    .line 3036
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v3

    .line 3034
    invoke-interface {v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v1

    iput v1, v0, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 3032
    return-void
.end method

.method synthetic lambda$createTaskDismissAnimation$16$com-android-quickstep-views-RecentsView(Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 3030
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda21;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda21;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 3038
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->redrawLiveTile()V

    .line 3039
    return-void
.end method

.method synthetic lambda$createTaskLaunchAnimation$26$com-android-quickstep-views-RecentsView(I[ZLandroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "targetSysUiFlags"    # I
    .param p2, "passedOverviewThreshold"    # [Z
    .param p3, "animator"    # Landroid/animation/ValueAnimator;

    .line 4334
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const v1, 0x3f59999a    # 0.85f

    cmpl-float v0, v0, v1

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 4335
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    goto :goto_0

    .line 4338
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    .line 4342
    :goto_0
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-ltz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    .line 4344
    .local v0, "passed":Z
    :goto_1
    aget-boolean v3, p2, v2

    if-eq v0, v3, :cond_2

    .line 4345
    aput-boolean v0, p2, v2

    .line 4346
    invoke-virtual {p0, v1, v1}, Lcom/android/quickstep/views/RecentsView;->performHapticFeedback(II)Z

    .line 4349
    :cond_2
    return-void
.end method

.method synthetic lambda$createTaskLaunchAnimation$27$com-android-quickstep-views-RecentsView(Landroid/view/animation/Interpolator;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p2, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 4366
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p2}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    .line 4367
    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/util/TaskViewSimulator;->addOverviewToAppAnim(Lcom/android/launcher3/anim/PendingAnimation;Landroid/animation/TimeInterpolator;)V

    .line 4366
    return-void
.end method

.method synthetic lambda$createTaskLaunchAnimation$29$com-android-quickstep-views-RecentsView(Lcom/android/quickstep/views/TaskView;Landroid/animation/AnimatorSet;Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "tv"    # Lcom/android/quickstep/views/TaskView;
    .param p2, "anim"    # Landroid/animation/AnimatorSet;
    .param p3, "isSuccess"    # Ljava/lang/Boolean;

    .line 4371
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 4372
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v0

    const/4 v3, 0x1

    aget v0, v0, v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-eqz v0, :cond_0

    .line 4374
    aget-object v0, v0, v2

    .line 4375
    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    new-instance v4, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda7;-><init>()V

    .line 4374
    invoke-static {v0, v3, v4}, Lcom/android/quickstep/TaskViewUtils;->createSplitAuxiliarySurfacesAnimator([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLjava/util/function/Consumer;)Landroid/animation/ValueAnimator;

    .line 4381
    :cond_0
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4382
    invoke-virtual {p0, v2, v1}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    .line 4383
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchAnimationEnd(Z)V

    goto :goto_0

    .line 4385
    :cond_1
    const-wide/16 v2, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 4386
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->reverse()V

    .line 4387
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;)V

    .line 4389
    :goto_0
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    .line 4390
    .local v0, "task":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v0, :cond_2

    .line 4391
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_SWIPE_DOWN:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 4392
    invoke-interface {v2, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 4394
    .end local v0    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_2
    goto :goto_1

    .line 4395
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchAnimationEnd(Z)V

    .line 4397
    :goto_1
    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mPendingAnimation:Lcom/android/launcher3/anim/PendingAnimation;

    .line 4398
    return-void
.end method

.method synthetic lambda$dispatchScrollChanged$35$com-android-quickstep-views-RecentsView(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 5188
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    return-void
.end method

.method synthetic lambda$finishRecentsAnimation$32$com-android-quickstep-views-RecentsView(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "onFinishComplete"    # Ljava/lang/Runnable;

    .line 4577
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    if-eqz p1, :cond_0

    .line 4578
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4580
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->onRecentsAnimationComplete()V

    .line 4581
    return-void
.end method

.method synthetic lambda$getEventDispatcher$33$com-android-quickstep-views-RecentsView(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "x$0"    # Landroid/view/MotionEvent;

    .line 4858
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

.method synthetic lambda$getEventDispatcher$34$com-android-quickstep-views-RecentsView(FFLandroid/view/MotionEvent;)V
    .locals 3
    .param p1, "navbarRotation"    # F
    .param p2, "degreesRotated"    # F
    .param p3, "e"    # Landroid/view/MotionEvent;

    .line 4865
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 4866
    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->isMultipleOrientationSupportedByDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    .line 4867
    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->isLayoutNaturalToLauncher()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4868
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p3}, Lcom/android/quickstep/util/RecentsOrientedState;->flipVertical(Landroid/view/MotionEvent;)V

    .line 4869
    invoke-super {p0, p3}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4870
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p3}, Lcom/android/quickstep/util/RecentsOrientedState;->flipVertical(Landroid/view/MotionEvent;)V

    .line 4871
    return-void

    .line 4873
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    neg-float v1, p2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/quickstep/util/RecentsOrientedState;->transformEvent(FLandroid/view/MotionEvent;Z)V

    .line 4874
    invoke-super {p0, p3}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4875
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    neg-float v1, p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Lcom/android/quickstep/util/RecentsOrientedState;->transformEvent(FLandroid/view/MotionEvent;Z)V

    .line 4876
    return-void
.end method

.method synthetic lambda$launchSideTaskInLiveTileMode$2$com-android-quickstep-views-RecentsView([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/animation/ValueAnimator;)V
    .locals 8
    .param p1, "apps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p2, "surfaceApplier"    # Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .param p3, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .line 1047
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 1048
    .local v0, "percent":F
    new-instance v1, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-object v2, p1, v2

    iget-object v2, v2, Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;->leash:Landroid/view/SurfaceControl;

    invoke-direct {v1, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 1050
    .local v1, "builder":Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1051
    .local v2, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1052
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v0

    mul-float/2addr v4, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v4, v6

    iget-object v7, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 1053
    invoke-virtual {v7}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    iget v7, v7, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    int-to-float v7, v7

    sub-float/2addr v5, v0

    mul-float/2addr v7, v5

    div-float/2addr v7, v6

    .line 1052
    invoke-virtual {v2, v4, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1054
    invoke-virtual {v1, v0}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withAlpha(F)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->withMatrix(Landroid/graphics/Matrix;)Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;

    .line 1055
    new-array v3, v3, [Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    invoke-virtual {v1}, Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams$Builder;->build()Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2, v3}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply([Lcom/android/systemui/shared/system/SyncRtSurfaceTransactionApplierCompat$SurfaceParams;)V

    .line 1056
    return-void
.end method

.method synthetic lambda$onAttachedToWindow$0$com-android-quickstep-views-RecentsView(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 915
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    .line 916
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    .line 915
    return-void
.end method

.method synthetic lambda$onLayout$20$com-android-quickstep-views-RecentsView(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 2
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 3726
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v0

    .line 3727
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollOffset()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TaskViewSimulator;->setScroll(F)V

    .line 3726
    return-void
.end method

.method synthetic lambda$reset$7$com-android-quickstep-views-RecentsView()V
    .locals 3

    .line 2023
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->unloadVisibleTaskData(I)V

    .line 2024
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 2025
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/quickstep/util/LayoutUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 2026
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2027
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler(Z)V

    .line 2029
    :cond_0
    return-void
.end method

.method synthetic lambda$setRecentsAnimationTargets$31$com-android-quickstep-views-RecentsView(Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V
    .locals 4
    .param p1, "remoteTargetHandle"    # Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 4500
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    .line 4501
    .local v0, "params":Lcom/android/quickstep/util/TransformParams;
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-eqz v1, :cond_0

    .line 4502
    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/TransformParams;->setSyncTransactionApplier(Lcom/android/quickstep/util/SurfaceTransactionApplier;)Lcom/android/quickstep/util/TransformParams;

    .line 4503
    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/RemoteAnimationTargets;->addReleaseCheck(Lcom/android/quickstep/RemoteAnimationTargets$ReleaseCheck;)V

    .line 4506
    :cond_0
    invoke-virtual {p1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTaskViewSimulator()Lcom/android/quickstep/util/TaskViewSimulator;

    move-result-object v1

    .line 4507
    .local v1, "tvs":Lcom/android/quickstep/util/TaskViewSimulator;
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 4508
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/quickstep/util/TaskViewSimulator;->setDp(Lcom/android/launcher3/DeviceProfile;)V

    .line 4509
    iget-object v2, v1, Lcom/android/quickstep/util/TaskViewSimulator;->recentsViewScale:Lcom/android/quickstep/AnimatedFloat;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/quickstep/AnimatedFloat;->value:F

    .line 4510
    return-void
.end method

.method synthetic lambda$updateLocusId$36$com-android-quickstep-views-RecentsView(Landroid/content/LocusId;)V
    .locals 2
    .param p1, "id"    # Landroid/content/LocusId;

    .line 5265
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->setLocusContext(Landroid/content/LocusId;Landroid/os/Bundle;)V

    return-void
.end method

.method public launchSideTaskInLiveTileMode(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .locals 11
    .param p1, "taskId"    # I
    .param p2, "apps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p3, "wallpaper"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .param p4, "nonApps"    # [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 1037
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1038
    .local v0, "anim":Landroid/animation/AnimatorSet;
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v10

    .line 1039
    .local v10, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v10, :cond_1

    invoke-virtual {p0, v10}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1065
    :cond_0
    const/4 v6, 0x1

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 1066
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v7

    .line 1067
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v9

    .line 1065
    move-object v1, v0

    move-object v2, v10

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p0

    invoke-static/range {v1 .. v9}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    goto :goto_1

    .line 1041
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 1042
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    .line 1043
    .local v1, "surfaceApplier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1044
    .local v2, "appAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x150

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1045
    sget-object v3, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1046
    new-instance v3, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2, v1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;-><init>(Lcom/android/quickstep/views/RecentsView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1057
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1058
    new-instance v3, Lcom/android/quickstep/views/RecentsView$13;

    invoke-direct {v3, p0}, Lcom/android/quickstep/views/RecentsView$13;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1064
    .end local v1    # "surfaceApplier":Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .end local v2    # "appAnimator":Landroid/animation/ValueAnimator;
    nop

    .line 1069
    :goto_1
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1070
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public launchSideTaskInLiveTileModeForRestartedApp(I)V
    .locals 6
    .param p1, "taskId"    # I

    .line 1020
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewIdFromTaskId(I)I

    move-result v0

    .line 1021
    .local v0, "runningTaskViewId":I
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    if-ne v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-nez v1, :cond_0

    goto :goto_0

    .line 1027
    :cond_0
    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    .line 1028
    .local v1, "params":Lcom/android/quickstep/util/TransformParams;
    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v2

    .line 1029
    .local v2, "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/quickstep/RemoteAnimationTargets;->findTask(I)Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1030
    iget-object v3, v2, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, v2, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v5, v2, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/quickstep/views/RecentsView;->launchSideTaskInLiveTileMode(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V

    .line 1033
    :cond_1
    return-void

    .line 1024
    .end local v1    # "params":Lcom/android/quickstep/util/TransformParams;
    .end local v2    # "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    :cond_2
    :goto_0
    return-void
.end method

.method public loadVisibleTaskData(I)V
    .locals 16
    .param p1, "dataChanges"    # I

    .line 1895
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/quickstep/views/RecentsView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 1896
    .local v1, "hasLeftOverview":Z
    :goto_0
    if-nez v1, :cond_d

    iget v4, v0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move/from16 v2, p1

    goto/16 :goto_9

    .line 1902
    :cond_1
    const/4 v4, 0x0

    .line 1903
    .local v4, "lower":I
    const/4 v5, 0x0

    .line 1904
    .local v5, "upper":I
    const/4 v6, 0x0

    .line 1905
    .local v6, "visibleStart":I
    const/4 v7, 0x0

    .line 1906
    .local v7, "visibleEnd":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1907
    iget-object v8, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v8, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v8

    .line 1908
    .local v8, "screenStart":I
    iget-object v9, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v9, v0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getMeasuredSize(Landroid/view/View;)I

    move-result v9

    .line 1909
    .local v9, "pageOrientedSize":I
    div-int/lit8 v10, v9, 0x2

    .line 1911
    .local v10, "halfScreenSize":I
    sub-int v6, v8, v10

    .line 1912
    add-int v11, v8, v9

    add-int v7, v11, v10

    .line 1913
    .end local v8    # "screenStart":I
    .end local v9    # "pageOrientedSize":I
    .end local v10    # "halfScreenSize":I
    goto :goto_1

    .line 1914
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getPageNearestToCenterOfScreen()I

    move-result v8

    .line 1915
    .local v8, "centerPageIndex":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v9

    .line 1916
    .local v9, "numChildren":I
    add-int/lit8 v10, v8, -0x2

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1917
    add-int/lit8 v10, v8, 0x2

    add-int/lit8 v11, v9, -0x1

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1921
    .end local v8    # "centerPageIndex":I
    .end local v9    # "numChildren":I
    :goto_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 1922
    invoke-direct {v0, v8}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v9

    .line 1923
    .local v9, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v9}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v10

    .line 1924
    .local v10, "task":Lcom/android/systemui/shared/recents/model/Task;
    invoke-virtual {v0, v9}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v11

    .line 1926
    .local v11, "index":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1927
    invoke-direct {v0, v9, v6, v7}, Lcom/android/quickstep/views/RecentsView;->isTaskViewWithinBounds(Lcom/android/quickstep/views/TaskView;II)Z

    move-result v12

    .local v12, "visible":Z
    goto :goto_3

    .line 1929
    .end local v12    # "visible":Z
    :cond_3
    if-gt v4, v11, :cond_4

    if-gt v11, v5, :cond_4

    const/4 v12, 0x1

    goto :goto_3

    :cond_4
    move v12, v2

    .line 1931
    .restart local v12    # "visible":Z
    :goto_3
    if-eqz v12, :cond_a

    .line 1932
    const/4 v13, 0x0

    .line 1933
    .local v13, "skipLoadingTask":Z
    iget-object v14, v0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v14, :cond_6

    .line 1934
    array-length v15, v14

    :goto_4
    if-ge v2, v15, :cond_6

    aget-object v3, v14, v2

    .line 1935
    .local v3, "t":Lcom/android/systemui/shared/recents/model/Task;
    if-ne v10, v3, :cond_5

    .line 1937
    const/4 v13, 0x1

    .line 1938
    goto :goto_5

    .line 1934
    .end local v3    # "t":Lcom/android/systemui/shared/recents/model/Task;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1942
    :cond_6
    :goto_5
    if-eqz v13, :cond_7

    .line 1943
    move/from16 v2, p1

    const/4 v3, 0x1

    const/4 v13, 0x0

    goto :goto_8

    .line 1945
    :cond_7
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v3, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1948
    move/from16 v2, p1

    .line 1949
    .local v2, "changes":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-ne v9, v3, :cond_8

    iget-boolean v3, v0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    if-eqz v3, :cond_8

    .line 1950
    and-int/lit8 v2, v2, -0x3

    .line 1952
    :cond_8
    const/4 v3, 0x1

    invoke-virtual {v9, v3, v2}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    goto :goto_6

    .line 1945
    .end local v2    # "changes":I
    :cond_9
    const/4 v3, 0x1

    .line 1954
    :goto_6
    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v14, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v14, v14, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v14, v12}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1955
    .end local v13    # "skipLoadingTask":Z
    move/from16 v2, p1

    const/4 v13, 0x0

    goto :goto_8

    .line 1956
    :cond_a
    const/4 v3, 0x1

    iget-object v2, v0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v13, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v13, v13, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v2, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1957
    move/from16 v2, p1

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v2}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    goto :goto_7

    .line 1956
    :cond_b
    move/from16 v2, p1

    const/4 v13, 0x0

    .line 1959
    :goto_7
    iget-object v14, v0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    iget-object v15, v10, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v15, v15, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v14, v15}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1921
    .end local v9    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v10    # "task":Lcom/android/systemui/shared/recents/model/Task;
    .end local v11    # "index":I
    .end local v12    # "visible":Z
    :goto_8
    add-int/lit8 v8, v8, 0x1

    move v2, v13

    goto/16 :goto_2

    :cond_c
    move/from16 v2, p1

    .line 1962
    .end local v8    # "i":I
    return-void

    .line 1896
    .end local v4    # "lower":I
    .end local v5    # "upper":I
    .end local v6    # "visibleStart":I
    .end local v7    # "visibleEnd":I
    :cond_d
    move/from16 v2, p1

    .line 1899
    :goto_9
    return-void
.end method

.method protected maybeDrawEmptyMessage(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 4236
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 4238
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 4239
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    .line 4238
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 4240
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4241
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollX()I

    move-result v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4243
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4244
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    .line 4245
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePadding:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 4244
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4246
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 4247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4249
    :cond_0
    return-void
.end method

.method public moveFocusedTaskToFront()V
    .locals 4

    .line 1381
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    .line 1382
    return-void

    .line 1385
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 1386
    .local v0, "focusedTaskView":Lcom/android/quickstep/views/TaskView;
    if-nez v0, :cond_1

    .line 1387
    return-void

    .line 1390
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    if-eq v1, v2, :cond_2

    .line 1391
    return-void

    .line 1394
    :cond_2
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    if-nez v1, :cond_3

    .line 1395
    return-void

    .line 1398
    :cond_3
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v1, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v1

    .line 1399
    .local v1, "primaryScroll":I
    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v2

    .line 1400
    .local v2, "currentPageScroll":I
    sub-int v3, v1, v2

    iput v3, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    .line 1402
    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mMovingTaskView:Lcom/android/quickstep/views/TaskView;

    .line 1403
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 1404
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mMovingTaskView:Lcom/android/quickstep/views/TaskView;

    .line 1405
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->resetPersistentViewTransforms()V

    .line 1406
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/quickstep/views/RecentsView;->addView(Landroid/view/View;I)V

    .line 1407
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 1409
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties()V

    .line 1410
    return-void
.end method

.method protected notifyPageSwitchListener(I)V
    .locals 1
    .param p1, "prevPage"    # I

    .line 4410
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->notifyPageSwitchListener(I)V

    .line 4411
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurrentTaskActionsVisibility()V

    .line 4412
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    .line 4413
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateEnabledOverlays()V

    .line 4414
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 909
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onAttachedToWindow()V

    .line 910
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    .line 911
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->addCallback(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V

    .line 912
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    .line 913
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 914
    new-instance v0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    .line 915
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda34;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 917
    sget-object v0, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/RecentsModel;->addThumbnailChangeListener(Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;)V

    .line 918
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0, v1, p0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->setActivityAndRecentsView(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V

    .line 919
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    .line 921
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->initListeners()V

    .line 922
    sget-object v0, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/util/SplitScreenBounds;->addOnChangeListener(Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;)V

    .line 923
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory;->initListeners()V

    .line 924
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 3619
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3620
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateRecentsRotation()V

    .line 3621
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->onOrientationChanged()V

    .line 3622
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .line 928
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onDetachedFromWindow()V

    .line 929
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    .line 930
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v0}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/TaskThumbnailCache;->getHighResLoadingState()Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState;->removeCallback(Lcom/android/quickstep/TaskThumbnailCache$HighResLoadingState$HighResLoadingStateChangedCallback;)V

    .line 931
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    .line 932
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskStackListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    .line 933
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    .line 934
    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda22;

    invoke-direct {v1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda22;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 936
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->executeSideTaskLaunchCallback()V

    .line 937
    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v1, p0}, Lcom/android/quickstep/RecentsModel;->removeThumbnailChangeListener(Lcom/android/quickstep/RecentsModel$TaskVisualsChangeListener;)V

    .line 938
    sget-object v1, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/SystemUiProxy;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/SystemUiProxy;->setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/IPipAnimationListener;)V

    .line 939
    sget-object v1, Lcom/android/quickstep/util/SplitScreenBounds;->INSTANCE:Lcom/android/quickstep/util/SplitScreenBounds;

    invoke-virtual {v1, p0}, Lcom/android/quickstep/util/SplitScreenBounds;->removeOnChangeListener(Lcom/android/quickstep/util/SplitScreenBounds$OnChangeListener;)V

    .line 940
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mIPipAnimationListener:Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;

    invoke-virtual {v1, v0, v0}, Lcom/android/quickstep/views/RecentsView$PinnedStackAnimationListener;->setActivityAndRecentsView(Lcom/android/launcher3/BaseActivity;Lcom/android/quickstep/views/RecentsView;)V

    .line 941
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->destroyListeners()V

    .line 942
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskOverlayFactory:Lcom/android/quickstep/TaskOverlayFactory;

    invoke-virtual {v0}, Lcom/android/quickstep/TaskOverlayFactory;->removeListeners()V

    .line 943
    return-void
.end method

.method protected onDismissAnimationEnds()V
    .locals 1

    .line 3439
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendDismissAnimationEndsEventToTest(Landroid/content/Context;)V

    .line 3440
    return-void
.end method

.method protected onEdgeAbsorbingScroll()V
    .locals 0

    .line 1351
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->vibrateForScroll()V

    .line 1352
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "gainFocus"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3546
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/PagedView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 3547
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3548
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 3550
    :sswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 3551
    goto :goto_0

    .line 3555
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentPage(I)V

    .line 3559
    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x11 -> :sswitch_1
        0x42 -> :sswitch_1
    .end sparse-switch
.end method

.method public onGestureAnimationEnd()V
    .locals 4

    .line 2229
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    .line 2230
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2231
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler(Z)V

    .line 2234
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setEnableFreeScroll(Z)V

    .line 2235
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    sget-object v3, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne v2, v3, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    .line 2236
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2237
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    .line 2239
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    .line 2240
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->animateUpTaskIconScale()V

    .line 2241
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->animateActionsViewIn()V

    .line 2243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 2244
    return-void
.end method

.method public onGestureAnimationStart([Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 3
    .param p1, "runningTasks"    # [Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "rotationTouchHelper"    # Lcom/android/quickstep/RotationTouchHelper;

    .line 2123
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mGestureActive:Z

    .line 2125
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setGestureActive(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2126
    invoke-virtual {p2}, Lcom/android/quickstep/RotationTouchHelper;->getCurrentActiveRotation()I

    move-result v1

    .line 2127
    invoke-virtual {p2}, Lcom/android/quickstep/RotationTouchHelper;->getDisplayRotation()I

    move-result v2

    .line 2126
    invoke-virtual {p0, v1, v2}, Lcom/android/quickstep/views/RecentsView;->setLayoutRotation(II)V

    .line 2130
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateSizeAndPadding()V

    .line 2133
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->showCurrentTask([Lcom/android/systemui/shared/recents/model/Task;)V

    .line 2134
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setEnableFreeScroll(Z)V

    .line 2135
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    .line 2136
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    .line 2137
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setTaskIconScaledDown(Z)V

    .line 2138
    return-void
.end method

.method public onHighResLoadingStateChanged(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .line 1983
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1984
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1985
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 1986
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v1, :cond_0

    .line 1989
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    .line 1983
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1993
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 4441
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4443
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 4444
    .local v0, "taskViewCount":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4446
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v3

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_1

    .line 4447
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getVisibleChildrenRange()[I

    move-result-object v3

    .line 4448
    .local v3, "visibleTasks":[I
    aget v1, v3, v1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 4449
    aget v1, v3, v2

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 4450
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 4452
    .end local v3    # "visibleTasks":[I
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 4431
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 4433
    nop

    .line 4434
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 4433
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object v0

    .line 4436
    .local v0, "collectionInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    .line 4437
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 3708
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstLayout:Z

    if-nez v0, :cond_0

    .line 3709
    return-void

    .line 3712
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowAsGridLastOnLayout:Z

    .line 3714
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/PagedView;->onLayout(ZIIII)V

    .line 3716
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyStateUi(Z)V

    .line 3719
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskSize(Landroid/graphics/Rect;)V

    .line 3720
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePivots()V

    .line 3721
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setTaskModalness(F)V

    .line 3722
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskStartPushOutDistance:Ljava/lang/Float;

    .line 3723
    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskEndPushOutDistance:Ljava/lang/Float;

    .line 3724
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePageOffsets()V

    .line 3725
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda41;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda41;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 3728
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isModal()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    .line 3729
    :cond_1
    const/4 v0, 0x0

    .line 3728
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setImportantForAccessibility(I)V

    .line 3730
    return-void
.end method

.method protected onNotSnappingToPageInFreeScroll()V
    .locals 10

    .line 1310
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v0

    .line 1311
    .local v0, "finalPos":I
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mMinScroll:I

    if-le v0, v1, :cond_8

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mMaxScroll:I

    if-ge v0, v1, :cond_8

    .line 1312
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v1

    .line 1313
    .local v1, "firstPageScroll":I
    iget-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v4

    sub-int/2addr v4, v3

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v4

    .line 1319
    .local v4, "lastPageScroll":I
    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mMinScroll:I

    add-int/2addr v5, v1

    div-int/lit8 v5, v5, 0x2

    if-ge v0, v5, :cond_2

    .line 1320
    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mMinScroll:I

    goto :goto_2

    .line 1321
    :cond_2
    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mMaxScroll:I

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    if-le v0, v5, :cond_3

    .line 1322
    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mMaxScroll:I

    goto :goto_2

    .line 1323
    :cond_3
    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mNextPage:I

    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v5

    :goto_2
    nop

    .line 1325
    .local v5, "pageSnapped":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1326
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1327
    return-void

    .line 1329
    :cond_4
    iget v6, p0, Lcom/android/quickstep/views/RecentsView;->mNextPage:I

    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v6

    .line 1331
    .local v6, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1332
    invoke-virtual {p0, v6}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v7, v3

    goto :goto_3

    :cond_5
    move v7, v2

    .line 1333
    .local v7, "shouldSnapToFocusedTask":Z
    :goto_3
    iget v8, p0, Lcom/android/quickstep/views/RecentsView;->mNextPage:I

    iget-object v9, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {p0, v9}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v9

    if-ne v8, v9, :cond_6

    move v2, v3

    .line 1334
    .local v2, "shouldSnapToClearAll":Z
    :cond_6
    if-nez v7, :cond_7

    if-nez v2, :cond_7

    .line 1335
    return-void

    .line 1339
    .end local v2    # "shouldSnapToClearAll":Z
    .end local v6    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v7    # "shouldSnapToFocusedTask":Z
    :cond_7
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v5}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 1341
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mScroller:Landroid/widget/OverScroller;

    .line 1342
    invoke-virtual {v2}, Landroid/widget/OverScroller;->getDuration()I

    move-result v2

    rsub-int v2, v2, 0x10e

    .line 1343
    .local v2, "extraScrollDuration":I
    if-lez v2, :cond_8

    .line 1344
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v3, v2}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 1347
    .end local v1    # "firstPageScroll":I
    .end local v2    # "extraScrollDuration":I
    .end local v4    # "lastPageScroll":I
    .end local v5    # "pageSnapped":I
    :cond_8
    return-void
.end method

.method protected onPageBeginTransition()V
    .locals 2

    .line 1213
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageBeginTransition()V

    .line 1214
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    .line 1215
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    .line 1217
    :cond_0
    return-void
.end method

.method protected onPageEndTransition()V
    .locals 3

    .line 1221
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onPageEndTransition()V

    .line 1222
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_0

    .line 1223
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    .line 1225
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    if-lez v0, :cond_1

    .line 1226
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    .line 1228
    :cond_1
    return-void
.end method

.method public onPrepareGestureEndAnimation(Landroid/animation/AnimatorSet;Lcom/android/quickstep/GestureState$GestureEndTarget;[Lcom/android/quickstep/util/TaskViewSimulator;)V
    .locals 9
    .param p1, "animatorSet"    # Landroid/animation/AnimatorSet;
    .param p2, "endTarget"    # Lcom/android/quickstep/GestureState$GestureEndTarget;
    .param p3, "taskViewSimulators"    # [Lcom/android/quickstep/util/TaskViewSimulator;

    .line 2193
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    .line 2194
    sget-object v0, Lcom/android/quickstep/GestureState$GestureEndTarget;->RECENTS:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-ne p2, v0, :cond_0

    .line 2195
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateGridProperties()V

    .line 2198
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    invoke-virtual {v0, p2}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 2199
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2200
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 2201
    .local v0, "runningTaskView":Lcom/android/quickstep/views/TaskView;
    const/4 v1, 0x0

    .line 2202
    .local v1, "runningTaskPrimaryGridTranslation":F
    if-eqz v0, :cond_1

    .line 2205
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    .line 2206
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getGridTranslationX()F

    move-result v3

    .line 2207
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getGridTranslationY()F

    move-result v4

    .line 2205
    invoke-interface {v2, v3, v4}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(FF)F

    move-result v2

    .line 2208
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v1, v2, v3

    .line 2211
    :cond_1
    array-length v2, p3

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, p3, v4

    .line 2212
    .local v5, "tvs":Lcom/android/quickstep/util/TaskViewSimulator;
    const/high16 v6, 0x3f800000    # 1.0f

    if-nez p1, :cond_2

    .line 2213
    invoke-direct {p0, v6}, Lcom/android/quickstep/views/RecentsView;->setGridProgress(F)V

    .line 2214
    iget-object v6, v5, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    iput v1, v6, Lcom/android/quickstep/AnimatedFloat;->value:F

    goto :goto_1

    .line 2217
    :cond_2
    sget-object v7, Lcom/android/quickstep/views/RecentsView;->RECENTS_GRID_PROGRESS:Landroid/util/FloatProperty;

    const/4 v8, 0x1

    new-array v8, v8, [F

    aput v6, v8, v3

    invoke-static {p0, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2218
    iget-object v6, v5, Lcom/android/quickstep/util/TaskViewSimulator;->taskPrimaryTranslation:Lcom/android/quickstep/AnimatedFloat;

    invoke-virtual {v6, v1}, Lcom/android/quickstep/AnimatedFloat;->animateToValue(F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2211
    .end local v5    # "tvs":Lcom/android/quickstep/util/TaskViewSimulator;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2223
    .end local v0    # "runningTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v1    # "runningTaskPrimaryGridTranslation":F
    :cond_3
    return-void
.end method

.method public onRecentsAnimationComplete()V
    .locals 2

    .line 4590
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    .line 4596
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    .line 4597
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 4598
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->setRecentsAnimationRunning(Z)V

    .line 4599
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->executeSideTaskLaunchCallback()V

    .line 4600
    return-void
.end method

.method protected onRotateInSplitSelectionState()V
    .locals 6

    .line 4168
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderSize:I

    iget v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitPlaceholderInset:I

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 4169
    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    .line 4170
    invoke-virtual {v4}, Lcom/android/quickstep/util/SplitSelectStateController;->getActiveSplitStagePosition()I

    move-result v4

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    .line 4168
    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getInitialSplitPlaceholderBounds(IILcom/android/launcher3/DeviceProfile;ILandroid/graphics/Rect;)V

    .line 4171
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4172
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/FloatingTaskView;->updateOrientationHandler(Lcom/android/launcher3/touch/PagedOrientationHandler;)V

    .line 4173
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTempRectF:Landroid/graphics/RectF;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/FloatingTaskView;->update(Landroid/graphics/RectF;F)V

    .line 4175
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    .line 4176
    .local v0, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->TASK_PRIMARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/RecentsView;->TASK_SECONDARY_SPLIT_TRANSLATION:Landroid/util/FloatProperty;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 4179
    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v3

    .line 4177
    invoke-interface {v0, v1, v2, v3}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSplitSelectTaskOffset(Landroid/util/FloatProperty;Landroid/util/FloatProperty;Lcom/android/launcher3/DeviceProfile;)Landroid/util/Pair;

    move-result-object v1

    .line 4180
    .local v1, "taskViewsFloat":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/util/FloatProperty;Landroid/util/FloatProperty;>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/util/FloatProperty;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSplitSelectTranslation()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 4181
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/FloatProperty;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, p0, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 4183
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->applySplitPrimaryScrollOffset()V

    .line 4184
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .line 5182
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/PagedView;->onScrollChanged(IIII)V

    .line 5183
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->dispatchScrollChanged()V

    .line 5184
    return-void
.end method

.method protected onScrollOverPageChanged()V
    .locals 0

    .line 1356
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->vibrateForScroll()V

    .line 1357
    return-void
.end method

.method public onSecondaryWindowBoundsChanged()V
    .locals 1

    .line 5007
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setInsets(Landroid/graphics/Rect;)V

    .line 5008
    return-void
.end method

.method public onSwipeUpAnimationSuccess()V
    .locals 1

    .line 2145
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->animateUpTaskIconScale()V

    .line 2146
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setSwipeDownShouldLaunchApp(Z)V

    .line 2147
    return-void
.end method

.method public onTaskIconChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    .line 852
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 853
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 854
    .local v1, "tv":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    .line 855
    .local v2, "task":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v3}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    .line 856
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 857
    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 858
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/IconView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 859
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    .line 852
    .end local v1    # "tv":Lcom/android/quickstep/views/TaskView;
    .end local v2    # "task":Lcom/android/systemui/shared/recents/model/Task;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 863
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method protected onTaskLaunchAnimationEnd(Z)V
    .locals 0
    .param p1, "success"    # Z

    .line 4403
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    if-eqz p1, :cond_0

    .line 4404
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    .line 4406
    :cond_0
    return-void
.end method

.method public onTaskLaunchedInLiveTileMode()V
    .locals 1

    .line 1002
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchListener:Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;

    if-eqz v0, :cond_0

    .line 1003
    invoke-interface {v0}, Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;->onTaskLaunched()V

    .line 1004
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchListener:Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;

    .line 1006
    :cond_0
    return-void
.end method

.method protected onTaskStackUpdated()V
    .locals 0

    .line 1584
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    .line 1585
    return-void
.end method

.method public onTaskThumbnailChanged(ILcom/android/systemui/shared/recents/model/ThumbnailData;)Lcom/android/systemui/shared/recents/model/Task;
    .locals 7
    .param p1, "taskId"    # I
    .param p2, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 834
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mHandleTaskStackChanges:Z

    if-eqz v0, :cond_3

    .line 835
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 836
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_3

    .line 838
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 839
    .local v4, "container":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v5

    iget-object v5, v5, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v5, v5, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq p1, v5, :cond_0

    .line 840
    goto :goto_1

    .line 842
    :cond_0
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 838
    .end local v4    # "container":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 844
    :cond_2
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    return-object v1

    .line 847
    .end local v0    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1243
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1245
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 1246
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 1247
    .local v0, "taskCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1248
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    .line 1249
    .local v3, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->isTaskViewVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, p1}, Lcom/android/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1251
    return v1

    .line 1247
    .end local v3    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1254
    .end local v0    # "taskCount":I
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 1255
    :cond_2
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 1256
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskView;->offerTouchToChildren(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1258
    return v1

    .line 1262
    .end local v0    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 1263
    .local v0, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 1264
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 1272
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    .line 1273
    goto/16 :goto_4

    .line 1276
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    if-eqz v1, :cond_a

    .line 1277
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isHandlingTouch()Z

    move-result v1

    if-nez v1, :cond_4

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    sub-int/2addr v1, v0

    int-to-float v1, v1

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    sub-int/2addr v3, v2

    int-to-float v3, v3

    .line 1278
    invoke-static {v1, v3}, Lcom/android/launcher3/Utilities;->squaredHypot(FF)F

    move-result v1

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mSquaredTouchSlop:F

    cmpl-float v1, v1, v3

    if-lez v1, :cond_a

    .line 1279
    :cond_4
    iput-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    goto :goto_4

    .line 1266
    :pswitch_2
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    if-eqz v1, :cond_5

    .line 1267
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->startHome()V

    .line 1269
    :cond_5
    iput-boolean v4, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    .line 1270
    goto :goto_4

    .line 1285
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isHandlingTouch()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->isModal()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1286
    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v3, :cond_6

    .line 1287
    iput-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    goto :goto_3

    .line 1289
    :cond_6
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateDeadZoneRects()V

    .line 1290
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    .line 1291
    invoke-virtual {v3}, Lcom/android/quickstep/views/ClearAllButton;->getAlpha()F

    move-result v3

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v5

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButtonDeadZoneRect:Landroid/graphics/Rect;

    .line 1292
    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v1

    goto :goto_2

    :cond_7
    move v3, v4

    .line 1293
    .local v3, "clearAllButtonDeadZoneConsumed":Z
    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x100

    if-eqz v5, :cond_8

    move v4, v1

    .line 1294
    .local v4, "cameFromNavBar":Z
    :cond_8
    if-nez v3, :cond_9

    if-nez v4, :cond_9

    iget-object v5, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewDeadZoneRect:Landroid/graphics/Rect;

    .line 1295
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScrollX()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_9

    .line 1296
    iput-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mTouchDownToStartHome:Z

    .line 1300
    .end local v3    # "clearAllButtonDeadZoneConsumed":Z
    .end local v4    # "cameFromNavBar":Z
    :cond_9
    :goto_3
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mDownX:I

    .line 1301
    iput v2, p0, Lcom/android/quickstep/views/RecentsView;->mDownY:I

    .line 1305
    :cond_a
    :goto_4
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->isHandlingTouch()Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 3
    .param p1, "child"    # Landroid/view/View;

    .line 971
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewAdded(Landroid/view/View;)V

    .line 972
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 975
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutDirection(I)V

    .line 976
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    .line 977
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateEmptyMessage()V

    .line 978
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 7
    .param p1, "child"    # Landroid/view/View;

    .line 947
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onViewRemoved(Landroid/view/View;)V

    .line 953
    instance-of v0, p1, Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mMovingTaskView:Lcom/android/quickstep/views/TaskView;

    if-eq p1, v0, :cond_3

    .line 955
    move-object v0, p1

    check-cast v0, Lcom/android/quickstep/views/TaskView;

    .line 956
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    .line 957
    .local v5, "i":I
    iget-object v6, p0, Lcom/android/quickstep/views/RecentsView;->mHasVisibleTaskData:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 956
    .end local v5    # "i":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 959
    :cond_0
    instance-of v1, p1, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v1, :cond_1

    .line 960
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mGroupedTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    move-object v2, v0

    check-cast v2, Lcom/android/quickstep/views/GroupedTaskView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/ViewPool;->recycle(Landroid/view/View;)V

    goto :goto_1

    .line 962
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewPool:Lcom/android/launcher3/util/ViewPool;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/ViewPool;->recycle(Landroid/view/View;)V

    .line 964
    :goto_1
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setTaskViewId(I)V

    .line 965
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v4

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {v1, v2, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    .line 967
    .end local v0    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_3
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .line 880
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->onWindowVisibilityChanged(I)V

    .line 881
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    .line 882
    return-void
.end method

.method public redrawLiveTile()V
    .locals 1

    .line 4470
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda18;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 4476
    return-void
.end method

.method public reloadIfNeeded()V
    .locals 2

    .line 2113
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->isTaskListValid(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2114
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mModel:Lcom/android/quickstep/RecentsModel;

    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda19;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v0, v1}, Lcom/android/quickstep/RecentsModel;->getTasks(Ljava/util/function/Consumer;)I

    move-result v0

    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    .line 2116
    :cond_0
    return-void
.end method

.method public removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 5105
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 5106
    return-void
.end method

.method public reset()V
    .locals 3

    .line 1998
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setCurrentTask(I)V

    .line 1999
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPageScrollDiff:I

    .line 2000
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    .line 2001
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskListChangeId:I

    .line 2002
    iput v0, p0, Lcom/android/quickstep/views/RecentsView;->mFocusedTaskViewId:I

    .line 2004
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-eqz v0, :cond_1

    .line 2005
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    if-eqz v0, :cond_0

    .line 2007
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/views/RecentsView;->finishRecentsAnimation(ZLjava/lang/Runnable;)V

    goto :goto_0

    .line 2009
    :cond_0
    iput-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 2012
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setEnableDrawingLiveTile(Z)V

    .line 2013
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda36;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 2017
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetFromSplitSelectionState()V

    .line 2018
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    invoke-virtual {v0}, Lcom/android/quickstep/util/SplitSelectStateController;->resetState()V

    .line 2022
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda37;

    invoke-direct {v0, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda37;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->post(Ljava/lang/Runnable;)Z

    .line 2030
    return-void
.end method

.method protected resetFromSplitSelectionState()V
    .locals 10

    .line 4115
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->getInstance()Lcom/sonymobile/launcher/idd/Idd$AppLaunch;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "recent"

    invoke-virtual {v0, v1, v2}, Lcom/sonymobile/launcher/idd/Idd$AppLaunch;->count(Landroid/content/Context;Ljava/lang/String;)V

    .line 4116
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->send(Landroid/content/Context;)V

    .line 4117
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    if-eq v0, v2, :cond_3

    .line 4118
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    if-eqz v0, :cond_1

    .line 4119
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherRootView;->removeView(Landroid/view/View;)V

    .line 4120
    iput-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mFirstFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    .line 4122
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    if-eqz v0, :cond_2

    .line 4123
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getRootView()Lcom/android/launcher3/LauncherRootView;

    move-result-object v0

    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/LauncherRootView;->removeView(Landroid/view/View;)V

    .line 4124
    iput-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSecondFloatingTaskView:Lcom/android/quickstep/views/FloatingTaskView;

    .line 4125
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSecondSplitHiddenView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4126
    iput-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSecondSplitHiddenView:Landroid/view/View;

    .line 4128
    :cond_2
    iput-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectSource:Lcom/android/launcher3/popup/QuickstepSystemShortcut$SplitSelectSource;

    .line 4131
    :cond_3
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    if-ne v0, v2, :cond_4

    .line 4132
    return-void

    .line 4134
    :cond_4
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_6

    .line 4135
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentPage:I

    .line 4136
    .local v0, "pageToSnapTo":I
    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    if-gt v4, v0, :cond_5

    .line 4137
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4139
    :cond_5
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    .line 4141
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->snapToPageImmediately(I)Z

    .line 4143
    .end local v0    # "pageToSnapTo":I
    :cond_6
    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getLeft()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTop()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRight()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getBottom()I

    move-result v9

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/quickstep/views/RecentsView;->onLayout(ZIIII)V

    .line 4144
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    .line 4145
    iput v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskViewIndex:I

    .line 4146
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    if-eqz v0, :cond_7

    .line 4147
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setVisibility(I)V

    .line 4148
    iput-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    .line 4150
    :cond_7
    return-void
.end method

.method public resetModalVisuals()V
    .locals 2

    .line 4004
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPageTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 4005
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_0

    .line 4006
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->resetModalVisuals()V

    .line 4008
    :cond_0
    return-void
.end method

.method public resetSplitPrimaryScrollOffset()V
    .locals 3

    .line 3994
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 3995
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/TaskView;->setSplitScrollOffsetPrimary(F)V

    .line 3994
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3997
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v0, v2}, Lcom/android/quickstep/views/ClearAllButton;->setSplitSelectScrollOffsetPrimary(F)V

    .line 3998
    return-void
.end method

.method public resetTaskVisuals()V
    .locals 6

    .line 1588
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 1589
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    .line 1590
    .local v2, "taskView":Lcom/android/quickstep/views/TaskView;
    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    if-eq v3, v4, :cond_1

    .line 1591
    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskView;->resetViewTransforms()V

    .line 1592
    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setIconScaleAndDim(F)V

    .line 1593
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    .line 1594
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setFullscreenProgress(F)V

    .line 1595
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskModalness:F

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskView;->setModalness(F)V

    .line 1588
    .end local v2    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1598
    .end local v0    # "i":I
    :cond_2
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1602
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 1611
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskShowScreenshot:Z

    if-nez v0, :cond_3

    .line 1612
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    .line 1615
    :cond_3
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-eqz v0, :cond_4

    .line 1616
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    .line 1619
    :cond_4
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateCurveProperties()V

    .line 1621
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->loadVisibleTaskData(I)V

    .line 1622
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setTaskModalness(F)V

    .line 1623
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setColorTint(F)V

    .line 1624
    return-void
.end method

.method public runActionOnRemoteHandles(Ljava/util/function/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;",
            ">;)V"
        }
    .end annotation

    .line 4524
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    if-nez v0, :cond_0

    .line 4525
    return-void

    .line 4528
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 4529
    .local v3, "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 4528
    .end local v3    # "handle":Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4531
    :cond_1
    return-void
.end method

.method public scrollLeft()Z
    .locals 6

    .line 5126
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5127
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollLeft()Z

    move-result v0

    return v0

    .line 5130
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    .line 5131
    .local v0, "targetPage":I
    if-ltz v0, :cond_8

    .line 5133
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 5134
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-ltz v2, :cond_2

    .line 5135
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    goto :goto_0

    .line 5138
    :cond_2
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v2, :cond_3

    .line 5139
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    goto :goto_1

    .line 5140
    :cond_3
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridSize:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 5141
    :goto_1
    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    goto :goto_2

    :cond_4
    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mPageSpacing:I

    neg-int v3, v3

    :goto_2
    add-int/2addr v2, v3

    .line 5142
    .local v2, "lastTaskEnd":I
    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v3, :cond_5

    .line 5143
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    goto :goto_3

    .line 5144
    :cond_5
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedGridTaskSize:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    :goto_3
    nop

    .line 5145
    .local v3, "normalTaskEnd":I
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr v4, v2

    .line 5147
    .local v4, "targetScroll":I
    :goto_4
    add-int/lit8 v5, v0, -0x1

    if-ltz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/quickstep/views/RecentsView;->mIsRtl:Z

    if-eqz v5, :cond_6

    add-int/lit8 v5, v0, -0x1

    .line 5149
    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v5

    if-ge v5, v4, :cond_7

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v0, -0x1

    .line 5150
    invoke-virtual {p0, v5}, Lcom/android/quickstep/views/RecentsView;->getScrollForPage(I)I

    move-result v5

    if-le v5, v4, :cond_7

    .line 5151
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 5153
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->snapToPage(I)Z

    .line 5154
    const/4 v5, 0x1

    return v5

    .line 5157
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    .end local v2    # "lastTaskEnd":I
    .end local v3    # "normalTaskEnd":I
    .end local v4    # "targetScroll":I
    :cond_8
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mAllowOverScroll:Z

    return v1
.end method

.method public scrollRight()Z
    .locals 4

    .line 5162
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->showAsGrid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5163
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->scrollRight()Z

    move-result v0

    return v0

    .line 5166
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getNextPage()I

    move-result v0

    .line 5167
    .local v0, "targetPage":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5169
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 5170
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->isTaskViewFullyVisible(Lcom/android/quickstep/views/TaskView;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    .line 5171
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5172
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    goto :goto_0

    .line 5174
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->snapToPage(I)Z

    .line 5175
    const/4 v2, 0x1

    return v2

    .line 5177
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    :cond_2
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mAllowOverScroll:Z

    return v1
.end method

.method public setContentAlpha(F)V
    .locals 8
    .param p1, "alpha"    # F

    .line 3566
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 3567
    return-void

    .line 3569
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 3570
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    .line 3571
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskIdsForRunningTaskView()[I

    move-result-object v0

    const/4 v2, 0x0

    aget v0, v0, v2

    .line 3572
    .local v0, "runningTaskId":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 3573
    invoke-direct {p0, v3}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v5

    .line 3574
    .local v5, "child":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v5}, Lcom/android/quickstep/views/TaskView;->getTaskIds()[I

    move-result-object v6

    .line 3575
    .local v6, "childTaskIds":[I
    iget-boolean v7, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    if-eqz v7, :cond_1

    aget v7, v6, v2

    if-eq v7, v0, :cond_2

    aget v7, v6, v4

    if-eq v7, v0, :cond_2

    .line 3577
    :cond_1
    invoke-virtual {v5, p1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    .line 3572
    .end local v5    # "child":Lcom/android/quickstep/views/TaskView;
    .end local v6    # "childTaskIds":[I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 3580
    .end local v3    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget v4, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v3, v4}, Lcom/android/quickstep/views/ClearAllButton;->setContentAlpha(F)V

    .line 3581
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 3582
    .local v3, "alphaInt":I
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessagePaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 3583
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 3584
    iget-object v4, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v4}, Lcom/android/quickstep/views/OverviewActionsView;->getContentAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v4

    iget v5, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 3586
    cmpl-float v1, p1, v1

    if-lez v1, :cond_4

    .line 3587
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    goto :goto_1

    .line 3588
    :cond_4
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mFreezeViewVisibility:Z

    if-nez v1, :cond_5

    .line 3589
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    .line 3591
    :cond_5
    :goto_1
    return-void
.end method

.method public setCurrentTask(I)V
    .locals 2
    .param p1, "runningTaskViewId"    # I

    .line 2329
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    if-ne v0, p1, :cond_0

    .line 2330
    return-void

    .line 2333
    :cond_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 2335
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setTaskIconScaledDown(Z)V

    .line 2336
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskViewShowScreenshot(Z)V

    .line 2337
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setRunningTaskHidden(Z)V

    .line 2339
    :cond_1
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskViewId:I

    .line 2340
    return-void
.end method

.method public setDisallowScrollToClearAll(Z)V
    .locals 1
    .param p1, "disallowScrollToClearAll"    # Z

    .line 4603
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mDisallowScrollToClearAll:Z

    if-eq v0, p1, :cond_0

    .line 4604
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mDisallowScrollToClearAll:Z

    .line 4605
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateMinAndMaxScrollX()V

    .line 4607
    :cond_0
    return-void
.end method

.method public setEnableDrawingLiveTile(Z)V
    .locals 0
    .param p1, "enableDrawingLiveTile"    # Z

    .line 4466
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mEnableDrawingLiveTile:Z

    .line 4467
    return-void
.end method

.method public setFreezeViewVisibility(Z)V
    .locals 2
    .param p1, "freezeViewVisibility"    # Z

    .line 3598
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mFreezeViewVisibility:Z

    if-eq v0, p1, :cond_1

    .line 3599
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mFreezeViewVisibility:Z

    .line 3600
    if-nez p1, :cond_1

    .line 3601
    iget v0, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->setVisibility(I)V

    .line 3604
    :cond_1
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 8
    .param p1, "fullscreenProgress"    # F

    .line 1627
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    .line 1628
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 1629
    .local v0, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1630
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    iget v3, p0, Lcom/android/quickstep/views/RecentsView;->mFullscreenProgress:F

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskView;->setFullscreenProgress(F)V

    .line 1629
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1632
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    invoke-virtual {v1, p1}, Lcom/android/quickstep/views/ClearAllButton;->setFullscreenProgress(F)V

    .line 1635
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/OverviewActionsView;->getFullscreenAlpha()Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;

    move-result-object v1

    const/4 v3, 0x0

    const v4, 0x3dcccccd    # 0.1f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    sget-object v7, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 1636
    move v2, p1

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/Utilities;->mapToRange(FFFFFLandroid/view/animation/Interpolator;)F

    move-result v2

    .line 1635
    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/MultiValueAlpha$AlphaProperty;->setValue(F)V

    .line 1637
    return-void
.end method

.method public setIgnoreResetTask(I)V
    .locals 0
    .param p1, "taskId"    # I

    .line 2709
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mIgnoreResetTaskId:I

    .line 2710
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "insets"    # Landroid/graphics/Rect;

    .line 1652
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1655
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1656
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 1657
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v1

    .line 1656
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setOverviewGridEnabled(Z)V

    .line 1658
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->overviewPageSpacing:I

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->setPageSpacing(I)V

    .line 1661
    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda27;

    invoke-direct {v1, v0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda27;-><init>(Lcom/android/launcher3/DeviceProfile;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 1663
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V

    .line 1666
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler()V

    .line 1667
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mLastComputedTaskSize:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/views/OverviewActionsView;->updateDimension(Lcom/android/launcher3/DeviceProfile;Landroid/graphics/Rect;)V

    .line 1668
    return-void
.end method

.method public setLayoutRotation(II)V
    .locals 1
    .param p1, "touchRotation"    # I
    .param p2, "displayRotation"    # I

    .line 3633
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1, p2}, Lcom/android/quickstep/util/RecentsOrientedState;->update(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3634
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateOrientationHandler()V

    .line 3636
    :cond_0
    return-void
.end method

.method public setModalStateEnabled(Z)V
    .locals 0
    .param p1, "isModalState"    # Z

    .line 5014
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    return-void
.end method

.method public setOnEmptyMessageUpdatedListener(Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;

    .line 3684
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mOnEmptyMessageUpdatedListener:Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;

    .line 3685
    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1
    .param p1, "overlayEnabled"    # Z

    .line 4888
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverlayEnabled:Z

    if-eq v0, p1, :cond_0

    .line 4889
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverlayEnabled:Z

    .line 4890
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateEnabledOverlays()V

    .line 4892
    :cond_0
    return-void
.end method

.method public setOverviewFullscreenEnabled(Z)V
    .locals 1
    .param p1, "overviewFullscreenEnabled"    # Z

    .line 4904
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewFullscreenEnabled:Z

    if-eq v0, p1, :cond_0

    .line 4905
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewFullscreenEnabled:Z

    .line 4908
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->requestLayout()V

    .line 4910
    :cond_0
    return-void
.end method

.method public setOverviewGridEnabled(Z)V
    .locals 1
    .param p1, "overviewGridEnabled"    # Z

    .line 4895
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    if-eq v0, p1, :cond_0

    .line 4896
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    .line 4897
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateActionsViewFocusedScroll()V

    .line 4899
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->requestLayout()V

    .line 4901
    :cond_0
    return-void
.end method

.method public setOverviewSelectEnabled(Z)V
    .locals 1
    .param p1, "overviewSelectEnabled"    # Z

    .line 4917
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewSelectEnabled:Z

    if-eq v0, p1, :cond_0

    .line 4918
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewSelectEnabled:Z

    .line 4919
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updatePivots()V

    .line 4921
    :cond_0
    return-void
.end method

.method public setOverviewStateEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 1188
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    .line 1189
    invoke-direct {p0}, Lcom/android/quickstep/views/RecentsView;->updateTaskStackListenerState()V

    .line 1190
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->setRotationWatcherEnabled(Z)V

    .line 1191
    if-nez p1, :cond_0

    .line 1194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTmpRunningTasks:[Lcom/android/systemui/shared/recents/model/Task;

    .line 1195
    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 1197
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateLocusId()V

    .line 1198
    return-void
.end method

.method public setRecentsAnimationTargets(Lcom/android/quickstep/RecentsAnimationController;Lcom/android/quickstep/RecentsAnimationTargets;)V
    .locals 4
    .param p1, "recentsAnimationController"    # Lcom/android/quickstep/RecentsAnimationController;
    .param p2, "recentsAnimationTargets"    # Lcom/android/quickstep/RecentsAnimationTargets;

    .line 4485
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    .line 4486
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mSplitSelectStateController:Lcom/android/quickstep/util/SplitSelectStateController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/util/SplitSelectStateController;->setRecentsAnimationRunning(Z)V

    .line 4487
    if-eqz p2, :cond_2

    iget-object v0, p2, Lcom/android/quickstep/RecentsAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4491
    :cond_0
    new-instance v0, Lcom/android/quickstep/RemoteTargetGluer;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getSizeStrategy()Lcom/android/quickstep/BaseActivityInterface;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/quickstep/RemoteTargetGluer;-><init>(Landroid/content/Context;Lcom/android/quickstep/BaseActivityInterface;)V

    .line 4492
    .local v0, "gluer":Lcom/android/quickstep/RemoteTargetGluer;
    nop

    .line 4493
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 4492
    invoke-virtual {v0, v1, p2}, Lcom/android/quickstep/RemoteTargetGluer;->assignTargetsForSplitScreen(Landroid/content/Context;Lcom/android/quickstep/RemoteAnimationTargets;)[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 4494
    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer;->getStagedSplitBounds()Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    .line 4499
    new-instance v1, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda20;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda20;-><init>(Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 4512
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 4513
    .local v1, "runningTaskView":Lcom/android/quickstep/views/TaskView;
    instance-of v2, v1, Lcom/android/quickstep/views/GroupedTaskView;

    if-eqz v2, :cond_1

    .line 4518
    move-object v2, v1

    check-cast v2, Lcom/android/quickstep/views/GroupedTaskView;

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/GroupedTaskView;->updateSplitBoundsConfig(Lcom/android/launcher3/util/SplitConfigurationOptions$StagedSplitBounds;)V

    .line 4520
    :cond_1
    return-void

    .line 4488
    .end local v0    # "gluer":Lcom/android/quickstep/RemoteTargetGluer;
    .end local v1    # "runningTaskView":Lcom/android/quickstep/views/TaskView;
    :cond_2
    :goto_0
    return-void
.end method

.method public setRecentsChangedOrientation(Z)Landroid/animation/AnimatorSet;
    .locals 8
    .param p1, "fadeInChildren"    # Z

    .line 2164
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskIndex()I

    .line 2165
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getCurrentPage()I

    move-result v0

    .line 2166
    .local v0, "runningIndex":I
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 2167
    .local v1, "as":Landroid/animation/AnimatorSet;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 2168
    invoke-direct {p0, v2}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    .line 2169
    .local v3, "taskView":Landroid/view/View;
    const/4 v4, 0x0

    if-ne v0, v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v4

    if-eqz v5, :cond_0

    .line 2170
    goto :goto_2

    .line 2172
    :cond_0
    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v6, 0x1

    new-array v6, v6, [F

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    aput v4, v6, v7

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 2167
    .end local v3    # "taskView":Landroid/view/View;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2174
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public setRunningTaskHidden(Z)V
    .locals 3
    .param p1, "isHidden"    # Z

    .line 2351
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mRunningTaskTileHidden:Z

    .line 2352
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 2353
    .local v0, "runningTask":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_1

    .line 2354
    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mContentAlpha:F

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setStableAlpha(F)V

    .line 2355
    if-nez p1, :cond_1

    .line 2356
    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 2360
    :cond_1
    return-void
.end method

.method public setSwipeDownShouldLaunchApp(Z)V
    .locals 0
    .param p1, "swipeDownShouldLaunchApp"    # Z

    .line 2701
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mSwipeDownShouldLaunchApp:Z

    .line 2702
    return-void
.end method

.method public setTaskIconScaledDown(Z)V
    .locals 4
    .param p1, "isScaledDown"    # Z

    .line 2373
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    if-eq v0, p1, :cond_1

    .line 2374
    iput-boolean p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    .line 2375
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    .line 2376
    .local v0, "taskCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2377
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mTaskIconScaledDown:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/TaskView;->setIconScaleAndDim(F)V

    .line 2376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2380
    .end local v0    # "taskCount":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public setTaskLaunchListener(Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;)V
    .locals 0
    .param p1, "taskLaunchListener"    # Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;

    .line 998
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskLaunchListener:Lcom/android/quickstep/views/RecentsView$TaskLaunchListener;

    .line 999
    return-void
.end method

.method protected setTaskViewsPrimarySplitTranslation(F)V
    .locals 4
    .param p1, "translation"    # F

    .line 3923
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsPrimarySplitTranslation:F

    .line 3924
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3925
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 3926
    .local v1, "task":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getPrimarySplitTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 3924
    .end local v1    # "task":Lcom/android/quickstep/views/TaskView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3928
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method protected setTaskViewsResistanceTranslation(F)V
    .locals 4
    .param p1, "translation"    # F

    .line 3906
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondaryTranslation:F

    .line 3907
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3908
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 3909
    .local v1, "task":Lcom/android/quickstep/views/TaskView;
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getTaskResistanceTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getScaleY()F

    move-result v3

    div-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 3907
    .end local v1    # "task":Lcom/android/quickstep/views/TaskView;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3911
    .end local v0    # "i":I
    :cond_0
    new-instance v0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda28;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->runActionOnRemoteHandles(Ljava/util/function/Consumer;)V

    .line 3914
    return-void
.end method

.method protected setTaskViewsSecondarySplitTranslation(F)V
    .locals 4
    .param p1, "translation"    # F

    .line 3931
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iput p1, p0, Lcom/android/quickstep/views/RecentsView;->mTaskViewsSecondarySplitTranslation:F

    .line 3932
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3933
    invoke-direct {p0, v0}, Lcom/android/quickstep/views/RecentsView;->requireTaskViewAt(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v1

    .line 3934
    .local v1, "taskView":Lcom/android/quickstep/views/TaskView;
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mSplitHiddenTaskView:Lcom/android/quickstep/views/TaskView;

    if-ne v1, v2, :cond_0

    .line 3935
    goto :goto_1

    .line 3937
    :cond_0
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getSecondarySplitTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    .line 3932
    .end local v1    # "taskView":Lcom/android/quickstep/views/TaskView;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3939
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public setVisibility(I)V
    .locals 5
    .param p1, "visibility"    # I

    .line 3608
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->setVisibility(I)V

    .line 3609
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    if-eqz v0, :cond_1

    .line 3610
    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    invoke-virtual {v0, v1, v4}, Lcom/android/quickstep/views/OverviewActionsView;->updateHiddenFlags(IZ)V

    .line 3611
    if-eqz p1, :cond_1

    .line 3612
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActionsView:Lcom/android/quickstep/views/OverviewActionsView;

    invoke-virtual {v0, v2, v3}, Lcom/android/quickstep/views/OverviewActionsView;->updateDisabledFlags(IZ)V

    .line 3615
    :cond_1
    return-void
.end method

.method protected shouldAddStubTaskView([Lcom/android/systemui/shared/recents/model/Task;)Z
    .locals 7
    .param p1, "runningTasks"    # [Lcom/android/systemui/shared/recents/model/Task;

    .line 2250
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 2251
    aget-object v0, p1, v1

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 2252
    .local v0, "primaryTaskView":Lcom/android/quickstep/views/TaskView;
    aget-object v3, p1, v2

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    .line 2254
    .local v3, "secondaryTaskView":Lcom/android/quickstep/views/TaskView;
    const/4 v4, -0x1

    if-nez v0, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v5

    .line 2256
    .local v5, "leftTopTaskViewId":I
    :goto_0
    if-nez v3, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getTaskViewId()I

    move-result v6

    .line 2258
    .local v6, "rightBottomTaskViewId":I
    :goto_1
    if-ne v5, v6, :cond_2

    if-ne v5, v4, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    .line 2260
    .end local v0    # "primaryTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v3    # "secondaryTaskView":Lcom/android/quickstep/views/TaskView;
    .end local v5    # "leftTopTaskViewId":I
    .end local v6    # "rightBottomTaskViewId":I
    :cond_4
    aget-object v0, p1, v1

    .line 2261
    .local v0, "runningTaskInfo":Lcom/android/systemui/shared/recents/model/Task;
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-virtual {p0, v3}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v3

    if-nez v3, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public shouldShiftThumbnailsForSplitSelect()Z
    .locals 1

    .line 3435
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

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

.method public shouldSwipeDownLaunchApp()Z
    .locals 1

    .line 2705
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mSwipeDownShouldLaunchApp:Z

    return v0
.end method

.method public showAsGrid()Z
    .locals 2

    .line 5069
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mCurrentGestureEndTarget:Lcom/android/quickstep/GestureState$GestureEndTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mSizeStrategy:Lcom/android/quickstep/BaseActivityInterface;

    .line 5070
    invoke-virtual {v1, v0}, Lcom/android/quickstep/BaseActivityInterface;->stateFromGestureEndTarget(Lcom/android/quickstep/GestureState$GestureEndTarget;)Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 5071
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/statemanager/BaseState;->displayOverviewTasksAsGrid(Lcom/android/launcher3/DeviceProfile;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 5069
    :goto_1
    return v0
.end method

.method public showForegroundScrim(Z)V
    .locals 5
    .param p1, "show"    # Z

    .line 5029
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/quickstep/views/RecentsView;->mColorTint:F

    cmpl-float v1, v1, v0

    if-nez v1, :cond_1

    .line 5030
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTintingAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 5031
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 5032
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTintingAnimator:Landroid/animation/ObjectAnimator;

    .line 5034
    :cond_0
    return-void

    .line 5037
    :cond_1
    sget-object v1, Lcom/android/quickstep/views/RecentsView;->COLOR_TINT:Landroid/util/FloatProperty;

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_2

    const/high16 v0, 0x3f000000    # 0.5f

    :cond_2
    aput v0, v3, v4

    invoke-static {p0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTintingAnimator:Landroid/animation/ObjectAnimator;

    .line 5038
    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 5039
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mTintingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 5040
    return-void
.end method

.method public abstract startHome()V
.end method

.method public switchToScreenshot(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "onFinishRunnable"    # Ljava/lang/Runnable;

    .line 4928
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mRecentsAnimationController:Lcom/android/quickstep/RecentsAnimationController;

    if-nez v0, :cond_1

    .line 4929
    if-eqz p1, :cond_0

    .line 4930
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 4932
    :cond_0
    return-void

    .line 4935
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/RecentsView;->switchToScreenshotInternal(Ljava/lang/Runnable;)V

    .line 4936
    return-void
.end method

.method public switchToScreenshot(Ljava/util/HashMap;Ljava/lang/Runnable;)V
    .locals 2
    .param p2, "onFinishRunnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 4973
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 4974
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_0

    .line 4975
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskView;->setShowScreenshot(Z)V

    .line 4976
    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskView;->refreshThumbnails(Ljava/util/HashMap;)V

    .line 4977
    invoke-static {v0, p2}, Lcom/android/quickstep/ViewUtils;->postFrameDrawn(Landroid/view/View;Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 4979
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 4981
    :goto_0
    return-void
.end method

.method public updateCurveProperties()V
    .locals 3

    .line 1857
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getPageCount()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/RecentsView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1860
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationHandler:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-interface {v0, p0}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryScroll(Landroid/view/View;)I

    move-result v0

    .line 1861
    .local v0, "scroll":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mClearAllButton:Lcom/android/quickstep/views/ClearAllButton;

    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewGridEnabled:Z

    invoke-virtual {v1, v0, v2}, Lcom/android/quickstep/views/ClearAllButton;->onRecentsViewScroll(IZ)V

    .line 1862
    return-void

    .line 1858
    .end local v0    # "scroll":I
    :cond_1
    :goto_0
    return-void
.end method

.method public updateEmptyMessage()V
    .locals 5

    .line 3688
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3689
    .local v0, "isEmpty":Z
    :goto_0
    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/quickstep/views/RecentsView;->mLastMeasureSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    .line 3690
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    goto :goto_2

    :cond_2
    :goto_1
    nop

    .line 3691
    .local v1, "hasSizeChanged":Z
    :goto_2
    iget-boolean v2, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-ne v0, v2, :cond_3

    if-nez v1, :cond_3

    .line 3692
    return-void

    .line 3694
    :cond_3
    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyMessage:Ljava/lang/CharSequence;

    goto :goto_3

    :cond_4
    const-string v2, ""

    :goto_3
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/RecentsView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 3695
    iput-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    .line 3696
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/RecentsView;->updateEmptyStateUi(Z)V

    .line 3697
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->invalidate()V

    .line 3699
    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView;->mOnEmptyMessageUpdatedListener:Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;

    if-eqz v2, :cond_5

    .line 3700
    iget-boolean v3, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    invoke-interface {v2, v3}, Lcom/android/quickstep/views/RecentsView$OnEmptyMessageUpdatedListener;->onEmptyMessageUpdated(Z)V

    .line 3702
    :cond_5
    return-void
.end method

.method public updateLocusId()V
    .locals 4

    .line 5255
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    const-string v0, "Overview"

    .line 5257
    .local v0, "locusId":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/android/quickstep/views/RecentsView;->mOverviewStateEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5258
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|ENABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 5260
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "|DISABLED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5263
    :goto_0
    new-instance v1, Landroid/content/LocusId;

    invoke-direct {v1, v0}, Landroid/content/LocusId;-><init>(Ljava/lang/String;)V

    .line 5265
    .local v1, "id":Landroid/content/LocusId;
    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/RecentsView;Landroid/content/LocusId;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 5266
    return-void
.end method

.method protected updateMinAndMaxScrollX()V
    .locals 0

    .line 4637
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0}, Lcom/android/launcher3/PagedView;->updateMinAndMaxScrollX()V

    .line 4642
    return-void
.end method

.method public updateRecentsRotation()V
    .locals 2

    .line 3628
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    .line 3629
    .local v0, "rotation":I
    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v1, v0}, Lcom/android/quickstep/util/RecentsOrientedState;->setRecentsRotation(I)Z

    .line 3630
    return-void
.end method

.method public updateScrollSynchronously()V
    .locals 8

    .line 4616
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 4617
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 4616
    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/RecentsView;->onMeasure(II)V

    .line 4618
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getRight()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->getBottom()I

    move-result v7

    const/4 v3, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/quickstep/views/RecentsView;->onLayout(ZIIII)V

    .line 4619
    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->updateMinAndMaxScrollX()V

    .line 4620
    return-void
.end method

.method public updateThumbnail(ILcom/android/systemui/shared/recents/model/ThumbnailData;Z)Lcom/android/quickstep/views/TaskView;
    .locals 3
    .param p1, "taskId"    # I
    .param p2, "thumbnailData"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .param p3, "refreshNow"    # Z

    .line 871
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewByTaskId(I)Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    .line 872
    .local v0, "taskView":Lcom/android/quickstep/views/TaskView;
    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;Z)V

    .line 875
    :cond_0
    return-object v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 4232
    .local p0, "this":Lcom/android/quickstep/views/RecentsView;, "Lcom/android/quickstep/views/RecentsView<TACTIVITY_TYPE;TSTATE_TYPE;>;"
    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/quickstep/views/RecentsView;->mShowEmptyMessage:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView;->mEmptyIcon:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
