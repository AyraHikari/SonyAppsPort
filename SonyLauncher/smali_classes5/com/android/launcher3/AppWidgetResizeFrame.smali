.class public Lcom/android/launcher3/AppWidgetResizeFrame;
.super Lcom/android/launcher3/AbstractFloatingView;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;
    }
.end annotation


# static fields
.field private static final DIMMED_HANDLE_ALPHA:F = 0.0f

.field private static final HANDLE_COUNT:I = 0x4

.field private static final INDEX_BOTTOM:I = 0x3

.field private static final INDEX_LEFT:I = 0x0

.field private static final INDEX_RIGHT:I = 0x2

.field private static final INDEX_TOP:I = 0x1

.field private static final KEY_RECONFIGURABLE_WIDGET_EDUCATION_TIP_SEEN:Ljava/lang/String; = "launcher.reconfigurable_widget_education_tip_seen"

.field private static final MIN_OPACITY_FOR_CELL_LAYOUT_DURING_INVALID_RESIZE:F = 0.5f

.field private static final RESIZE_THRESHOLD:F = 0.66f

.field private static final SNAP_DURATION:I = 0x96

.field private static final sTmpRect:Landroid/graphics/Rect;

.field private static final sTmpRect2:Landroid/graphics/Rect;


# instance fields
.field private final logInstanceId:Lcom/android/launcher3/logging/InstanceId;

.field private final mBackgroundPadding:I

.field private final mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mBottomBorderActive:Z

.field private mBottomTouchRegionAdjustment:I

.field private mCellLayout:Lcom/android/launcher3/CellLayout;

.field private mDeltaX:I

.field private mDeltaXAddOn:I

.field private final mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mDeltaY:I

.field private mDeltaYAddOn:I

