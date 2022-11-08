.class public Lcom/android/launcher3/folder/Folder;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "Folder.java"

# interfaces
.implements Lcom/android/launcher3/views/ClipPathView;
.implements Lcom/android/launcher3/DragSource;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher3/DropTarget;
.implements Lcom/android/launcher3/model/data/FolderInfo$FolderListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;,
        Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;,
        Lcom/android/launcher3/folder/Folder$OnScrollFinishedListener;,
        Lcom/android/launcher3/folder/Folder$OnScrollHintListener;,
        Lcom/android/launcher3/folder/Folder$FolderState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FOLDER_COLOR_ANIMATION_DURATION:I = 0xc8

.field private static final FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

.field private static final FOLDER_NAME_ANIMATION_DURATION:I = 0x279

.field private static final ICON_OVERSCROLL_WIDTH_FACTOR:F = 0.45f

.field public static final ITEM_POS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_CONTENT_DIMEN:I = 0x5

.field private static final MIN_FOLDERS_FOR_HARDWARE_OPTIMIZATION:I = 0xa

.field private static final ON_EXIT_CLOSE_DELAY:I = 0x190

.field private static final REORDER_DELAY:I = 0xfa

.field private static final RESCROLL_EXTRA_DELAY:I = 0x96

.field public static final SCROLL_HINT_DURATION:I = 0x1f4

.field public static final SCROLL_LEFT:I = 0x0

.field public static final SCROLL_NONE:I = -0x1

.field public static final SCROLL_RIGHT:I = 0x1

.field public static final STATE_ANIMATING:I = 0x1

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_OPEN:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Launcher.Folder"

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field protected final mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mBackground:Landroid/graphics/drawable/GradientDrawable;

.field private mClipPath:Landroid/graphics/Path;

.field mContent:Lcom/android/launcher3/folder/FolderPagedView;

.field private mCurrentAnimator:Landroid/animation/AnimatorSet;

.field private mCurrentDragView:Landroid/view/View;

.field mCurrentScrollDir:I

.field private mDeleteFolderOnDropCompleted:Z

.field private mDestroyed:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field protected mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDragInProgress:Z

.field private mDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field mEmptyCellRank:I

.field mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

.field public mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

.field protected mFooter:Landroid/view/View;

.field private mFooterHeight:I

.field private mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

.field private mFromTitle:Ljava/lang/CharSequence;

.field public mInfo:Lcom/android/launcher3/model/data/FolderInfo;

.field private mIsAnimatingClosed:Z

.field private mIsEditingName:Z

.field private mIsExternalDrag:Z

.field private mItemAddedBackToSelfViaIcon:Z

.field final mItemsInReadingOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mItemsInvalidated:Z

.field private mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

.field protected final mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

.field private final mOnExitAlarm:Lcom/android/launcher3/Alarm;

.field mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

.field private final mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

.field private mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

.field mPrevTargetRank:I

.field private mRearrangeOnClose:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mReorderAlarm:Lcom/android/launcher3/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

.field private mScrollAreaOffset:I

.field mScrollHintDir:I

.field final mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

.field private mState:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "STATE_CLOSED"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "STATE_ANIMATING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "STATE_OPEN"
            .end subannotation
        }
    .end annotation
.end field

.field private mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

.field private mSuppressFolderDeletion:Z

.field mTargetRank:I