.field private final mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mDirectionVector:[I

.field private final mDragAcrossTwoPanelOpacityMargin:F

.field private final mDragHandles:[Landroid/view/View;

.field private mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

.field private final mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

.field private final mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

.field private mHorizontalResizeActive:Z

.field private final mLastDirectionVector:[I

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private mLeftBorderActive:Z

.field private mMaxHSpan:I

.field private mMaxVSpan:I

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mReconfigureButton:Landroid/widget/ImageButton;

.field private mRightBorderActive:Z

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private final mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

.field private final mSystemGestureExclusionRects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private final mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

.field private mTopBorderActive:Z

.field private mTopTouchRegionAdjustment:I

.field private final mTouchTargetWidth:I

.field private mVerticalResizeActive:Z

.field private mWidgetPadding:Landroid/graphics/Rect;

.field private mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

.field private mXDown:I

.field private mYDown:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect2:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 136
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 137
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 140
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    const/4 v0, 0x4

    new-array v1, v0, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    .line 83
    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    .line 84
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    .line 86
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 87
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 89
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 90
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 92
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 93
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-direct {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame$IntRange-IA;)V

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 95
    new-instance v2, Lcom/android/launcher3/logging/InstanceIdSequence;

    invoke-direct {v2}, Lcom/android/launcher3/logging/InstanceIdSequence;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/logging/InstanceIdSequence;->newInstanceId()Lcom/android/launcher3/logging/InstanceId;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 126
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 127
    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 142
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 143
    invoke-static {p0}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->createFor(Landroid/view/View;)Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    .line 145
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$dimen;->resize_frame_background_padding:I

    .line 146
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 147
    mul-int/2addr v2, v1

    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 148
    new-instance v1, Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/FirstFrameAnimatorHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    .line 150
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 151
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$dimen;->resize_frame_invalid_drag_across_two_panel_opacity_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    .line 156
    new-instance v0, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    .line 157
    return-void
.end method

.method private getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 6
    .param p1, "out"    # Landroid/graphics/Rect;

    .line 514
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getScaleToFit()F

    move-result v0

    .line 516
    .local v0, "scale":F
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/dragndrop/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 518
    iget v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v1, v1, 0x2

    .line 519
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 520
    .local v1, "width":I
    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v2, v2, 0x2

    .line 521
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 523
    .local v2, "height":I
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    float-to-int v3, v3

    .line 524
    .local v3, "x":I
    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBackgroundPadding:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    float-to-int v4, v4

    .line 526
    .local v4, "y":I
    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 527
    iput v4, p1, Landroid/graphics/Rect;->top:I

    .line 528
    iget v5, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v1

    iput v5, p1, Landroid/graphics/Rect;->right:I

    .line 529
    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 530
    return-void
.end method

.method private static getSpanIncrement(F)I
    .locals 2
    .param p0, "deltaFrac"    # F

    .line 400
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3f28f5c3    # 0.66f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 614
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 615
    .local v0, "hitRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 616
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 618
    .local v2, "y":I
    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHitRect(Landroid/graphics/Rect;)V

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 620
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v4

    sub-int v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->beginResizeIfPointInRegion(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    .line 622
    iput v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    .line 623
    const/4 v3, 0x1

    return v3

    .line 626
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method private hasSeenReconfigurableWidgetEducationTip()Z
    .locals 3

    .line 823
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 824
    const-string v1, "launcher.reconfigurable_widget_education_tip_seen"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/Utilities;->IS_RUNNING_IN_TEST_HARNESS:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 823
    :cond_1
    return v2
.end method

.method private isTouchOnReconfigureButton(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 630
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 631
    .local v0, "xFrame":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 632
    .local v1, "yFrame":I
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 633
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method static synthetic lambda$showForWidget$0(Lcom/android/launcher3/AppWidgetResizeFrame;)V
    .locals 1
    .param p0, "frame"    # Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method private onTouchUp()V
    .locals 4

    .line 497
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 498
    .local v0, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    .line 499
    .local v1, "xThreshold":I
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    .line 501
    .local v2, "yThreshold":I
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    mul-int/2addr v3, v1

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    .line 502
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    mul-int/2addr v3, v2

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    .line 503
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 504
    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 506
    new-instance v3, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method private resizeWidgetIfNeeded(Z)V
    .locals 27
    .param p1, "onDismiss"    # Z

    .line 407
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 408
    .local v9, "wlp":Landroid/view/ViewGroup$LayoutParams;
    instance-of v1, v9, Lcom/android/launcher3/CellLayout$LayoutParams;

    if-nez v1, :cond_0

    .line 409
    return-void

    .line 411
    :cond_0
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v10

    .line 412
    .local v10, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellWidth()I

    move-result v1

    iget-object v2, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    int-to-float v11, v1

    .line 413
    .local v11, "xThreshold":F
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCellHeight()I

    move-result v1

    iget-object v2, v10, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    add-int/2addr v1, v2

    int-to-float v12, v1

    .line 415
    .local v12, "yThreshold":F
    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXAddOn:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v11

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSpanIncrement(F)I

    move-result v21

    .line 416
    .local v21, "hSpanInc":I
    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYAddOn:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v12

    iget v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSpanIncrement(F)I

    move-result v22

    .line 418
    .local v22, "vSpanInc":I
    if-nez p1, :cond_1

    if-nez v21, :cond_1

    if-nez v22, :cond_1

    return-void

    .line 420
    :cond_1
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    const/16 v23, 0x0

    aput v23, v1, v23

    .line 421
    const/16 v24, 0x1

    aput v23, v1, v24

    .line 423
    move-object v8, v9

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 425
    .local v8, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget v1, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 426
    .local v1, "spanX":I
    iget v2, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 427
    .local v2, "spanY":I
    iget-boolean v3, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v3, :cond_2

    iget v3, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    goto :goto_0

    :cond_2
    iget v3, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 428
    .local v3, "cellX":I
    :goto_0
    iget-boolean v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_3

    iget v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    goto :goto_1

    :cond_3
    iget v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 432
    .local v4, "cellY":I
    :goto_1
    iget-object v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int v6, v1, v3

    invoke-virtual {v5, v3, v6}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 433
    iget-object v13, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v14, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v15, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    iget v6, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxHSpan:I

    iget-object v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 434
    invoke-virtual {v7}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v19

    iget-object v7, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 433
    move/from16 v16, v21

    move/from16 v17, v5

    move/from16 v18, v6

    move-object/from16 v20, v7

    invoke-virtual/range {v13 .. v20}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v25

    .line 435
    .local v25, "hSpanDelta":I
    iget-object v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v7, v5, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 436
    .end local v3    # "cellX":I
    .local v7, "cellX":I
    iget-object v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v6

    .line 437
    .end local v1    # "spanX":I
    .local v6, "spanX":I
    if-eqz v25, :cond_5

    .line 438
    iget-object v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v5, :cond_4

    const/4 v5, -0x1

    goto :goto_2

    :cond_4
    move/from16 v5, v24

    :goto_2
    aput v5, v3, v23

    .line 441
    :cond_5
    iget-object v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    add-int v5, v2, v4

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 442
    iget-object v13, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v14, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v15, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget v3, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    iget v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxVSpan:I

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 443
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v19

    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    .line 442
    move/from16 v16, v22

    move/from16 v17, v3

    move/from16 v18, v5

    move-object/from16 v20, v1

    invoke-virtual/range {v13 .. v20}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDeltaAndBound(ZZIIIILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)I

    move-result v13

    .line 444
    .local v13, "vSpanDelta":I
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v14, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    .line 445
    .end local v4    # "cellY":I
    .local v14, "cellY":I
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange2:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v15

    .line 446
    .end local v2    # "spanY":I
    .local v15, "spanY":I
    if-eqz v13, :cond_7

    .line 447
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-boolean v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_6

    const/16 v26, -0x1

    goto :goto_3

    :cond_6
    move/from16 v26, v24

    :goto_3
    aput v26, v1, v24

    .line 450
    :cond_7
    if-nez p1, :cond_8

    if-nez v13, :cond_8

    if-nez v25, :cond_8

    return-void

    .line 454
    :cond_8
    if-eqz p1, :cond_9

    .line 455
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    aget v3, v2, v23

    aput v3, v1, v23

    .line 456
    aget v2, v2, v24

    aput v2, v1, v24

    goto :goto_4

    .line 458
    :cond_9
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLastDirectionVector:[I

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    aget v3, v2, v23

    aput v3, v1, v23

    .line 459
    aget v2, v2, v24

    aput v2, v1, v24

    .line 462
    :goto_4
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v5, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v4, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDirectionVector:[I

    move v2, v7

    move v3, v14

    move-object/from16 v16, v4

    move v4, v6

    move-object/from16 v17, v5

    move v5, v15

    move-object/from16 v18, v9

    move v9, v6

    .end local v6    # "spanX":I
    .local v9, "spanX":I
    .local v18, "wlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v6, v17

    move-object/from16 v17, v10

    move v10, v7

    .end local v7    # "cellX":I
    .local v10, "cellX":I
    .local v17, "dp":Lcom/android/launcher3/DeviceProfile;
    move-object/from16 v7, v16

    move/from16 v16, v11

    move-object v11, v8

    .end local v8    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .local v11, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .local v16, "xThreshold":F
    move/from16 v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->createAreaForResize(IIIILandroid/view/View;[IZ)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 464
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v1, :cond_b

    iget v1, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v1, v9, :cond_a

    iget v1, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v1, v15, :cond_b

    .line 465
    :cond_a
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mStateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    sget v3, Lcom/android/launcher3/R$string;->widget_resized:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 466
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v23

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v24

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 469
    :cond_b
    iput v10, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 470
    iput v14, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 471
    iput v9, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 472
    iput v15, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 473
    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    add-int/2addr v1, v13

    iput v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningVInc:I

    .line 474
    iget v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    add-int v1, v1, v25

    iput v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRunningHInc:I

    .line 476
    if-nez p1, :cond_c

    .line 477
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v2, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2, v9, v15}, Lcom/android/launcher3/widget/util/WidgetSizes;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Landroid/content/Context;II)V

    .line 480
    :cond_c
    iget-object v1, v0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->requestLayout()V

    .line 481
    return-void
.end method

.method private setupForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragLayer;)V
    .locals 8
    .param p1, "widgetView"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p2, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "dragLayer"    # Lcom/android/launcher3/dragndrop/DragLayer;

    .line 208
    iput-object p2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 209
    iput-object p1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 210
    nop

    .line 211
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    .line 212
    .local v0, "info":Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;
    iput-object p3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    .line 214
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    .line 215
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    .line 216
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanX:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxHSpan:I

    .line 217
    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->maxSpanY:I

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxVSpan:I

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 220
    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    .line 219
    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetPadding:Landroid/graphics/Rect;

    .line 223
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    .line 224
    .local v1, "idp":Lcom/android/launcher3/InvariantDeviceProfile;
    iget v2, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->resizeMode:I

    const/4 v3, 0x2

    and-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    iget v6, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-ge v2, v6, :cond_0

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxVSpan:I

    if-le v2, v5, :cond_0

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinVSpan:I

    if-ge v6, v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mVerticalResizeActive:Z

    .line 227
    const/16 v6, 0x8

    if-nez v2, :cond_1

    .line 228
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v2, v2, v5

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const/4 v7, 0x3

    aget-object v2, v2, v7

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 231
    :cond_1
    iget v2, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/2addr v2, v5

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    iget v7, v1, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-ge v2, v7, :cond_2

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMaxHSpan:I

    if-le v2, v5, :cond_2

    iget v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mMinHSpan:I

    if-ge v7, v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mHorizontalResizeActive:Z

    .line 234
    if-nez v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v2, v2, v4

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 236
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v2, v2, v3

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 239
    :cond_3
    sget v2, Lcom/android/launcher3/R$id;->widget_reconfigure_button:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    .line 240
    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->isReconfigurable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 242
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->hasSeenReconfigurableWidgetEducationTip()Z

    move-result v2

    if-nez v2, :cond_4

    .line 258
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda4;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 268
    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 269
    .local v2, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    .line 270
    .local v3, "widgetInfo":Lcom/android/launcher3/model/data/ItemInfo;
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 271
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 272
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 273
    iget v4, v3, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 274
    iput-boolean v5, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 279
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 281
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v4

    .line 282
    invoke-virtual {v4}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 283
    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    .line 284
    invoke-interface {v4, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RESIZE_STARTED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 285
    invoke-interface {v4, v5}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 287
    invoke-virtual {p0, p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 288
    return-void
.end method

.method public static shouldConsume(I)Z
    .locals 1
    .param p0, "keyCode"    # I

    .line 801
    const/16 v0, 0x15

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7a

    if-eq p0, v0, :cond_1

    const/16 v0, 0x7b

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5c

    if-eq p0, v0, :cond_1

    const/16 v0, 0x5d

    if-ne p0, v0, :cond_0

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

.method public static showForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;)V
    .locals 7
    .param p0, "widget"    # Lcom/android/launcher3/widget/LauncherAppWidgetHostView;
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;

    .line 183
    invoke-virtual {p1}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 184
    .local v0, "launcher":Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    .line 186
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    .line 187
    .local v1, "dl":Lcom/android/launcher3/dragndrop/DragLayer;
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$layout;->app_widget_resize_frame:I

    .line 188
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/AppWidgetResizeFrame;

    .line 189
    .local v2, "frame":Lcom/android/launcher3/AppWidgetResizeFrame;
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->hasEnforcedCornerRadius()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getEnforcedCornerRadius()F

    move-result v3

    .line 191
    .local v3, "enforcedCornerRadius":F
    sget v4, Lcom/android/launcher3/R$id;->widget_resize_frame:I

    invoke-virtual {v2, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 192
    .local v4, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 193
    .local v5, "d":Landroid/graphics/drawable/Drawable;
    instance-of v6, v5, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_0

    .line 194
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/GradientDrawable;

    .line 195
    .local v6, "gd":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v6, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 198
    .end local v3    # "enforcedCornerRadius":F
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v5    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "gd":Landroid/graphics/drawable/GradientDrawable;
    :cond_0
    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->setupForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/dragndrop/DragLayer;)V

    .line 199
    invoke-virtual {v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->customPosition:Z

    .line 201
    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 202
    iput-boolean v4, v2, Lcom/android/launcher3/AppWidgetResizeFrame;->mIsOpen:Z

    .line 203
    new-instance v3, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method private showReconfigurableWidgetEducationTip()Lcom/android/launcher3/views/ArrowTipView;
    .locals 6

    .line 808
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 809
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    const/4 v1, 0x0

    return-object v1

    .line 812
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$dimen;->widget_reconfigure_tip_top_margin:I

    .line 813
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 814
    .local v1, "tipMargin":I
    new-instance v2, Lcom/android/launcher3/views/ArrowTipView;

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/views/ArrowTipView;-><init>(Landroid/content/Context;Z)V

    .line 816
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/android/launcher3/R$string;->reconfigurable_widget_education_tip:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mReconfigureButton:Landroid/widget/ImageButton;

    .line 817
    invoke-virtual {v5}, Landroid/widget/ImageButton;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 815
    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/android/launcher3/views/ArrowTipView;->showAroundRect(Ljava/lang/String;ILandroid/graphics/Rect;I)Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v2

    .line 814
    return-object v2
.end method

.method private snapToWidget(Z)V
    .locals 17
    .param p1, "animate"    # Z

    .line 533
    move-object/from16 v6, p0

    sget-object v0, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {v6, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 534
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v7

    .line 535
    .local v7, "newWidth":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v8

    .line 536
    .local v8, "newHeight":I
    iget v9, v0, Landroid/graphics/Rect;->left:I

    .line 537
    .local v9, "newX":I
    iget v10, v0, Landroid/graphics/Rect;->top:I

    .line 542
    .local v10, "newY":I
    const/4 v0, 0x0

    if-gez v10, :cond_0

    .line 544
    neg-int v1, v10

    iput v1, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    goto :goto_0

    .line 546
    :cond_0
    iput v0, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    .line 548
    :goto_0
    add-int v1, v10, v8

    iget-object v2, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 550
    add-int v1, v10, v8

    iget-object v2, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    neg-int v1, v1

    iput v1, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    goto :goto_1

    .line 552
    :cond_1
    iput v0, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    .line 555
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 557
    .local v11, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-object v1, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_2

    .line 558
    iget-object v1, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Workspace;

    .line 559
    .local v1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iget-object v2, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v1

    .line 560
    .local v1, "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    move-object v12, v1

    goto :goto_2

    .line 561
    .end local v1    # "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    :cond_2
    const/4 v1, 0x0

    move-object v12, v1

    .line 563
    .local v12, "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    const/4 v13, 0x1

    if-nez p1, :cond_5

    .line 564
    iput v7, v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 565
    iput v8, v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 566
    iput v9, v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 567
    iput v10, v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 568
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_3

    .line 569
    iget-object v3, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v0

    invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 571
    .end local v0    # "i":I
    :cond_3
    if-eqz v12, :cond_4

    .line 572
    iget-object v0, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/4 v2, 0x0

    invoke-direct {v6, v0, v12, v1, v2}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FF)V

    .line 575
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    move/from16 v16, v7

    goto/16 :goto_5

    .line 577
    :cond_5
    new-array v3, v2, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_WIDTH:Landroid/util/IntProperty;

    const/4 v5, 0x2

    new-array v14, v5, [I

    iget v15, v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    aput v15, v14, v0

    aput v7, v14, v13

    .line 578
    invoke-static {v4, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v0

    sget-object v4, Lcom/android/launcher3/LauncherAnimUtils;->LAYOUT_HEIGHT:Landroid/util/IntProperty;

    new-array v14, v5, [I

    iget v15, v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    aput v15, v14, v0

    aput v8, v14, v13

    .line 579
    invoke-static {v4, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v13

    sget-object v4, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_X:Landroid/util/Property;

    new-array v14, v5, [I

    iget v15, v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    aput v15, v14, v0

    aput v9, v14, v13

    .line 580
    invoke-static {v4, v14}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v5

    const/4 v4, 0x3

    sget-object v14, Lcom/android/launcher3/views/BaseDragLayer;->LAYOUT_Y:Landroid/util/Property;

    new-array v5, v5, [I

    iget v15, v11, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    aput v15, v5, v0

    aput v10, v5, v13

    .line 581
    invoke-static {v14, v5}, Landroid/animation/PropertyValuesHolder;->ofInt(Landroid/util/Property;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v5

    aput-object v5, v3, v4

    .line 577
    invoke-static {v11, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 582
    .local v14, "oa":Landroid/animation/ObjectAnimator;
    iget-object v3, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    new-instance v4, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda1;

    invoke-direct {v4, v6}, Lcom/android/launcher3/AppWidgetResizeFrame$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 584
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v15, v3

    .line 585
    .local v15, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {v15, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 586
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v2, :cond_6

    .line 587
    iget-object v4, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    iget-object v5, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v5, v5, v3

    sget-object v2, Lcom/android/launcher3/AppWidgetResizeFrame;->ALPHA:Landroid/util/Property;

    move/from16 v16, v7

    .end local v7    # "newWidth":I
    .local v16, "newWidth":I
    new-array v7, v13, [F

    aput v1, v7, v0

    .line 588
    invoke-static {v5, v2, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 587
    invoke-virtual {v4, v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    invoke-virtual {v15, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 586
    add-int/lit8 v3, v3, 0x1

    move/from16 v7, v16

    const/4 v2, 0x4

    goto :goto_4

    .end local v16    # "newWidth":I
    .restart local v7    # "newWidth":I
    :cond_6
    move/from16 v16, v7

    .line 590
    .end local v3    # "i":I
    .end local v7    # "newWidth":I
    .restart local v16    # "newWidth":I
    if-eqz v12, :cond_7

    .line 591
    iget-object v1, v6, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v2, v12

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    .line 594
    :cond_7
    const-wide/16 v0, 0x96

    invoke-virtual {v15, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 595
    invoke-virtual {v15}, Landroid/animation/AnimatorSet;->start()V

    .line 598
    .end local v14    # "oa":Landroid/animation/ObjectAnimator;
    .end local v15    # "set":Landroid/animation/AnimatorSet;
    :goto_5
    invoke-virtual {v6, v13}, Lcom/android/launcher3/AppWidgetResizeFrame;->setFocusableInTouchMode(Z)V

    .line 599
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestFocus()Z

    .line 600
    return-void
.end method

.method private updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FF)V
    .locals 6
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "pairedCellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "alpha"    # F
    .param p4, "springLoadedProgress"    # F

    .line 679
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V

    .line 681
    return-void
.end method

.method private updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FFLandroid/animation/AnimatorSet;)V
    .locals 7
    .param p1, "cellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p2, "pairedCellLayout"    # Lcom/android/launcher3/CellLayout;
    .param p3, "alpha"    # F
    .param p4, "springLoadedProgress"    # F
    .param p5, "animatorSet"    # Landroid/animation/AnimatorSet;

    .line 685
    invoke-virtual {p2}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v0

    .line 686
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_1

    .line 687
    invoke-virtual {p2, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 688
    .local v4, "child":Landroid/view/View;
    if-eqz p5, :cond_0

    .line 689
    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v6, Lcom/android/launcher3/AppWidgetResizeFrame;->ALPHA:Landroid/util/Property;

    new-array v3, v3, [F

    aput p3, v3, v2

    .line 691
    invoke-static {v4, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 690
    invoke-virtual {v5, v2}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 689
    invoke-virtual {p5, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_1

    .line 693
    :cond_0
    invoke-virtual {v4, p3}, Landroid/view/View;->setAlpha(F)V

    .line 686
    .end local v4    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 696
    .end local v1    # "i":I
    :cond_1
    if-eqz p5, :cond_2

    .line 697
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v4, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    new-array v5, v3, [F

    aput p4, v5, v2

    .line 698
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 697
    invoke-virtual {v1, v4}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 700
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mFirstFrameAnimatorHelper:Lcom/android/launcher3/FirstFrameAnimatorHelper;

    sget-object v4, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    new-array v5, v3, [F

    aput p4, v5, v2

    .line 701
    invoke-static {p2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 700
    invoke-virtual {v1, v4}, Lcom/android/launcher3/FirstFrameAnimatorHelper;->addTo(Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {p5, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_2

    .line 704
    :cond_2
    invoke-virtual {p1, p4}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    .line 705
    invoke-virtual {p2, p4}, Lcom/android/launcher3/CellLayout;->setSpringLoadedProgress(F)V

    .line 708
    :goto_2
    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_3

    move v2, v3

    :cond_3
    move v1, v2

    .line 709
    .local v1, "shouldShowCellLayoutBorder":Z
    if-eqz p5, :cond_4

    .line 710
    new-instance v2, Lcom/android/launcher3/AppWidgetResizeFrame$1;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher3/AppWidgetResizeFrame;Lcom/android/launcher3/CellLayout;ZLcom/android/launcher3/CellLayout;)V

    invoke-virtual {p5, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_3

    .line 718
    :cond_4
    invoke-virtual {p1, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 719
    invoke-virtual {p2, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 721
    :goto_3
    return-void
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 291
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mHorizontalResizeActive:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mHorizontalResizeActive:Z

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 293
    iget v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopTouchRegionAdjustment:I

    add-int/2addr v3, v0

    if-ge p2, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mVerticalResizeActive:Z

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 295
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v0

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomTouchRegionAdjustment:I

    add-int/2addr v0, v3

    if-le p2, v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mVerticalResizeActive:Z

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 298
    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v3, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move v0, v2

    goto :goto_5

    :cond_5
    :goto_4
    move v0, v1

    .line 301
    .local v0, "anyBordersActive":Z
    :goto_5
    const/4 v4, 0x2

    if-eqz v0, :cond_a

    .line 302
    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v5, v5, v2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    if-eqz v3, :cond_6

    move v3, v6

    goto :goto_6

    :cond_6
    move v3, v7

    :goto_6
    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 303
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v3, v3, v4

    iget-boolean v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v5, :cond_7

    move v5, v6

    goto :goto_7

    :cond_7
    move v5, v7

    :goto_7
    invoke-virtual {v3, v5}, Landroid/view/View;->setAlpha(F)V

    .line 304
    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v1, v3, v1

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v3, :cond_8

    move v3, v6

    goto :goto_8

    :cond_8
    move v3, v7

    :goto_8
    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    .line 305
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v3, :cond_9

    goto :goto_9

    :cond_9
    move v6, v7

    :goto_9
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 308
    :cond_a
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_b

    .line 309
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v6, v4

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_a

    .line 310
    :cond_b
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_c

    .line 311
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getWidth()I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v5}, Lcom/android/launcher3/dragndrop/DragLayer;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v3, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_a

    .line 313
    :cond_c
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 315
    :goto_a
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getRight()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 317
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_d

    .line 318
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v3

    iget v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v5, v4

    sub-int/2addr v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_b

    .line 319
    :cond_d
    iget-boolean v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_e

    .line 320
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/DragLayer;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    goto :goto_b

    .line 322
    :cond_e
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 324
    :goto_b
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getBottom()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->set(II)V

    .line 326
    return v0
.end method

.method protected handleClose(Z)V
    .locals 1
    .param p1, "animate"    # Z

    .line 674
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayer:Lcom/android/launcher3/dragndrop/DragLayer;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/DragLayer;->removeView(Landroid/view/View;)V

    .line 675
    return-void
.end method

.method protected isOfType(I)Z
    .locals 1
    .param p1, "type"    # I

    .line 725
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$onTouchUp$3$com-android-launcher3-AppWidgetResizeFrame()V
    .locals 1

    .line 506
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->snapToWidget(Z)V

    return-void
.end method

.method synthetic lambda$setupForWidget$1$com-android-launcher3-AppWidgetResizeFrame(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .line 243
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 245
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 249
    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    .line 244
    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/android/launcher3/util/PendingRequestArgs;->forWidgetInfo(ILcom/android/launcher3/widget/WidgetAddFlowHandler;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PendingRequestArgs;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    .line 250
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 251
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 254
    invoke-virtual {v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    .line 252
    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startConfigActivity(Lcom/android/launcher3/BaseDraggingActivity;II)V

    .line 256
    return-void
.end method

.method synthetic lambda$setupForWidget$2$com-android-launcher3-AppWidgetResizeFrame()V
    .locals 3

    .line 259
    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->showReconfigurableWidgetEducationTip()Lcom/android/launcher3/views/ArrowTipView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x1

    .line 261
    const-string v2, "launcher.reconfigurable_widget_education_tip_seen"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 262
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 264
    :cond_0
    return-void
.end method

.method synthetic lambda$snapToWidget$4$com-android-launcher3-AppWidgetResizeFrame(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "a"    # Landroid/animation/ValueAnimator;

    .line 582
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    return-void
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    const/4 v0, 0x1

    return v0

    .line 665
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->isTouchOnReconfigureButton(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 666
    return v1

    .line 668
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->close(Z)V

    .line 669
    return v1
.end method

.method public onControllerTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 638
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 639
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    .line 640
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    .line 642
    .local v2, "y":I
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 646
    :pswitch_0
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    sub-int v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 647
    goto :goto_0

    .line 650
    :pswitch_1
    iget v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    sub-int v4, v2, v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 651
    invoke-direct {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->onTouchUp()V

    .line 652
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mYDown:I

    iput v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mXDown:I

    goto :goto_0

    .line 644
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame;->handleTouchDown(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 655
    :goto_0
    const/4 v3, 0x1

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 485
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onDetachedFromWindow()V

    .line 488
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 489
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    .line 490
    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->logInstanceId:Lcom/android/launcher3/logging/InstanceId;

    .line 491
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withInstanceId(Lcom/android/launcher3/logging/InstanceId;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    .line 492
    invoke-virtual {v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_WIDGET_RESIZE_COMPLETED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 493
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 494
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 161
    invoke-super {p0}, Lcom/android/launcher3/AbstractFloatingView;->onFinishInflate()V

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    sget v1, Lcom/android/launcher3/R$id;->widget_resize_left_handle:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 164
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    sget v1, Lcom/android/launcher3/R$id;->widget_resize_top_handle:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 165
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    sget v1, Lcom/android/launcher3/R$id;->widget_resize_right_handle:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    sget v1, Lcom/android/launcher3/R$id;->widget_resize_bottom_handle:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 167
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 605
    invoke-static {p2}, Lcom/android/launcher3/AppWidgetResizeFrame;->shouldConsume(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->close(Z)V

    .line 607
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->requestFocus()Z

    .line 608
    const/4 v0, 0x1

    return v0

    .line 610
    :cond_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 171
    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/AbstractFloatingView;->onLayout(ZIIII)V

    .line 172
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragHandles:[Landroid/view/View;

    aget-object v1, v1, v0

    .line 175
    .local v1, "dragHandle":Landroid/view/View;
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v4

    .line 176
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 175
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 173
    .end local v1    # "dragHandle":Landroid/view/View;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mSystemGestureExclusionRects:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AppWidgetResizeFrame;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 180
    :cond_1
    return-void
.end method

.method public visualizeResizeForDelta(II)V
    .locals 9
    .param p1, "deltaX"    # I
    .param p2, "deltaY"    # I

    .line 333
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 336
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    .line 337
    .local v0, "lp":Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaXRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    .line 338
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineX:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 339
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 340
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 342
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaYRange:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->clamp(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaY:I

    .line 343
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBaselineY:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget-boolean v3, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    iget-boolean v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->applyDelta(ZZILcom/android/launcher3/AppWidgetResizeFrame$IntRange;)V

    .line 344
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    iget v1, v1, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->start:I

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 345
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTempRange1:Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;

    invoke-virtual {v1}, Lcom/android/launcher3/AppWidgetResizeFrame$IntRange;->size()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 347
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->resizeWidgetIfNeeded(Z)V

    .line 351
    sget-object v1, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    invoke-direct {p0, v1}, Lcom/android/launcher3/AppWidgetResizeFrame;->getSnappedRectRelativeToDragLayer(Landroid/graphics/Rect;)V

    .line 352
    iget-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v2, :cond_0

    .line 353
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->width:I

    .line 355
    :cond_0
    iget-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v2, :cond_1

    .line 356
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    sub-int/2addr v2, v3

    iput v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->height:I

    .line 358
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v2, :cond_2

    .line 359
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->x:I

    .line 361
    :cond_2
    iget-boolean v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v2, :cond_3

    .line 362
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;->y:I

    .line 366
    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/Workspace;

    if-eqz v1, :cond_6

    .line 367
    iget-object v1, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Workspace;

    .line 368
    .local v1, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    iget-object v2, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->getScreenPair(Lcom/android/launcher3/CellLayout;)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    .line 369
    .local v2, "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    if-eqz v2, :cond_6

    .line 370
    sget-object v3, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect:Landroid/graphics/Rect;

    .line 371
    .local v3, "focusedCellLayoutBound":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragLayerRelativeCoordinateHelper:Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;

    iget-object v5, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v4, v5, v3}, Lcom/android/launcher3/keyboard/ViewGroupFocusHelper;->viewToRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 372
    sget-object v4, Lcom/android/launcher3/AppWidgetResizeFrame;->sTmpRect2:Landroid/graphics/Rect;

    .line 373
    .local v4, "resizeFrameBound":Landroid/graphics/Rect;
    sget v5, Lcom/android/launcher3/R$id;->widget_resize_frame:I

    invoke-virtual {p0, v5}, Lcom/android/launcher3/AppWidgetResizeFrame;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 374
    const/high16 v5, 0x3f800000    # 1.0f

    .line 375
    .local v5, "progress":F
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v1, v7}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-ge v6, v7, :cond_4

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    if-gez v6, :cond_4

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    if-ge v6, v7, :cond_4

    .line 379
    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    iget v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    div-float v5, v7, v6

    goto :goto_0

    .line 381
    :cond_4
    invoke-virtual {v1, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    .line 382
    invoke-virtual {v1, v7}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    if-le v6, v7, :cond_5

    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    if-lez v6, :cond_5

    iget v6, v4, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_5

    .line 386
    iget v6, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDragAcrossTwoPanelOpacityMargin:F

    iget v7, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mDeltaX:I

    int-to-float v7, v7

    sub-float v7, v6, v7

    div-float v5, v7, v6

    .line 389
    :cond_5
    :goto_0
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 390
    .local v6, "alpha":F
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v8, v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 391
    .local v7, "springLoadedProgress":F
    iget-object v8, p0, Lcom/android/launcher3/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher3/CellLayout;

    invoke-direct {p0, v8, v2, v6, v7}, Lcom/android/launcher3/AppWidgetResizeFrame;->updateInvalidResizeEffect(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;FF)V

    .line 396
    .end local v1    # "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    .end local v2    # "pairedCellLayout":Lcom/android/launcher3/CellLayout;
    .end local v3    # "focusedCellLayoutBound":Landroid/graphics/Rect;
    .end local v4    # "resizeFrameBound":Landroid/graphics/Rect;
    .end local v5    # "progress":F
    .end local v6    # "alpha":F
    .end local v7    # "springLoadedProgress":F
    :cond_6
    invoke-virtual {p0}, Lcom/android/launcher3/AppWidgetResizeFrame;->requestLayout()V

    .line 397
    return-void
.end method