# direct methods
.method public static synthetic $r8$lambda$LrD35dpUvculkM4JYxR02eogRbQ(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$i9qu7RMX4e1NC_lN4l2-q2ofSWg(Lcom/android/launcher3/folder/Folder;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->announceAccessibilityChanges()V

    return-void
.end method

.method public static synthetic $r8$lambda$yJ3SHxQYa26IoVX5ZxK453cCCJU(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeyboardInsetAnimationCallback(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPageIndicator(Lcom/android/launcher3/folder/Folder;)Lcom/android/launcher3/pageindicators/PageIndicatorDots;
    .locals 0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentAnimator(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsAnimatingClosed(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseComplete(Lcom/android/launcher3/folder/Folder;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetState(Lcom/android/launcher3/folder/Folder;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 137
    const-string v0, "~"

    sput-object v0, Lcom/android/launcher3/folder/Folder;->FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

    .line 173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    .line 1604
    new-instance v0, Lcom/android/launcher3/folder/Folder$10;

    invoke-direct {v0}, Lcom/android/launcher3/folder/Folder$10;-><init>()V

    sput-object v0, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 259
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 176
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    .line 177
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    .line 178
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    .line 179
    new-instance v0, Lcom/android/launcher3/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    .line 214
    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 222
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 229
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 230
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 231
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    .line 239
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 241
    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 902
    new-instance v1, Lcom/android/launcher3/folder/Folder$7;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$7;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 980
    new-instance v1, Lcom/android/launcher3/folder/Folder$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$8;-><init>(Lcom/android/launcher3/folder/Folder;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 262
    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 263
    invoke-static {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->from(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/LauncherDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 265
    invoke-static {p1}, Lcom/android/launcher3/logging/StatsLogManager;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    .line 270
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setFocusableInTouchMode(Z)V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/Folder;

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->announceAccessibilityChanges()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/folder/Folder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/launcher3/folder/Folder;

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->announceAccessibilityChanges()V

    return-void
.end method

.method private addAnimatorListenerForPage(Landroid/animation/AnimatorSet;Lcom/android/launcher3/CellLayout;)V
    .locals 3
    .param p1, "a"    # Landroid/animation/AnimatorSet;
    .param p2, "currentCellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 593
    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/Folder;->shouldUseHardwareLayerForAnimation(Lcom/android/launcher3/CellLayout;)Z

    move-result v0

    .line 594
    .local v0, "useHardware":Z
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->isHardwareLayerEnabled()Z

    move-result v1

    .line 596
    .local v1, "wasHardwareAccelerated":Z
    new-instance v2, Lcom/android/launcher3/folder/Folder$3;

    invoke-direct {v2, p0, v0, p2, v1}, Lcom/android/launcher3/folder/Folder$3;-><init>(Lcom/android/launcher3/folder/Folder;ZLcom/android/launcher3/CellLayout;Z)V

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 611
    return-void
.end method

.method private animateClosed()V
    .locals 2

    .line 801
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsAnimatingClosed:Z

    if-eqz v0, :cond_0

    .line 802
    return-void

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 806
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getDestinationPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->snapToPageImmediately(I)Z

    .line 808
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    .line 809
    new-instance v0, Lcom/android/launcher3/folder/FolderAnimationManager;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/folder/FolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    .line 810
    .local v0, "a":Landroid/animation/AnimatorSet;
    new-instance v1, Lcom/android/launcher3/folder/Folder$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$6;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 829
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->startAnimation(Landroid/animation/AnimatorSet;)V

    .line 830
    return-void
.end method

.method private animateOpen(Ljava/util/List;I)V
    .locals 10
    .param p2, "pageNo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;I)V"
        }
    .end annotation

    .line 659
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    .line 660
    .local v0, "openFolder":Lcom/android/launcher3/folder/Folder;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-eq v0, p0, :cond_0

    .line 662
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/folder/FolderPagedView;->bindItems(Ljava/util/List;)V

    .line 666
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->centerAboutIcon()V

    .line 667
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 668
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 670
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    .line 672
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v2

    .line 675
    .local v2, "dragLayer":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_1

    .line 676
    invoke-virtual {v2, p0}, Lcom/android/launcher3/views/BaseDragLayer;->addView(Landroid/view/View;)V

    .line 677
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 685
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 686
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, p2}, Lcom/android/launcher3/folder/FolderPagedView;->setCurrentPage(I)V

    .line 691
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 693
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->cancelRunningAnimations()V

    .line 694
    new-instance v3, Lcom/android/launcher3/folder/FolderAnimationManager;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/folder/FolderAnimationManager;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    .line 695
    .local v3, "fam":Lcom/android/launcher3/folder/FolderAnimationManager;
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderAnimationManager;->getAnimator()Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 696
    .local v4, "anim":Landroid/animation/AnimatorSet;
    new-instance v5, Lcom/android/launcher3/folder/Folder$4;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/Folder$4;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 714
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v5

    if-le v5, v1, :cond_3

    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/launcher3/model/data/FolderInfo;->hasOption(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 715
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    .line 716
    invoke-virtual {v6}, Landroid/view/View;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    sub-int/2addr v5, v6

    .line 718
    .local v5, "footerWidth":I
    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderNameEditText;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 719
    .local v6, "textWidth":F
    int-to-float v7, v5

    sub-float/2addr v7, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    .line 720
    .local v7, "translation":F
    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v9, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v9, v9, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v9, :cond_2

    neg-float v9, v7

    goto :goto_0

    :cond_2
    move v9, v7

    :goto_0
    invoke-virtual {v8, v9}, Lcom/android/launcher3/folder/FolderNameEditText;->setTranslationX(F)V

    .line 721
    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v8}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->prepareEntryAnimation()V

    .line 725
    iget-boolean v8, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    xor-int/2addr v1, v8

    .line 726
    .local v1, "updateAnimationFlag":Z
    new-instance v8, Lcom/android/launcher3/folder/Folder$5;

    invoke-direct {v8, p0, v1}, Lcom/android/launcher3/folder/Folder$5;-><init>(Lcom/android/launcher3/folder/Folder;Z)V

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 743
    .end local v1    # "updateAnimationFlag":Z
    .end local v5    # "footerWidth":I
    .end local v6    # "textWidth":F
    .end local v7    # "translation":F
    goto :goto_1

    .line 744
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/FolderNameEditText;->setTranslationX(F)V

    .line 747
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->stopAllAnimations()V

    .line 748
    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/Folder;->startAnimation(Landroid/animation/AnimatorSet;)V

    .line 751
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/util/window/RefreshRateTracker;->getSingleFrameMs(Landroid/content/Context;)I

    move-result v1

    int-to-long v5, v1

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->getTotalDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setCurrentPlayTime(J)V

    .line 754
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 755
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->forceTouchMove()V

    .line 757
    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/folder/FolderPagedView;->verifyVisibleHighResIcons(I)V

    .line 758
    return-void
.end method

.method private cancelRunningAnimations()V
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 798
    :cond_0
    return-void
.end method

.method private centerAboutIcon()V
    .locals 15

    .line 1137
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 1138
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v1

    .line 1139
    .local v1, "parent":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderWidth()I

    move-result v2

    .line 1140
    .local v2, "width":I
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight()I

    move-result v3

    .line 1142
    .local v3, "height":I
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    sget-object v5, Lcom/android/launcher3/folder/Folder;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 1143
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 1144
    .local v4, "centerX":I
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    .line 1145
    .local v6, "centerY":I
    div-int/lit8 v7, v2, 0x2

    sub-int v7, v4, v7

    .line 1146
    .local v7, "centeredLeft":I
    div-int/lit8 v8, v3, 0x2

    sub-int v8, v6, v8

    .line 1148
    .local v8, "centeredTop":I
    iget-object v9, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v9}, Lcom/android/launcher3/views/ActivityContext;->getFolderBoundingBox()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1149
    iget v9, v5, Landroid/graphics/Rect;->left:I

    iget v10, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v10, v2

    invoke-static {v7, v9, v10}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v9

    .line 1150
    .local v9, "left":I
    iget v10, v5, Landroid/graphics/Rect;->top:I

    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    invoke-static {v8, v10, v11}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v10

    .line 1151
    .local v10, "top":I
    const/4 v11, 0x2

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v9, v11, v12

    const/4 v13, 0x1

    aput v10, v11, v13

    .line 1152
    .local v11, "inOutPosition":[I
    iget-object v14, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v14, v11, v5, v2, v3}, Lcom/android/launcher3/views/ActivityContext;->updateOpenFolderPosition([ILandroid/graphics/Rect;II)V

    .line 1153
    aget v5, v11, v12

    .line 1154
    .end local v9    # "left":I
    .local v5, "left":I
    aget v9, v11, v13

    .line 1156
    .end local v10    # "top":I
    .local v9, "top":I
    div-int/lit8 v10, v2, 0x2

    sub-int v13, v7, v5

    add-int/2addr v10, v13

    .line 1157
    .local v10, "folderPivotX":I
    div-int/lit8 v13, v3, 0x2

    sub-int v14, v8, v9

    add-int/2addr v13, v14

    .line 1158
    .local v13, "folderPivotY":I
    int-to-float v14, v10

    invoke-virtual {p0, v14}, Lcom/android/launcher3/folder/Folder;->setPivotX(F)V

    .line 1159
    int-to-float v14, v13

    invoke-virtual {p0, v14}, Lcom/android/launcher3/folder/Folder;->setPivotY(F)V

    .line 1161
    iput v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 1162
    iput v3, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 1163
    iput v5, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 1164
    iput v9, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 1166
    iget-object v14, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v14, v12, v12, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 1167
    return-void
.end method

.method private clearDragInfo()V
    .locals 1

    .line 999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1000
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    .line 1001
    return-void
.end method

.method private closeComplete(Z)V
    .locals 5
    .param p1, "wasAnimated"    # Z

    .line 846
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    .line 847
    .local v0, "parent":Lcom/android/launcher3/views/BaseDragLayer;
    if-eqz v0, :cond_0

    .line 848
    invoke-virtual {v0, p0}, Lcom/android/launcher3/views/BaseDragLayer;->removeView(Landroid/view/View;)V

    .line 850
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    .line 851
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->clearFocus()V

    .line 852
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 853
    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->setVisibility(I)V

    .line 854
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    .line 855
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mFolderName:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 856
    if-eqz p1, :cond_2

    .line 857
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->animateBgShadowAndStroke()V

    .line 858
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentPage()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/FolderIcon;->onFolderClose(I)V

    .line 859
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->hasDot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 860
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/FolderIcon;->animateDotScale([F)V

    .line 862
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->requestFocus()Z

    .line 866
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    if-eqz v1, :cond_3

    .line 867
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 868
    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    .line 870
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v2, :cond_5

    .line 871
    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez v1, :cond_4

    iget-boolean v4, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    if-nez v4, :cond_4

    .line 872
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_0

    .line 873
    :cond_4
    if-eqz v1, :cond_6

    .line 874
    iput-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    goto :goto_0

    .line 876
    :cond_5
    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-nez v1, :cond_6

    .line 877
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->unbindItems()V

    .line 879
    :cond_6
    :goto_0
    iput-boolean v3, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 880
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    .line 881
    invoke-direct {p0, v3}, Lcom/android/launcher3/folder/Folder;->setState(I)V

    .line 882
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderPagedView;->setCurrentPage(I)V

    .line 883
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static fromXml(Landroid/content/Context;)Lcom/android/launcher3/folder/Folder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/Context;",
            ":",
            "Lcom/android/launcher3/views/ActivityContext;",
            ">(TT;)",
            "Lcom/android/launcher3/folder/Folder;"
        }
    .end annotation

    .line 569
    .local p0, "activityContext":Landroid/content/Context;, "TT;"
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$layout;->user_folder_icon_normalized:I

    .line 570
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    .line 569
    return-object v0
.end method

.method private getContentAreaWidth()I
    .locals 2

    .line 1179
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getFolderHeight()I
    .locals 1

    .line 1187
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result v0

    return v0
.end method

.method private getFolderHeight(I)I
    .locals 2
    .param p1, "contentAreaHeight"    # I

    .line 1191
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method private getFolderWidth()I
    .locals 2

    .line 1183
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getHeightFromBottom()I
    .locals 4

    .line 1708
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 1709
    .local v0, "layoutParams":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    iget v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    add-int/2addr v1, v2

    .line 1710
    .local v1, "folderBottomPx":I
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    .line 1712
    .local v2, "windowBottomPx":I
    sub-int v3, v2, v1

    return v3
.end method

.method public static getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;
    .locals 1
    .param p0, "activityContext"    # Lcom/android/launcher3/views/ActivityContext;

    .line 1638
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/folder/Folder;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    return-object v0
.end method

.method private getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "recycle"    # [F

    .line 914
    invoke-virtual {p1, p2}, Lcom/android/launcher3/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object p2

    .line 915
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v1, 0x0

    aget v1, p2, v1

    float-to-int v1, v1

    .line 916
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x1

    aget v2, p2, v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    .line 915
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/FolderPagedView;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private getViewForInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;
    .locals 2
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 1459
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda11;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private isDroppedOnDeleteDropTargetFromFolderInAppTray(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 3
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1117
    instance-of v0, p1, Lcom/android/launcher3/DeleteDropTarget;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v0, v0, Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_0

    .line 1118
    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    check-cast v0, Lcom/android/launcher3/folder/Folder;

    .line 1119
    .local v0, "folder":Lcom/android/launcher3/folder/Folder;
    iget-object v1, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v2, -0x66

    if-ne v1, v2, :cond_0

    .line 1120
    const/4 v1, 0x1

    return v1

    .line 1123
    .end local v0    # "folder":Lcom/android/launcher3/folder/Folder;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$getViewForInfo$6(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p0, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "view"    # Landroid/view/View;

    .line 1459
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$showLabelSuggestions$2(Ljava/lang/String;)Z
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 554
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private setState(I)V
    .locals 1
    .param p1, "newState"    # I

    .line 1716
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    .line 1717
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    if-eqz v0, :cond_0

    .line 1718
    invoke-interface {v0, p1}, Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;->onFolderStateChanged(I)V

    .line 1720
    :cond_0
    return-void
.end method

.method private shouldUseHardwareLayerForAnimation(Lcom/android/launcher3/CellLayout;)Z
    .locals 7
    .param p1, "currentCellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 614
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ALWAYS_USE_HARDWARE_OPTIMIZATION_FOR_FOLDER_ANIMATIONS:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 616
    :cond_0
    const/4 v0, 0x0

    .line 617
    .local v0, "folderCount":I
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    .line 618
    .local v2, "container":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x0

    if-ltz v3, :cond_3

    .line 619
    invoke-virtual {v2, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 620
    .local v5, "child":Landroid/view/View;
    instance-of v6, v5, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_1

    return v4

    .line 621
    :cond_1
    instance-of v4, v5, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 618
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 623
    .end local v3    # "i":I
    :cond_3
    const/16 v3, 0xa

    if-lt v0, v3, :cond_4

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    return v1
.end method

.method private showLabelSuggestions()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    if-nez v0, :cond_0

    .line 538
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasSuggestions()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameInfos;->hasPrimary()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 545
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->selectAll()V

    .line 549
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->showKeyboard()V

    .line 550
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    .line 551
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameInfos;->getLabels()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda1;-><init>()V

    .line 552
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda2;-><init>()V

    .line 553
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda3;-><init>()V

    .line 554
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 555
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 556
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 550
    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->displayCompletions(Ljava/util/List;)V

    .line 558
    :cond_2
    return-void
.end method

.method private showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "direction"    # I
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 963
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    if-eq v0, p1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->showScrollHint(I)V

    .line 965
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    if-eq v0, p1, :cond_2

    .line 970
    :cond_1
    iput p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentScrollDir:I

    .line 971
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 972
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    new-instance v1, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/folder/Folder$OnScrollHintListener;-><init>(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 973
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 975
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 976
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 978
    :cond_2
    return-void
.end method

.method private startAnimation(Landroid/animation/AnimatorSet;)V
    .locals 2
    .param p1, "a"    # Landroid/animation/AnimatorSet;

    .line 574
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    new-instance v1, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda10;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/LauncherDelegate;->forEachVisibleWorkspacePage(Ljava/util/function/Consumer;)V

    .line 577
    new-instance v0, Lcom/android/launcher3/folder/Folder$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/folder/Folder$2;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/animation/AnimatorSet;)V

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 589
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 590
    return-void
.end method

.method private updateItemLocationsInDatabaseBatch(Z)V
    .locals 6
    .param p1, "isBind"    # Z

    .line 1089
    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 1090
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    .line 1092
    .local v0, "verifier":Lcom/android/launcher3/folder/FolderGridOrganizer;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1093
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1094
    .local v2, "total":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1095
    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    .line 1096
    .local v4, "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    invoke-virtual {v0, v4, v3}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1097
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1094
    .end local v4    # "itemInfo":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1101
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1102
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/launcher3/model/ModelWriter;->moveItemsInDatabase(Ljava/util/ArrayList;II)V

    .line 1104
    :cond_2
    sget-object v3, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v3}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 1106
    sget-object v3, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v4, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda6;

    invoke-direct {v4, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda6;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 1114
    :cond_3
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .locals 4
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 887
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 888
    .local v0, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    .line 889
    .local v1, "itemType":I
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2
.end method

.method public animateOpen()V
    .locals 2

    .line 650
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V

    .line 651
    return-void
.end method

.method public beginExternalDrag()V
    .locals 3

    .line 630
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    .line 631
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 635
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 638
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    .line 639
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 641
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v2

    div-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/Folder;->animateOpen(Ljava/util/List;I)V

    .line 642
    return-void
.end method

.method bind(Lcom/android/launcher3/model/data/FolderInfo;)V
    .locals 5
    .param p1, "info"    # Lcom/android/launcher3/model/data/FolderInfo;

    .line 500
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 501
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    .line 502
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 503
    iget-object v0, p1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 504
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/model/data/ItemInfo;>;"
    sget-object v1, Lcom/android/launcher3/folder/Folder;->ITEM_POS_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 505
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    .line 507
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 508
    .local v2, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    if-nez v2, :cond_0

    .line 509
    new-instance v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;-><init>(II)V

    move-object v2, v3

    .line 510
    iput-boolean v1, v2, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 511
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 513
    :cond_0
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 514
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/model/data/FolderInfo;->addListener(Lcom/android/launcher3/model/data/FolderInfo$FolderListener;)V

    .line 516
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 517
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 520
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v3, ""

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    sget v3, Lcom/android/launcher3/R$string;->folder_hint_text:I

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(I)V

    .line 524
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    new-instance v3, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda7;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/folder/FolderIcon;->post(Ljava/lang/Runnable;)Z

    .line 529
    return-void
.end method

.method public canInterceptEventsInSystemGestureRegion()Z
    .locals 1

    .line 1675
    const/4 v0, 0x1

    return v0
.end method

.method public completeDragExit()V
    .locals 2

    .line 987
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    .line 989
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 990
    :cond_0
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v0, v1, :cond_1

    .line 991
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 993
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 994
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->clearDragInfo()V

    .line 996
    :goto_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1690
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 1691
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 1692
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 1693
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1694
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1695
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1696
    .end local v0    # "count":I
    goto :goto_0

    .line 1697
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 1698
    invoke-super {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1700
    :goto_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 483
    const/4 v0, 0x1

    return v0
.end method

.method public focusSearch(I)Landroid/view/View;
    .locals 2
    .param p1, "direction"    # I

    .line 489
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected getAccessibilityInitialFocusView()Landroid/view/View;
    .locals 2

    .line 840
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    .line 841
    .local v0, "firstItem":Landroid/view/View;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->getAccessibilityInitialFocusView()Landroid/view/View;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method protected getAccessibilityTarget()Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 834
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getAccessibilityDescription()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 835
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->folder_closed:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 834
    :goto_0
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    return-object v0
.end method

.method public getContent()Lcom/android/launcher3/folder/FolderPagedView;
    .locals 1

    .line 1703
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    return-object v0
.end method

.method protected getContentAreaHeight()I
    .locals 4

    .line 1170
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1171
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->availableHeightPx:I

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    sub-int/2addr v1, v2

    .line 1173
    .local v1, "maxContentAreaHeight":I
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 1174
    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getDesiredHeight()I

    move-result v2

    .line 1173
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1175
    .local v2, "height":I
    const/4 v3, 0x5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    return v3
.end method

.method public getFolderIcon()Lcom/android/launcher3/folder/FolderIcon;
    .locals 1

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    return-object v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .line 1547
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/Folder;->getHitRect(Landroid/graphics/Rect;)V

    .line 1548
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1549
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 1550
    return-void
.end method

.method public getIconsInReadingOrder()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1478
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    if-eqz v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1480
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v1, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    .line 1481
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1483
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getInfo()Lcom/android/launcher3/model/data/FolderInfo;
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .line 1232
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemsOnPage(I)Ljava/util/List;
    .locals 10
    .param p1, "page"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    .line 1487
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    .line 1488
    .local v0, "allItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1489
    .local v1, "lastPage":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1490
    .local v2, "totalItemsInFolder":I
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v3

    .line 1491
    .local v3, "itemsPerPage":I
    if-ne p1, v1, :cond_0

    .line 1492
    mul-int v4, v3, p1

    sub-int v4, v2, v4

    goto :goto_0

    .line 1493
    :cond_0
    move v4, v3

    :goto_0
    nop

    .line 1495
    .local v4, "numItemsOnCurrentPage":I
    mul-int v5, p1, v3

    .line 1496
    .local v5, "startIndex":I
    add-int v6, v5, v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1498
    .local v6, "endIndex":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1499
    .local v7, "itemsOnCurrentPage":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/BubbleTextView;>;"
    move v8, v5

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_1

    .line 1500
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/BubbleTextView;

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1502
    .end local v8    # "i":I
    :cond_1
    return-object v7
.end method

.method protected handleClose(Z)V
    .locals 2
    .param p1, "animate"    # Z

    .line 767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    .line 769
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 773
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 774
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    .line 777
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2

    .line 778
    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderIcon;->clearLeaveBehindIfExists()V

    .line 781
    :cond_2
    if-eqz p1, :cond_3

    .line 782
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->animateClosed()V

    goto :goto_0

    .line 784
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/Folder;->closeComplete(Z)V

    .line 785
    new-instance v0, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda9;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->post(Ljava/lang/Runnable;)Z

    .line 790
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->sendAccessibilityEvent(I)V

    .line 792
    return-void
.end method

.method public hideItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 1404
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 1405
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1406
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1408
    :cond_0
    return-void
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1240
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    return v0
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 1133
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEditingName()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 910
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 762
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V
    .locals 1
    .param p1, "op"    # Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;

    .line 1471
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->iterateOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)Landroid/view/View;

    .line 1472
    return-void
.end method

.method synthetic lambda$bind$1$com-android-launcher3-folder-Folder()V
    .locals 2

    .line 525
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    .line 528
    :cond_0
    return-void
.end method

.method synthetic lambda$getIconsInReadingOrder$7$com-android-launcher3-folder-Folder(Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .locals 1
    .param p1, "i"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "v"    # Landroid/view/View;

    .line 1480
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInReadingOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$showLabelSuggestions$3$com-android-launcher3-folder-Folder(Ljava/lang/String;)Z
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 555
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$startAnimation$4$com-android-launcher3-folder-Folder(Landroid/animation/AnimatorSet;Landroid/view/View;)V
    .locals 1
    .param p1, "a"    # Landroid/animation/AnimatorSet;
    .param p2, "visiblePage"    # Landroid/view/View;

    .line 575
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->addAnimatorListenerForPage(Landroid/animation/AnimatorSet;Lcom/android/launcher3/CellLayout;)V

    return-void
.end method

.method synthetic lambda$startEditingFolderName$0$com-android-launcher3-folder-Folder()V
    .locals 2

    .line 387
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->FOLDER_NAME_SUGGEST:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->showLabelSuggestions()V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    .line 392
    return-void
.end method

.method synthetic lambda$updateItemLocationsInDatabaseBatch$5$com-android-launcher3-folder-Folder()V
    .locals 4

    .line 1107
    new-instance v0, Lcom/android/launcher3/folder/FolderNameInfos;

    invoke-direct {v0}, Lcom/android/launcher3/folder/FolderNameInfos;-><init>()V

    .line 1108
    .local v0, "nameInfos":Lcom/android/launcher3/folder/FolderNameInfos;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/folder/FolderNameProvider;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/folder/FolderNameProvider;

    move-result-object v1

    .line 1109
    .local v1, "fnp":Lcom/android/launcher3/folder/FolderNameProvider;
    nop

    .line 1110
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 1109
    invoke-virtual {v1, v2, v3, v0}, Lcom/android/launcher3/folder/FolderNameProvider;->getSuggestedFolderName(Landroid/content/Context;Ljava/util/ArrayList;Lcom/android/launcher3/folder/FolderNameInfos;)V

    .line 1111
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iput-object v0, v2, Lcom/android/launcher3/model/data/FolderInfo;->suggestedFolderNames:Lcom/android/launcher3/folder/FolderNameInfos;

    .line 1112
    return-void
.end method

.method public notifyDrop()V
    .locals 1

    .line 1127
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 1128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 1130
    :cond_0
    return-void
.end method

.method public onAdd(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .locals 8
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "rank"    # I

    .line 1419
    new-instance v0, Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 1420
    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderGridOrganizer;->setFolderInfo(Lcom/android/launcher3/model/data/FolderInfo;)Lcom/android/launcher3/folder/FolderGridOrganizer;

    move-result-object v0

    .line 1421
    .local v0, "verifier":Lcom/android/launcher3/folder/FolderGridOrganizer;
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateRankAndPos(Lcom/android/launcher3/model/data/ItemInfo;I)Z

    .line 1422
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v2, -0x66

    if-ne v1, v2, :cond_0

    .line 1423
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    goto :goto_0

    .line 1425
    :cond_0
    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v1, :cond_1

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1426
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addItemToDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    goto :goto_0

    .line 1429
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v1, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/4 v5, 0x0

    iget v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v7, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1432
    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    .line 1434
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1435
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/model/data/ItemInfo;I)Landroid/view/View;

    .line 1437
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1438
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 4
    .param p1, "windowInsets"    # Landroid/view/WindowInsets;

    .line 440
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 443
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v0

    .line 445
    .local v0, "keyboardInsets":Landroid/graphics/Insets;
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getHeightFromBottom()I

    move-result v1

    .line 447
    .local v1, "folderHeightFromBottom":I
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    if-le v2, v1, :cond_0

    .line 449
    iget v2, v0, Landroid/graphics/Insets;->bottom:I

    sub-int v2, v1, v2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    .line 450
    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderNameEditText;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 449
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setTranslationY(F)V

    .line 455
    .end local v0    # "keyboardInsets":Landroid/graphics/Insets;
    .end local v1    # "folderHeightFromBottom":I
    :cond_0
    return-object p1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 476
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->requestFocus()Z

    .line 477
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onAttachedToWindow()V

    .line 478
    return-void
.end method

.method public onBackKey()Z
    .locals 7

    .line 399
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "newTitle":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/model/data/FolderInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    .line 404
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderIcon;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    sget v2, Lcom/android/launcher3/R$string;->folder_hint_text:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(I)V

    .line 408
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderNameEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/FolderNameEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 413
    :goto_0
    const/16 v1, 0x20

    .line 415
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->folder_renamed:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 413
    invoke-static {p0, v1, v2}, Lcom/android/launcher3/compat/AccessibilityManagerCompat;->sendCustomAccessibilityEvent(Landroid/view/View;ILjava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameEditText;->clearFocus()V

    .line 421
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1, v6, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 422
    iput-boolean v6, p0, Lcom/android/launcher3/folder/Folder;->mIsEditingName:Z

    .line 423
    return v4
.end method

.method public onBackPressed()Z
    .locals 1

    .line 1646
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    goto :goto_0

    .line 1649
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onBackPressed()Z

    .line 1651
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1657
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer;

    .line 1659
    .local v0, "dl":Lcom/android/launcher3/views/BaseDragLayer;
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->isEditingName()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 1660
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0, v2, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1661
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    .line 1662
    return v3

    .line 1664
    :cond_0
    return v1

    .line 1665
    :cond_1
    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->isEventOverView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 1666
    invoke-virtual {v2, p1, v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;->interceptOutsideTouch(Landroid/view/MotionEvent;Lcom/android/launcher3/views/BaseDragLayer;Lcom/android/launcher3/folder/Folder;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1667
    return v3

    .line 1670
    .end local v0    # "dl":Lcom/android/launcher3/views/BaseDragLayer;
    :cond_2
    return v1
.end method

.method public onDragEnd()V
    .locals 1

    .line 374
    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 377
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 378
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 379
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 895
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    .line 896
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 899
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getDragRegionWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->xOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollAreaOffset:I

    .line 900
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1006
    iget-boolean v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 1008
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1012
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1013
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1014
    iget v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1015
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    .line 1016
    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 1018
    :cond_1
    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 9
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 921
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    return-void

    .line 924
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 925
    .local v0, "r":[F
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 927
    iget v2, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_1

    .line 928
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 929
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    .line 930
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    .line 931
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    iput v1, p0, Lcom/android/launcher3/folder/Folder;->mPrevTargetRank:I

    .line 933
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_1

    .line 934
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v5, Lcom/android/launcher3/R$string;->move_to_position:I

    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    add-int/2addr v7, v4

    .line 935
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 934
    invoke-virtual {v2, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 939
    :cond_1
    aget v1, v0, v3

    .line 940
    .local v1, "x":F
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->getNextPage()I

    move-result v2

    .line 942
    .local v2, "currentPage":I
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getCurrentCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3ee66666    # 0.45f

    mul-float/2addr v5, v6

    .line 944
    .local v5, "cellOverlap":F
    cmpg-float v6, v1, v5

    if-gez v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    move v6, v3

    .line 945
    .local v6, "isOutsideLeftEdge":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getWidth()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v5

    cmpl-float v7, v1, v7

    if-lez v7, :cond_3

    move v7, v4

    goto :goto_1

    :cond_3
    move v7, v3

    .line 947
    .local v7, "isOutsideRightEdge":Z
    :goto_1
    if-lez v2, :cond_5

    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v8, v8, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v8, :cond_4

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_4
    if-eqz v6, :cond_5

    .line 948
    :goto_2
    invoke-direct {p0, v3, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    .line 949
    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v3

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-boolean v3, v3, Lcom/android/launcher3/folder/FolderPagedView;->mIsRtl:Z

    if-eqz v3, :cond_6

    if-eqz v6, :cond_7

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    .line 951
    :goto_3
    invoke-direct {p0, v4, p1}, Lcom/android/launcher3/folder/Folder;->showScrollHint(ILcom/android/launcher3/DropTarget$DragObject;)V

    goto :goto_4

    .line 953
    :cond_7
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v3}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 954
    iget v3, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8

    .line 955
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->clearScrollHint()V

    .line 956
    iput v4, p0, Lcom/android/launcher3/folder/Folder;->mScrollHintDir:I

    .line 959
    :cond_8
    :goto_4
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 4
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 349
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v0, p0, :cond_0

    .line 350
    return-void

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->removeItem(Landroid/view/View;)V

    .line 354
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_3

    .line 356
    :cond_1
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 358
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 364
    :cond_2
    new-instance v0, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 365
    .local v0, "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v2, v3, v1}, Lcom/android/launcher3/model/data/FolderInfo;->remove(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 366
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    .line 368
    .end local v0    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :cond_3
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 370
    return-void

    .line 364
    .restart local v0    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 21
    .param p1, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 1283
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v3, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v0, v3}, Lcom/android/launcher3/folder/FolderPagedView;->rankOnCurrentPage(I)Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 1285
    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/Folder;->getTargetRank(Lcom/android/launcher3/DropTarget$DragObject;[F)I

    move-result v0

    iput v0, v1, Lcom/android/launcher3/folder/Folder;->mTargetRank:I

    .line 1288
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v4, v1, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, v4}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 1290
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mOnScrollHintAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1291
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1293
    :cond_0
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->completePendingPageChanges()V

    .line 1294
    iget-object v0, v1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v11

    .line 1295
    .local v11, "launcher":Lcom/android/launcher3/Launcher;
    if-nez v11, :cond_1

    .line 1296
    return-void

    .line 1299
    :cond_1
    iget-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_2

    .line 1300
    iget-object v0, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    move-object v12, v0

    .line 1302
    .local v12, "pasi":Lcom/android/launcher3/widget/PendingAddShortcutInfo;
    if-eqz v12, :cond_3

    iget-object v0, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->activityInfo:Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;->createWorkspaceItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v3

    :goto_1
    move-object v13, v0

    .line 1303
    .local v13, "pasiSi":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v0, 0x1

    const/4 v14, 0x0

    if-eqz v12, :cond_4

    if-nez v13, :cond_4

    .line 1305
    iget-object v3, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    iput v3, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->container:I

    .line 1306
    iget v3, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    iput v3, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->rank:I

    .line 1308
    iget v6, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->container:I

    iget v7, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->screenId:I

    const/4 v8, 0x0

    iget v9, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->spanX:I

    iget v10, v12, Lcom/android/launcher3/widget/PendingAddShortcutInfo;->spanY:I

    move-object v4, v11

    move-object v5, v12

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/Launcher;->addPendingItem(Lcom/android/launcher3/PendingAddItemInfo;II[III)V

    .line 1310
    iput-boolean v14, v2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1311
    iput-boolean v0, v1, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto/16 :goto_7

    .line 1313
    :cond_4
    iget-object v4, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v4, v4, Lcom/android/launcher3/model/data/FolderInfo;->container:I

    const/16 v5, -0x66

    if-ne v4, v5, :cond_5

    move v4, v0

    goto :goto_2

    :cond_5
    move v4, v14

    .line 1316
    .local v4, "isApplistFolder":Z
    :goto_2
    if-eqz v13, :cond_6

    .line 1317
    move-object v5, v13

    .local v5, "si":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_3

    .line 1318
    .end local v5    # "si":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_6
    iget-object v6, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v6, v6, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    if-eqz v6, :cond_7

    if-nez v4, :cond_7

    .line 1320
    iget-object v6, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    check-cast v6, Lcom/android/launcher3/model/data/WorkspaceItemFactory;

    invoke-interface {v6, v11}, Lcom/android/launcher3/model/data/WorkspaceItemFactory;->makeWorkspaceItem(Landroid/content/Context;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v6

    .line 1321
    .local v6, "si":Lcom/android/launcher3/model/data/ItemInfo;
    iput v5, v6, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 1322
    iput-object v6, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    move-object v5, v6

    goto :goto_3

    .line 1325
    .end local v6    # "si":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_7
    iget-object v5, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 1329
    .restart local v5    # "si":Lcom/android/launcher3/model/data/ItemInfo;
    :goto_3
    iget-boolean v6, v1, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    if-eqz v6, :cond_9

    .line 1330
    iget-object v6, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v7, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v6, v5, v7}, Lcom/android/launcher3/folder/FolderPagedView;->createAndAddViewForRank(Lcom/android/launcher3/model/data/ItemInfo;I)Landroid/view/View;

    move-result-object v6

    .line 1331
    .local v6, "currentDragView":Landroid/view/View;
    if-eqz v4, :cond_8

    .line 1332
    iget-object v7, v1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v15

    iget-object v7, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/16 v18, 0x0

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/model/ModelWriter;->moveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    goto :goto_4

    .line 1337
    :cond_8
    iget-object v7, v1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v15

    iget-object v7, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v7, v7, Lcom/android/launcher3/model/data/FolderInfo;->id:I

    const/16 v18, 0x0

    iget v8, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, v5, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object/from16 v16, v5

    move/from16 v17, v7

    move/from16 v19, v8

    move/from16 v20, v9

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    .line 1340
    :goto_4
    iput-boolean v14, v1, Lcom/android/launcher3/folder/Folder;->mIsExternalDrag:Z

    goto :goto_5

    .line 1342
    .end local v6    # "currentDragView":Landroid/view/View;
    :cond_9
    iget-object v6, v1, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1343
    .restart local v6    # "currentDragView":Landroid/view/View;
    iget-object v7, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    iget v8, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v7, v6, v5, v8}, Lcom/android/launcher3/folder/FolderPagedView;->addViewForRank(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;I)V

    .line 1346
    :goto_5
    iget-object v7, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v7}, Lcom/android/launcher3/dragndrop/DragView;->hasDrawn()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1349
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->getScaleX()F

    move-result v7

    .line 1350
    .local v7, "scaleX":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->getScaleY()F

    move-result v8

    .line 1351
    .local v8, "scaleY":F
    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v1, v9}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 1352
    invoke-virtual {v1, v9}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 1353
    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v9

    iget-object v10, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v9, v10, v6, v3}, Lcom/android/launcher3/dragndrop/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/dragndrop/DragView;Landroid/view/View;Landroid/view/View;)V

    .line 1354
    invoke-virtual {v1, v7}, Lcom/android/launcher3/folder/Folder;->setScaleX(F)V

    .line 1355
    invoke-virtual {v1, v8}, Lcom/android/launcher3/folder/Folder;->setScaleY(F)V

    .line 1356
    .end local v7    # "scaleX":F
    .end local v8    # "scaleY":F
    goto :goto_6

    .line 1357
    :cond_a
    iput-boolean v14, v2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 1358
    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1361
    :goto_6
    iput-boolean v0, v1, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1362
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 1365
    new-instance v3, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v3, v1}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 1366
    .local v3, "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :try_start_0
    iget-object v7, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v8, v1, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    invoke-virtual {v7, v5, v8, v14}, Lcom/android/launcher3/model/data/FolderInfo;->add(Lcom/android/launcher3/model/data/ItemInfo;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1367
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    .line 1371
    .end local v3    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    if-eq v3, v1, :cond_b

    .line 1372
    invoke-direct {v1, v14}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    .line 1375
    :cond_b
    if-eqz v4, :cond_c

    .line 1376
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->getInstance()Lcom/sonymobile/launcher/idd/Idd$CustomOrder;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "REARRANGE"

    invoke-virtual {v3, v7, v8}, Lcom/sonymobile/launcher/idd/Idd$CustomOrder;->onRearranged(Landroid/content/Context;Ljava/lang/String;)V

    .line 1381
    .end local v4    # "isApplistFolder":Z
    .end local v5    # "si":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v6    # "currentDragView":Landroid/view/View;
    :cond_c
    :goto_7
    iput-boolean v14, v1, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 1383
    iget-object v3, v1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderPagedView;->getPageCount()I

    move-result v3

    if-le v3, v0, :cond_d

    .line 1385
    iget-object v3, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v4, 0x4

    iget-object v5, v1, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 1386
    invoke-virtual {v5}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v5

    .line 1385
    invoke-virtual {v3, v4, v0, v5}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 1389
    :cond_d
    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    .line 1390
    .local v0, "state":Lcom/android/launcher3/LauncherState;
    sget-object v3, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v11, v3}, Lcom/android/launcher3/Launcher;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1391
    invoke-virtual {v11}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    const-wide/16 v5, 0x1f4

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;J)V

    .line 1393
    :cond_e
    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v3, :cond_f

    .line 1394
    iget-object v3, v2, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    sget v4, Lcom/android/launcher3/R$string;->item_moved:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->completeAction(I)V

    .line 1396
    :cond_f
    iget-object v3, v1, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v3}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/DropTarget$DragObject;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ITEM_DROP_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 1397
    invoke-interface {v3, v4}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1398
    return-void

    .line 1365
    .end local v0    # "state":Lcom/android/launcher3/LauncherState;
    .restart local v3    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    .restart local v4    # "isApplistFolder":Z
    .restart local v5    # "si":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v6    # "currentDragView":Landroid/view/View;
    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_1
    invoke-virtual {v3}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_8
    throw v7
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 7
    .param p1, "target"    # Landroid/view/View;
    .param p2, "d"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p3, "success"    # Z

    .line 1035
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v3, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-ne v2, v3, :cond_0

    .line 1036
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/Folder;->isDroppedOnDeleteDropTargetFromFolderInAppTray(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1037
    iget-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    if-nez v2, :cond_3

    if-eq p1, p0, :cond_3

    .line 1038
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    goto :goto_1

    .line 1041
    :cond_0
    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v3, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-eq v2, v3, :cond_1

    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v2, v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v2, :cond_1

    .line 1042
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 1045
    :cond_1
    iget-object v2, p2, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 1046
    .local v2, "info":Lcom/android/launcher3/model/data/ItemInfo;
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_2

    .line 1047
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v3

    .line 1048
    .local v3, "icon":Landroid/view/View;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    .line 1049
    .local v4, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v5, v1, v6}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v5

    iput v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    .line 1050
    iget v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1051
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v4}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    .line 1052
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1054
    new-instance v5, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;

    invoke-direct {v5, p0}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;-><init>(Lcom/android/launcher3/folder/Folder;)V

    .line 1055
    .local v5, "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v6, p2, v0}, Lcom/android/launcher3/folder/FolderIcon;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V

    .line 1059
    .end local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v3    # "icon":Landroid/view/View;
    .end local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v5    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :cond_3
    :goto_1
    if-eq p1, p0, :cond_5

    .line 1060
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1061
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mOnExitAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1062
    if-nez p3, :cond_4

    .line 1063
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mSuppressFolderDeletion:Z

    .line 1065
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1066
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->completeDragExit()V

    .line 1070
    :cond_5
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDeleteFolderOnDropCompleted:Z

    .line 1071
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mDragInProgress:Z

    .line 1072
    iput-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mItemAddedBackToSelfViaIcon:Z

    .line 1073
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 1074
    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mDragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    .line 1078
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->updateItemLocationsInDatabaseBatch(Z)V

    .line 1081
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v2

    if-gt v0, v2, :cond_6

    .line 1083
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    .line 1084
    invoke-virtual {v3}, Lcom/android/launcher3/folder/LauncherDelegate;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v3

    .line 1083
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/launcher3/model/data/FolderInfo;->setOption(IZLcom/android/launcher3/model/ModelWriter;)V

    .line 1086
    :cond_6
    return-void

    .line 1054
    .restart local v2    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v3    # "icon":Landroid/view/View;
    .restart local v4    # "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v5    # "s":Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;
    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {v5}, Lcom/android/launcher3/folder/Folder$SuppressInfoChanges;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 431
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    .line 433
    const/4 v0, 0x1

    return v0

    .line 435
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 281
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onFinishInflate()V

    .line 282
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 283
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingLeftRight:I

    .line 285
    .local v1, "paddingLeftRight":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$drawable;->round_rect_folder:I

    .line 286
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 285
    invoke-static {v2, v3, v4}, Landroidx/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mBackground:Landroid/graphics/drawable/GradientDrawable;

    .line 288
    sget v2, Lcom/android/launcher3/R$id;->folder_content:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderPagedView;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 289
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->folderContentPaddingTop:I

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v1, v4}, Lcom/android/launcher3/folder/FolderPagedView;->setPadding(IIII)V

    .line 290
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/FolderPagedView;->setFolder(Lcom/android/launcher3/folder/Folder;)V

    .line 292
    sget v2, Lcom/android/launcher3/R$id;->folder_page_indicator:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mPageIndicator:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    .line 293
    sget v2, Lcom/android/launcher3/R$id;->folder_name:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderNameEditText;

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    .line 294
    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->folderLabelTextSizePx:I

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setTextSize(IF)V

    .line 295
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/FolderNameEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    .line 296
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/FolderNameEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 297
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/folder/FolderNameEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 298
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setSelectAllOnFocus(Z)V

    .line 299
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderNameEditText;->getInputType()I

    move-result v4

    const v5, -0x8001

    and-int/2addr v4, v5

    const/high16 v5, 0x80000

    or-int/2addr v4, v5

    or-int/lit16 v4, v4, 0x2000

    invoke-virtual {v2, v4}, Lcom/android/launcher3/folder/FolderNameEditText;->setInputType(I)V

    .line 303
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->forceDisableSuggestions(Z)V

    .line 305
    sget v2, Lcom/android/launcher3/R$id;->folder_footer:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    .line 306
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->folder_label_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    .line 308
    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v2, :cond_0

    .line 309
    new-instance v2, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    invoke-direct {v2, p0}, Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/folder/Folder;->mKeyboardInsetAnimationCallback:Lcom/android/launcher3/anim/KeyboardInsetAnimationCallback;

    .line 310
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 312
    :cond_0
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .line 1507
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    if-ne p1, v0, :cond_5

    .line 1508
    if-eqz p2, :cond_0

    .line 1509
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/FolderInfo;->getFromLabelState()Lcom/android/launcher3/logger/LauncherAtom$FromState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 1510
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    .line 1511
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->startEditingFolderName()V

    goto :goto_1

    .line 1513
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mStatsLogManager:Lcom/android/launcher3/logging/StatsLogManager;

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    .line 1514
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    .line 1515
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withFromState(Lcom/android/launcher3/logger/LauncherAtom$FromState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    .line 1519
    .local v0, "statsLogger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    new-instance v1, Ljava/util/StringJoiner;

    sget-object v2, Lcom/android/launcher3/folder/Folder;->FOLDER_LABEL_DELIMITER:Ljava/lang/CharSequence;

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 1520
    .local v1, "labelInfoBuilder":Ljava/util/StringJoiner;
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFromLabelState:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    sget-object v3, Lcom/android/launcher3/logger/LauncherAtom$FromState;->FROM_SUGGESTED:Lcom/android/launcher3/logger/LauncherAtom$FromState;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/logger/LauncherAtom$FromState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1521
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1525
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFromTitle:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1526
    sget-object v2, Lcom/android/launcher3/logger/LauncherAtom$ToState;->UNCHANGED:Lcom/android/launcher3/logger/LauncherAtom$ToState;

    .local v2, "toLabelState":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    goto :goto_0

    .line 1528
    .end local v2    # "toLabelState":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/FolderInfo;->getToLabelState()Lcom/android/launcher3/logger/LauncherAtom$ToState;

    move-result-object v2

    .line 1529
    .restart local v2    # "toLabelState":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    invoke-virtual {v2}, Lcom/android/launcher3/logger/LauncherAtom$ToState;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TO_SUGGESTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1530
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/data/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 1533
    :cond_3
    :goto_0
    invoke-interface {v0, v2}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withToState(Lcom/android/launcher3/logger/LauncherAtom$ToState;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1535
    invoke-virtual {v1}, Ljava/util/StringJoiner;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 1536
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withEditText(Ljava/lang/String;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    .line 1539
    :cond_4
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_LABEL_UPDATED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v0, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 1540
    iget-object v3, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/FolderNameEditText;->dispatchBackKey()V

    .line 1543
    .end local v0    # "statsLogger":Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;
    .end local v1    # "labelInfoBuilder":Ljava/util/StringJoiner;
    .end local v2    # "toLabelState":Lcom/android/launcher3/logger/LauncherAtom$ToState;
    :cond_5
    :goto_1
    return-void
.end method

.method public onItemsChanged(Z)V
    .locals 0
    .param p1, "animate"    # Z

    .line 1464
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->updateTextViewFocus()V

    .line 1465
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 316
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->isDraggingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 317
    :cond_0
    new-instance v0, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1195
    invoke-direct {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaWidth()I

    move-result v0

    .line 1196
    .local v0, "contentWidth":I
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getContentAreaHeight()I

    move-result v1

    .line 1198
    .local v1, "contentHeight":I
    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1199
    .local v3, "contentAreaWidthSpec":I
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1201
    .local v4, "contentAreaHeightSpec":I
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->setFixedSize(II)V

    .line 1202
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5, v3, v4}, Lcom/android/launcher3/folder/FolderPagedView;->measure(II)V

    .line 1204
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderPagedView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_0

    .line 1205
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    .line 1206
    invoke-interface {v6}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1207
    .local v5, "cellIconGap":I
    iget-object v6, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingLeft()I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    .line 1208
    invoke-virtual {v8}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    iget-object v9, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    .line 1209
    invoke-virtual {v9}, Lcom/android/launcher3/folder/FolderPagedView;->getPaddingRight()I

    move-result v9

    add-int/2addr v9, v5

    iget-object v10, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    .line 1210
    invoke-virtual {v10}, Landroid/view/View;->getPaddingBottom()I

    move-result v10

    .line 1207
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 1212
    .end local v5    # "cellIconGap":I
    :cond_0
    iget-object v5, p0, Lcom/android/launcher3/folder/Folder;->mFooter:Landroid/view/View;

    iget v6, p0, Lcom/android/launcher3/folder/Folder;->mFooterHeight:I

    .line 1213
    invoke-static {v6, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1212
    invoke-virtual {v5, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1215
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getPaddingRight()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v0

    .line 1216
    .local v2, "folderWidth":I
    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/Folder;->getFolderHeight(I)I

    move-result v5

    .line 1217
    .local v5, "folderHeight":I
    invoke-virtual {p0, v2, v5}, Lcom/android/launcher3/folder/Folder;->setMeasuredDimension(II)V

    .line 1218
    return-void
.end method

.method public onRemove(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1442
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1443
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda12;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda13;

    invoke-direct {v3, v2}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda13;-><init>(Lcom/android/launcher3/folder/FolderPagedView;)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 1444
    iget v1, p0, Lcom/android/launcher3/folder/Folder;->mState:I

    if-ne v1, v0, :cond_0

    .line 1445
    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mRearrangeOnClose:Z

    goto :goto_0

    .line 1447
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->rearrangeChildren()V

    .line 1449
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v1

    if-gt v1, v0, :cond_2

    .line 1450
    iget-boolean v1, p0, Lcom/android/launcher3/folder/Folder;->mIsOpen:Z

    if-eqz v1, :cond_1

    .line 1451
    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->close(Z)V

    goto :goto_1

    .line 1453
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->replaceFolderWithFinalItem()V

    .line 1456
    :cond_2
    :goto_1
    return-void
.end method

.method public prepareAccessibilityDrop()V
    .locals 2

    .line 1026
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    .line 1028
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarmListener:Lcom/android/launcher3/OnAlarmListener;

    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mReorderAlarm:Lcom/android/launcher3/Alarm;

    invoke-interface {v0, v1}, Lcom/android/launcher3/OnAlarmListener;->onAlarm(Lcom/android/launcher3/Alarm;)V

    .line 1030
    :cond_0
    return-void
.end method

.method public rearrangeChildren()V
    .locals 2

    .line 1224
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->areViewsBound()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1225
    return-void

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->arrangeChildren(Ljava/util/List;)V

    .line 1228
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mItemsInvalidated:Z

    .line 1229
    return-void
.end method

.method replaceFolderWithFinalItem()V
    .locals 1

    .line 1236
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/LauncherDelegate;->replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/Folder;->mDestroyed:Z

    .line 1237
    return-void
.end method

.method public setClipPath(Landroid/graphics/Path;)V
    .locals 0
    .param p1, "clipPath"    # Landroid/graphics/Path;

    .line 1684
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mClipPath:Landroid/graphics/Path;

    .line 1685
    invoke-virtual {p0}, Lcom/android/launcher3/folder/Folder;->invalidate()V

    .line 1686
    return-void
.end method

.method public setDragController(Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0
    .param p1, "dragController"    # Lcom/android/launcher3/dragndrop/DragController;

    .line 463
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 464
    return-void
.end method

.method public setFolderIcon(Lcom/android/launcher3/folder/FolderIcon;)V
    .locals 1
    .param p1, "icon"    # Lcom/android/launcher3/folder/FolderIcon;

    .line 467
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/folder/LauncherDelegate;->init(Lcom/android/launcher3/folder/Folder;Lcom/android/launcher3/folder/FolderIcon;)V

    .line 469
    return-void
.end method

.method public setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    .line 1723
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mOnFolderStateChangedListener:Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;

    .line 1724
    return-void
.end method

.method public showItem(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 2
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 1411
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/ItemInfo;)Landroid/view/View;

    move-result-object v0

    .line 1412
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1415
    :cond_0
    return-void
.end method

.method public startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 321
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "tag":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-nez v1, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_2

    .line 323
    :cond_0
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    .line 325
    .local v1, "item":Lcom/android/launcher3/model/data/ItemInfo;
    iget v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iput v2, p0, Lcom/android/launcher3/folder/Folder;->mEmptyCellRank:I

    .line 326
    iput-object p1, p0, Lcom/android/launcher3/folder/Folder;->mCurrentDragView:Landroid/view/View;

    .line 328
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 329
    iget-boolean v2, p2, Lcom/android/launcher3/dragndrop/DragOptions;->isAccessibleDrag:Z

    if-eqz v2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    new-instance v3, Lcom/android/launcher3/folder/Folder$1;

    iget-object v4, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    new-instance v5, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda8;

    invoke-direct {v5}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda8;-><init>()V

    invoke-direct {v3, p0, v4, v5}, Lcom/android/launcher3/folder/Folder$1;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/ViewGroup;Ljava/util/function/Function;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 342
    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v2, p1, p0, p2}, Lcom/android/launcher3/folder/LauncherDelegate;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 344
    .end local v1    # "item":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public startEditingFolderName()V
    .locals 1

    .line 386
    new-instance v0, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/Folder$$ExternalSyntheticLambda5;-><init>(Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/Folder;->post(Ljava/lang/Runnable;)Z

    .line 393
    return-void
.end method

.method public updateTextViewFocus()V
    .locals 4

    .line 1246
    iget-object v0, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderPagedView;->getFirstItem()Landroid/view/View;

    move-result-object v0

    .line 1247
    .local v0, "firstChild":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderPagedView;->getLastItem()Landroid/view/View;

    move-result-object v1

    .line 1248
    .local v1, "lastChild":Landroid/view/View;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 1249
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusDownId(I)V

    .line 1250
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusRightId(I)V

    .line 1251
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusLeftId(I)V

    .line 1252
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusUpId(I)V

    .line 1255
    iget-object v2, p0, Lcom/android/launcher3/folder/Folder;->mFolderName:Lcom/android/launcher3/folder/FolderNameEditText;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/folder/FolderNameEditText;->setNextFocusForwardId(I)V

    .line 1258
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusDownId(I)V

    .line 1259
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusRightId(I)V

    .line 1260
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusLeftId(I)V

    .line 1261
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setNextFocusUpId(I)V

    .line 1263
    new-instance v2, Lcom/android/launcher3/folder/Folder$9;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/folder/Folder$9;-><init>(Lcom/android/launcher3/folder/Folder;Landroid/view/View;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    .line 1275
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/Folder;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 1277
    :goto_0
    return-void
.end method
