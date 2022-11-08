.class public Lcom/android/launcher3/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;,
        Lcom/android/launcher3/CellLayout$CellInfo;,
        Lcom/android/launcher3/CellLayout$LayoutParams;,
        Lcom/android/launcher3/CellLayout$ItemConfiguration;,
        Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;,
        Lcom/android/launcher3/CellLayout$ViewCluster;,
        Lcom/android/launcher3/CellLayout$ContainerType;
    }
.end annotation


# static fields
.field private static final ANIMATION_PROGRESS:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final BACKGROUND_STATE_ACTIVE:[I

.field private static final BACKGROUND_STATE_DEFAULT:[I

.field private static final DEBUG_VISUALIZE_OCCUPIED:Z = false

.field private static final DESTRUCTIVE_REORDER:Z = false

.field public static final FOLDER:I = 0x2

.field public static final HOTSEAT:I = 0x1

.field private static final INVALID_DIRECTION:I = -0x64

.field private static final LOGD:Z = false

.field public static final MODE_ACCEPT_DROP:I = 0x4

.field public static final MODE_DRAG_OVER:I = 0x1

.field public static final MODE_ON_DROP:I = 0x2

.field public static final MODE_ON_DROP_EXTERNAL:I = 0x3

.field public static final MODE_SHOW_REORDER_HINT:I = 0x0

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_PREVIEW_MAGNITUDE:F = 0.12f

.field public static final SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CellLayout"

.field public static final WORKSPACE:I

.field private static final sPaint:Landroid/graphics/Paint;


# instance fields
.field protected final mActivity:Lcom/android/launcher3/views/ActivityContext;

.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private mBorderSpace:Landroid/graphics/Point;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field mCellHeight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field mCellWidth:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mChildScale:F

.field private final mContainerType:I

.field private mCountX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private mCountY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "launcher"
    .end annotation
.end field

.field private final mDelegatedCellDrawings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;",
            ">;"
        }
    .end annotation
.end field

.field private final mDirectionVector:[I

.field private final mDragCell:[I

.field private final mDragCellSpan:[I

.field final mDragOutlineAlphas:[F

.field private final mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field final mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

.field private mDragging:Z

.field private mDropPending:Z

.field private final mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mFixedCellHeight:I

.field private mFixedCellWidth:I

.field private mFixedHeight:I

.field private mFixedWidth:I

.field final mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

.field private mGridAlpha:F

.field private mGridColor:I

.field private mGridVisualizationRoundingRadius:I

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private final mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDragOverlapping:Z

.field private mItemPlacementDirty:Z

.field private mOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field private final mOccupiedRect:Landroid/graphics/Rect;

.field final mPreviousReorderDirection:[I

.field final mReorderAnimators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/CellLayout$LayoutParams;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field final mReorderPreviewAnimationMagnitude:F

.field private mScrollProgress:F

.field final mShakeAnimators:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/launcher3/Reorderable;",
            "Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private final mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

.field private mSpringLoadedProgress:F

.field final mTempLocation:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRectStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFloatArray:[F

.field private mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

.field final mTmpPoint:[I

.field final mTmpPointF:Landroid/graphics/PointF;

.field mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

.field private mVisualizeCells:Z

.field private mVisualizeDropLocation:Z

.field private mVisualizeGridPaint:Landroid/graphics/Paint;

.field private mVisualizeGridRect:Landroid/graphics/RectF;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCountX(Lcom/android/launcher3/CellLayout;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountY(Lcom/android/launcher3/CellLayout;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return p0
.end method

.method static bridge synthetic -$$Nest$sfgetANIMATION_PROGRESS()Landroid/util/Property;
    .locals 1

    sget-object v0, Lcom/android/launcher3/CellLayout;->ANIMATION_PROGRESS:Landroid/util/Property;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 120
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a2

    aput v2, v0, v1

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    .line 121
    sget-object v0, Lcom/android/launcher3/CellLayout;->EMPTY_STATE_SET:[I

    sput-object v0, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    .line 201
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    .line 207
    new-instance v0, Lcom/android/launcher3/CellLayout$1;

    const-string v1, "spring_loaded_progress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/CellLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/CellLayout;->SPRING_LOADED_PROGRESS:Landroid/util/FloatProperty;

    .line 2102
    new-instance v0, Lcom/android/launcher3/CellLayout$5;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "animationProgress"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/CellLayout$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/CellLayout;->ANIMATION_PROGRESS:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 221
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 20
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 108
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 109
    new-array v4, v3, [I

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 110
    new-instance v4, Landroid/graphics/PointF;

    invoke-direct {v4}, Landroid/graphics/PointF;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    .line 117
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    .line 118
    new-instance v4, Lcom/android/launcher3/folder/PreviewBackground;

    invoke-direct {v4}, Lcom/android/launcher3/folder/PreviewBackground;-><init>()V

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    .line 125
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 126
    iput v5, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 129
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 133
    const/4 v6, 0x4

    new-array v7, v6, [Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 134
    array-length v8, v7

    new-array v8, v8, [F

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    .line 135
    array-length v7, v7

    new-array v7, v7, [Lcom/android/launcher3/InterruptibleInOutAnimator;

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    .line 139
    iput v2, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 140
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 142
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    .line 143
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    .line 145
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 148
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    .line 149
    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    .line 150
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    .line 151
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    .line 153
    const/4 v8, 0x0

    iput v8, v0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    .line 154
    iput v2, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    .line 155
    iput v8, v0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    .line 156
    iput v8, v0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    .line 159
    new-array v9, v3, [I

    iput-object v9, v0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    .line 160
    new-array v10, v3, [I

    iput-object v10, v0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    .line 162
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 176
    const/high16 v11, 0x3f800000    # 1.0f

    iput v11, v0, Lcom/android/launcher3/CellLayout;->mChildScale:F

    .line 190
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    .line 191
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    .line 192
    new-array v11, v3, [I

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    .line 194
    new-array v3, v3, [I

    iput-object v3, v0, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    .line 197
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 198
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    iput-object v11, v0, Lcom/android/launcher3/CellLayout;->mTempRectF:Landroid/graphics/RectF;

    .line 199
    new-array v6, v6, [F

    iput-object v6, v0, Lcom/android/launcher3/CellLayout;->mTmpFloatArray:[F

    .line 1246
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    iput-object v6, v0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    .line 230
    sget-object v6, Lcom/android/launcher3/R$styleable;->CellLayout:[I

    move-object/from16 v11, p2

    move/from16 v12, p3

    invoke-virtual {v1, v11, v6, v12, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 231
    .local v6, "a":Landroid/content/res/TypedArray;
    sget v13, Lcom/android/launcher3/R$styleable;->CellLayout_containerType:I

    invoke-virtual {v6, v13, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v13

    iput v13, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    .line 232
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 236
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setWillNotDraw(Z)V

    .line 237
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setClipToPadding(Z)V

    .line 238
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/views/ActivityContext;

    iput-object v13, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 239
    invoke-interface {v13}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v13

    .line 241
    .local v13, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-direct {v0, v13}, Lcom/android/launcher3/CellLayout;->resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V

    .line 243
    iget-object v14, v13, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v14, v14, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iput v14, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 244
    iget-object v14, v13, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v14, v14, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iput v14, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 245
    new-instance v15, Lcom/android/launcher3/util/GridOccupancy;

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-direct {v15, v8, v14}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v15, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 246
    new-instance v8, Lcom/android/launcher3/util/GridOccupancy;

    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v8, v14, v15}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v8, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 248
    const/16 v8, -0x64

    aput v8, v3, v2

    .line 249
    aput v8, v3, v7

    .line 251
    iput v5, v4, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 252
    iput v5, v4, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 254
    invoke-virtual {v0, v2}, Lcom/android/launcher3/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 258
    .local v3, "res":Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lcom/android/launcher3/R$drawable;->bg_celllayout:I

    invoke-virtual {v4, v8}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 259
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 260
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v8, Lcom/android/launcher3/R$attr;->workspaceAccentColor:I

    invoke-static {v4, v8}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    .line 263
    sget v4, Lcom/android/launcher3/R$dimen;->grid_visualization_rounding_radius:I

    .line 264
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v0, Lcom/android/launcher3/CellLayout;->mGridVisualizationRoundingRadius:I

    .line 265
    iget v4, v13, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v4, v4

    const v8, 0x3df5c28f    # 0.12f

    mul-float/2addr v4, v8

    iput v4, v0, Lcom/android/launcher3/CellLayout;->mReorderPreviewAnimationMagnitude:F

    .line 268
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->DEACCEL_2_5:Landroid/view/animation/Interpolator;

    iput-object v4, v0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 269
    aput v5, v9, v7

    aput v5, v9, v2

    .line 270
    aput v5, v10, v7

    aput v5, v10, v2

    .line 271
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

    array-length v7, v5

    if-ge v4, v7, :cond_0

    .line 272
    new-instance v7, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v7, v2, v2, v2, v2}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(IIII)V

    aput-object v7, v5, v4

    .line 271
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 274
    .end local v4    # "i":I
    :cond_0
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    sget v4, Lcom/android/launcher3/R$attr;->workspaceTextColor:I

    invoke-static {v1, v4}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 280
    sget v2, Lcom/android/launcher3/R$integer;->config_dragOutlineFadeTime:I

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 281
    .local v2, "duration":I
    const/4 v4, 0x0

    .line 282
    .local v4, "fromAlphaValue":F
    sget v5, Lcom/android/launcher3/R$integer;->config_dragOutlineMaxAlpha:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-float v5, v5

    .line 284
    .local v5, "toAlphaValue":F
    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([FF)V

    .line 286
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v9, v9

    if-ge v7, v9, :cond_1

    .line 287
    new-instance v9, Lcom/android/launcher3/InterruptibleInOutAnimator;

    int-to-long v14, v2

    invoke-direct {v9, v14, v15, v8, v5}, Lcom/android/launcher3/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 289
    .local v9, "anim":Lcom/android/launcher3/InterruptibleInOutAnimator;
    invoke-virtual {v9}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v10

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v10, v14}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 290
    move v10, v7

    .line 291
    .local v10, "thisIndex":I
    invoke-virtual {v9}, Lcom/android/launcher3/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v14

    new-instance v15, Lcom/android/launcher3/CellLayout$2;

    invoke-direct {v15, v0, v10}, Lcom/android/launcher3/CellLayout$2;-><init>(Lcom/android/launcher3/CellLayout;I)V

    invoke-virtual {v14, v15}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 301
    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aput-object v9, v14, v7

    .line 286
    .end local v9    # "anim":Lcom/android/launcher3/InterruptibleInOutAnimator;
    .end local v10    # "thisIndex":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 304
    .end local v7    # "i":I
    :cond_1
    new-instance v7, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    invoke-direct {v7, v1, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;-><init>(Landroid/content/Context;I)V

    iput-object v7, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 305
    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v10, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move-object/from16 v19, v14

    move-object v14, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 307
    invoke-virtual {v0, v7}, Lcom/android/launcher3/CellLayout;->addView(Landroid/view/View;)V

    .line 308
    return-void
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 18
    .param p1, "v"    # Landroid/view/View;
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "currentState"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;

    .line 1464
    move-object/from16 v9, p0

    move-object/from16 v10, p4

    iget-object v0, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    move-object/from16 v11, p1

    invoke-virtual {v0, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/util/CellAndSpan;

    .line 1465
    .local v12, "c":Lcom/android/launcher3/util/CellAndSpan;
    const/4 v13, 0x0

    .line 1466
    .local v13, "success":Z
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v14, 0x0

    invoke-virtual {v0, v12, v14}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1467
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v15, 0x1

    move-object/from16 v8, p2

    invoke-virtual {v0, v8, v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 1469
    iget v1, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v2, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v12, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v4, v12, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v6, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v7, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object/from16 v17, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1472
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v0, v14

    if-ltz v1, :cond_0

    aget v0, v0, v15

    if-ltz v0, :cond_0

    .line 1473
    iput v1, v12, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1474
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v0, v15

    iput v0, v12, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1475
    const/4 v13, 0x1

    .line 1477
    :cond_0
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v12, v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1478
    return v13
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 21
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .line 1763
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p5

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_0

    return v11

    .line 1765
    :cond_0
    const/4 v12, 0x0

    .line 1766
    .local v12, "success":Z
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v0

    .line 1768
    .local v13, "boundingRect":Landroid/graphics/Rect;
    move-object/from16 v14, p1

    invoke-virtual {v10, v14, v13}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->getBoundingRectForViews(Ljava/util/ArrayList;Landroid/graphics/Rect;)V

    .line 1771
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v15, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1772
    .local v1, "v":Landroid/view/View;
    iget-object v2, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 1773
    .local v2, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v3, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v3, v2, v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1774
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_0

    .line 1776
    :cond_1
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    move-object v2, v0

    .line 1777
    .local v2, "blockOccupied":Lcom/android/launcher3/util/GridOccupancy;
    iget v1, v13, Landroid/graphics/Rect;->top:I

    .line 1778
    .local v1, "top":I
    iget v0, v13, Landroid/graphics/Rect;->left:I

    .line 1781
    .local v0, "left":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Landroid/view/View;

    .line 1782
    .local v8, "v":Landroid/view/View;
    iget-object v3, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    .line 1783
    .local v7, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget v3, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int v4, v3, v0

    iget v3, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int v5, v3, v1

    iget v6, v7, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v3, v7, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    const/16 v17, 0x1

    move/from16 v18, v3

    move-object v3, v2

    move-object/from16 v19, v7

    .end local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .local v19, "c":Lcom/android/launcher3/util/CellAndSpan;
    move/from16 v7, v18

    move-object/from16 v18, v8

    .end local v8    # "v":Landroid/view/View;
    .local v18, "v":Landroid/view/View;
    move/from16 v8, v17

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1784
    .end local v18    # "v":Landroid/view/View;
    .end local v19    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_1

    .line 1786
    :cond_2
    iget-object v3, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    move-object/from16 v8, p2

    invoke-virtual {v3, v8, v11}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Landroid/graphics/Rect;Z)V

    .line 1788
    iget v3, v13, Landroid/graphics/Rect;->left:I

    iget v4, v13, Landroid/graphics/Rect;->top:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 1789
    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v7, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v7, v7, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v11, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    iget-object v15, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    .line 1788
    move/from16 v18, v0

    .end local v0    # "left":I
    .local v18, "left":I
    move-object/from16 v0, p0

    move/from16 v19, v1

    .end local v1    # "top":I
    .local v19, "top":I
    move v1, v3

    move-object/from16 v20, v2

    .end local v2    # "blockOccupied":Lcom/android/launcher3/util/GridOccupancy;
    .local v20, "blockOccupied":Lcom/android/launcher3/util/GridOccupancy;
    move v2, v4

    move v3, v5

    move v4, v6

    move-object/from16 v5, p3

    move-object v6, v7

    move-object v7, v11

    move-object v8, v15

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I[[Z[[Z[I)[I

    .line 1793
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    if-ltz v1, :cond_4

    const/4 v2, 0x1

    aget v0, v0, v2

    if-ltz v0, :cond_4

    .line 1794
    iget v0, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v0

    .line 1795
    .local v1, "deltaX":I
    iget-object v0, v9, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v0, v0, v2

    iget v2, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    .line 1796
    .local v0, "deltaY":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1797
    .local v3, "v":Landroid/view/View;
    iget-object v4, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/CellAndSpan;

    .line 1798
    .local v4, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget v5, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    add-int/2addr v5, v1

    iput v5, v4, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1799
    iget v5, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    add-int/2addr v5, v0

    iput v5, v4, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1800
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_2

    .line 1801
    :cond_3
    const/4 v12, 0x1

    .line 1805
    .end local v0    # "deltaY":I
    .end local v1    # "deltaX":I
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1806
    .local v1, "v":Landroid/view/View;
    iget-object v2, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 1807
    .local v2, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v3, v9, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1808
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_3

    .line 1809
    :cond_5
    return v12
.end method

.method private animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V
    .locals 17
    .param p1, "solution"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "commitDragView"    # Z

    .line 2061
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    iget-object v10, v8, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 2062
    .local v10, "occupied":Lcom/android/launcher3/util/GridOccupancy;
    invoke-virtual {v10}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 2064
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v11

    .line 2065
    .local v11, "childCount":I
    const/4 v0, 0x0

    move v12, v0

    .local v12, "i":I
    :goto_0
    const/4 v13, 0x1

    if-ge v12, v11, :cond_2

    .line 2066
    iget-object v0, v8, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2067
    .local v14, "child":Landroid/view/View;
    move-object/from16 v15, p2

    if-ne v14, v15, :cond_0

    goto :goto_1

    .line 2068
    :cond_0
    iget-object v0, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/launcher3/util/CellAndSpan;

    .line 2069
    .local v7, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-eqz v7, :cond_1

    .line 2070
    iget v2, v7, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v3, v7, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    const/16 v4, 0x96

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v14

    move-object v8, v7

    .end local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .local v8, "c":Lcom/android/launcher3/util/CellAndSpan;
    move/from16 v7, v16

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2072
    invoke-virtual {v10, v8, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_1

    .line 2069
    .end local v8    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .restart local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_1
    move-object v8, v7

    .line 2065
    .end local v7    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v14    # "child":Landroid/view/View;
    :goto_1
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v8, p0

    goto :goto_0

    :cond_2
    move-object/from16 v15, p2

    .line 2075
    .end local v12    # "i":I
    if-eqz p3, :cond_3

    .line 2076
    invoke-virtual {v10, v9, v13}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 2078
    :cond_3
    return-void
.end method

.method private applyColorExtractionOnWidget(Lcom/android/launcher3/DropTarget$DragObject;[III)V
    .locals 9
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "targetCell"    # [I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .line 1186
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 1187
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v1, :cond_0

    .line 1188
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    .line 1189
    .local v1, "screenId":I
    const/4 v2, 0x0

    aget v4, p2, v2

    const/4 v2, 0x1

    aget v5, p2, v2

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v3, p0

    move v6, p3

    move v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 1191
    move-object v2, v0

    check-cast v2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;->handleDrag(Landroid/graphics/Rect;Landroid/view/View;I)V

    .line 1193
    .end local v1    # "screenId":I
    :cond_0
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 4
    .param p2, "occupied"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "ignoreView"    # Landroid/view/View;
    .param p5, "solution"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .line 1817
    .local p1, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    aget v1, p3, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/2addr v1, v3

    if-le v1, v2, :cond_4

    .line 1820
    aget v1, p3, v2

    .line 1821
    .local v1, "temp":I
    aput v0, p3, v2

    .line 1823
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1825
    return v2

    .line 1827
    :cond_0
    aput v1, p3, v2

    .line 1828
    aget v1, p3, v0

    .line 1829
    aput v0, p3, v0

    .line 1831
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1833
    return v2

    .line 1836
    :cond_1
    aput v1, p3, v0

    .line 1839
    aget v3, p3, v0

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v0

    .line 1840
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 1841
    aget v1, p3, v2

    .line 1842
    aput v0, p3, v2

    .line 1843
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1845
    return v2

    .line 1848
    :cond_2
    aput v1, p3, v2

    .line 1849
    aget v1, p3, v0

    .line 1850
    aput v0, p3, v0

    .line 1851
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1853
    return v2

    .line 1856
    :cond_3
    aput v1, p3, v0

    .line 1857
    aget v3, p3, v0

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v0

    .line 1858
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 1860
    .end local v1    # "temp":I
    goto :goto_0

    .line 1863
    :cond_4
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1865
    return v2

    .line 1868
    :cond_5
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1869
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1870
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1872
    return v2

    .line 1875
    :cond_6
    aget v1, p3, v0

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v0

    .line 1876
    aget v1, p3, v2

    mul-int/lit8 v1, v1, -0x1

    aput v1, p3, v2

    .line 1882
    aget v1, p3, v2

    .line 1883
    .restart local v1    # "temp":I
    aget v3, p3, v0

    aput v3, p3, v2

    .line 1884
    aput v1, p3, v0

    .line 1885
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1887
    return v2

    .line 1891
    :cond_7
    aget v3, p3, v0

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v0

    .line 1892
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 1893
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/CellLayout;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1895
    return v2

    .line 1898
    :cond_8
    aget v3, p3, v0

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v0

    .line 1899
    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    .line 1902
    aget v1, p3, v2

    .line 1903
    aget v3, p3, v0

    aput v3, p3, v2

    .line 1904
    aput v1, p3, v0

    .line 1906
    .end local v1    # "temp":I
    :goto_0
    return v0
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V
    .locals 21
    .param p1, "solution"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;
    .param p3, "mode"    # I

    .line 2084
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v12

    .line 2085
    .local v12, "childCount":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_3

    .line 2086
    iget-object v0, v10, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2087
    .local v14, "child":Landroid/view/View;
    move-object/from16 v15, p2

    if-ne v14, v15, :cond_0

    goto :goto_2

    .line 2088
    :cond_0
    iget-object v0, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/launcher3/util/CellAndSpan;

    .line 2089
    .local v9, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-nez p3, :cond_1

    iget-object v0, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, v11, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 2090
    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    move/from16 v16, v0

    .line 2093
    .local v16, "skip":Z
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2094
    .local v8, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    if-eqz v9, :cond_2

    if-nez v16, :cond_2

    instance-of v0, v14, Lcom/android/launcher3/Reorderable;

    if-eqz v0, :cond_2

    .line 2095
    new-instance v17, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    move-object v2, v14

    check-cast v2, Lcom/android/launcher3/Reorderable;

    iget v4, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v5, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v6, v9, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v7, v9, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v3, v9, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iget v1, v9, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    move-object/from16 v0, v17

    move/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v19, v3

    move/from16 v3, p3

    move-object/from16 v20, v8

    .end local v8    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .local v20, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    move/from16 v8, v19

    move-object/from16 v19, v9

    .end local v9    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .local v19, "c":Lcom/android/launcher3/util/CellAndSpan;
    move/from16 v9, v18

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/Reorderable;IIIIIII)V

    .line 2097
    .local v0, "rha":Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V

    goto :goto_2

    .line 2094
    .end local v0    # "rha":Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
    .end local v19    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v20    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .restart local v8    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .restart local v9    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_2
    move-object/from16 v20, v8

    move-object/from16 v19, v9

    .line 2085
    .end local v8    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v9    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v14    # "child":Landroid/view/View;
    .end local v16    # "skip":Z
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v15, p2

    .line 2100
    .end local v13    # "i":I
    return-void
.end method

.method private canCreateFolder(Landroid/view/View;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .line 541
    instance-of v0, p1, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/dragndrop/DraggableView;

    .line 542
    invoke-interface {v0}, Lcom/android/launcher3/dragndrop/DraggableView;->getViewType()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 541
    :goto_0
    return v0
.end method

.method private commitTempPlacement(Landroid/view/View;)V
    .locals 19
    .param p1, "dragView"    # Landroid/view/View;

    .line 2271
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 2273
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v1

    .line 2274
    .local v1, "screenId":I
    const/16 v2, -0x64

    .line 2276
    .local v2, "container":I
    iget v3, v0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2277
    const/4 v1, -0x1

    .line 2278
    const/16 v2, -0x65

    .line 2281
    :cond_0
    iget-object v3, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    .line 2282
    .local v3, "childCount":I
    const/4 v5, 0x0

    move v13, v5

    .local v13, "i":I
    :goto_0
    if-ge v13, v3, :cond_5

    .line 2283
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v5, v13}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 2284
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    move-object v15, v5

    check-cast v15, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2285
    .local v15, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    invoke-virtual {v14}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    move-object v12, v5

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    .line 2288
    .local v12, "info":Lcom/android/launcher3/model/data/ItemInfo;
    if-eqz v12, :cond_4

    move-object/from16 v11, p1

    if-eq v14, v11, :cond_4

    .line 2289
    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v6, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v5, v6, :cond_2

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v6, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v5, v6, :cond_2

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v5, v6, :cond_2

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget v6, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    move v5, v4

    :goto_2
    move/from16 v16, v5

    .line 2293
    .local v16, "requiresDbUpdate":Z
    iget v5, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iput v5, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    .line 2294
    iget v5, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iput v5, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    .line 2295
    iget v5, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iput v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    .line 2296
    iget v5, v15, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    iput v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    .line 2298
    if-eqz v16, :cond_3

    .line 2299
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v5}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/ModelWriter;

    move-result-object v5

    iget v9, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v10, v12, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v8, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v7, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    move-object v6, v12

    move/from16 v17, v7

    move v7, v2

    move/from16 v18, v8

    move v8, v1

    move/from16 v11, v18

    move-object/from16 v18, v12

    .end local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .local v18, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move/from16 v12, v17

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/model/ModelWriter;->modifyItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIIIII)V

    goto :goto_3

    .line 2298
    .end local v18    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_3
    move-object/from16 v18, v12

    .end local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v18    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    goto :goto_3

    .line 2288
    .end local v16    # "requiresDbUpdate":Z
    .end local v18    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .restart local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    :cond_4
    move-object/from16 v18, v12

    .line 2282
    .end local v12    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v14    # "child":Landroid/view/View;
    .end local v15    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 2304
    .end local v13    # "i":I
    :cond_5
    return-void
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 2

    .line 2264
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2265
    .local v1, "a":Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->finishAnimation()V

    .line 2266
    .end local v1    # "a":Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;
    goto :goto_0

    .line 2267
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShakeAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 2268
    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F
    .param p3, "result"    # [I

    .line 1970
    div-float v0, p2, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    .line 1972
    .local v0, "angle":D
    const/4 v2, 0x0

    aput v2, p3, v2

    .line 1973
    const/4 v3, 0x1

    aput v2, p3, v3

    .line 1974
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 1975
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    aput v4, p3, v2

    .line 1977
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpl-double v2, v4, v6

    if-lez v2, :cond_1

    .line 1978
    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v3

    .line 1980
    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V
    .locals 9
    .param p1, "solution"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .param p2, "temp"    # Z

    .line 2024
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2025
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2026
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2027
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2029
    .local v3, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    if-eqz p2, :cond_0

    .line 2030
    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v8, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    .local v4, "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_1

    .line 2032
    .end local v4    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_0
    new-instance v4, Lcom/android/launcher3/util/CellAndSpan;

    iget v5, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v6, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v7, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v8, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/launcher3/util/CellAndSpan;-><init>(IIII)V

    .line 2034
    .restart local v4    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :goto_1
    invoke-virtual {p1, v2, v4}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/util/CellAndSpan;)V

    .line 2025
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v4    # "c":Lcom/android/launcher3/util/CellAndSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2036
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V
    .locals 7
    .param p1, "solution"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .param p2, "dragView"    # Landroid/view/View;

    .line 2039
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 2041
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2042
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_2

    .line 2043
    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2044
    .local v3, "child":Landroid/view/View;
    if-ne v3, p2, :cond_0

    goto :goto_1

    .line 2045
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2046
    .local v4, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v5, p1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/util/CellAndSpan;

    .line 2047
    .local v5, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-eqz v5, :cond_1

    .line 2048
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iput v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2049
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iput v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2050
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    iput v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 2051
    iget v6, v5, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    iput v6, v4, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 2052
    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v6, v5, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 2042
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v5    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2055
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 2056
    return-void
.end method

.method private findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 12
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "solution"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;

    .line 2316
    move-object/from16 v0, p8

    const/4 v1, 0x2

    new-array v11, v1, [I

    .line 2317
    .local v11, "result":[I
    new-array v1, v1, [I

    .line 2318
    .local v1, "resultSpan":[I
    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object v9, v11

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    .line 2320
    const/4 v2, 0x0

    aget v3, v11, v2

    if-ltz v3, :cond_0

    const/4 v3, 0x1

    aget v4, v11, v3

    if-ltz v4, :cond_0

    .line 2321
    move-object v4, p0

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 2322
    aget v5, v11, v2

    iput v5, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    .line 2323
    aget v5, v11, v3

    iput v5, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    .line 2324
    aget v2, v1, v2

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    .line 2325
    aget v2, v1, v3

    iput v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    .line 2326
    iput-boolean v3, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2320
    :cond_0
    move-object v4, p0

    .line 2328
    iput-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2330
    :goto_0
    return-object v0
.end method

.method private findNearestArea(IIIIIIZ[I[I)[I
    .locals 24
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "ignoreOccupied"    # Z
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I

    .line 1279
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->lazyInitTempRectStack()V

    .line 1284
    move/from16 v5, p1

    int-to-float v6, v5

    iget v7, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    add-int/lit8 v8, v3, -0x1

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-int v5, v6

    .line 1285
    .end local p1    # "pixelX":I
    .local v5, "pixelX":I
    move/from16 v6, p2

    int-to-float v7, v6

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    add-int/lit8 v10, v4, -0x1

    mul-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v8

    sub-float/2addr v7, v9

    float-to-int v6, v7

    .line 1288
    .end local p2    # "pixelY":I
    .local v6, "pixelY":I
    if-eqz p8, :cond_0

    move-object/from16 v7, p8

    goto :goto_0

    :cond_0
    const/4 v7, 0x2

    new-array v7, v7, [I

    .line 1289
    .local v7, "bestXY":[I
    :goto_0
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1290
    .local v8, "bestDistance":D
    new-instance v10, Landroid/graphics/Rect;

    const/4 v11, -0x1

    invoke-direct {v10, v11, v11, v11, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1291
    .local v10, "bestRect":Landroid/graphics/Rect;
    new-instance v12, Ljava/util/Stack;

    invoke-direct {v12}, Ljava/util/Stack;-><init>()V

    .line 1293
    .local v12, "validRegions":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    iget v13, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 1294
    .local v13, "countX":I
    iget v14, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 1296
    .local v14, "countY":I
    if-lez v1, :cond_1f

    if-lez v2, :cond_1f

    if-lez v3, :cond_1f

    if-lez v4, :cond_1f

    if-lt v3, v1, :cond_1f

    if-ge v4, v2, :cond_1

    move-object/from16 p2, v7

    move-object v1, v10

    goto/16 :goto_16

    .line 1301
    :cond_1
    const/4 v15, 0x0

    .local v15, "y":I
    :goto_1
    add-int/lit8 v16, v2, -0x1

    sub-int v11, v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x1

    if-ge v15, v11, :cond_1d

    .line 1303
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_2
    add-int/lit8 v18, v1, -0x1

    move-object/from16 p2, v7

    .end local v7    # "bestXY":[I
    .local p2, "bestXY":[I
    sub-int v7, v13, v18

    if-ge v11, v7, :cond_1c

    .line 1304
    const/4 v7, -0x1

    .line 1305
    .local v7, "ySize":I
    const/16 v18, -0x1

    .line 1306
    .local v18, "xSize":I
    if-eqz p7, :cond_15

    .line 1308
    const/16 v19, 0x0

    move/from16 v20, v7

    move/from16 v7, v19

    .local v7, "i":I
    .local v20, "ySize":I
    :goto_3
    if-ge v7, v1, :cond_4

    .line 1309
    const/16 v19, 0x0

    move/from16 v1, v19

    .local v1, "j":I
    :goto_4
    if-ge v1, v2, :cond_3

    .line 1310
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v2, v2, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v19, v11, v7

    aget-object v2, v2, v19

    add-int v19, v15, v1

    aget-boolean v2, v2, v19

    if-eqz v2, :cond_2

    .line 1311
    move-wide/from16 v22, v8

    move-object v1, v10

    goto/16 :goto_14

    .line 1309
    :cond_2
    add-int/lit8 v1, v1, 0x1

    move/from16 v2, p4

    goto :goto_4

    .line 1308
    .end local v1    # "j":I
    :cond_3
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p3

    move/from16 v2, p4

    goto :goto_3

    .line 1315
    .end local v7    # "i":I
    :cond_4
    move/from16 v1, p3

    .line 1316
    .end local v18    # "xSize":I
    .local v1, "xSize":I
    move/from16 v2, p4

    .line 1321
    .end local v20    # "ySize":I
    .local v2, "ySize":I
    const/4 v7, 0x1

    .line 1322
    .local v7, "incX":Z
    if-lt v1, v3, :cond_5

    move/from16 v18, v17

    goto :goto_5

    :cond_5
    move/from16 v18, v16

    .line 1323
    .local v18, "hitMaxX":Z
    :goto_5
    if-lt v2, v4, :cond_6

    move/from16 v19, v17

    goto :goto_6

    :cond_6
    move/from16 v19, v16

    .line 1324
    .local v19, "hitMaxY":Z
    :goto_6
    if-eqz v18, :cond_9

    if-nez v19, :cond_7

    goto :goto_8

    .line 1350
    .end local v19    # "hitMaxY":Z
    :cond_7
    const/4 v7, 0x1

    .line 1351
    if-lt v1, v3, :cond_8

    move/from16 v19, v17

    goto :goto_7

    :cond_8
    move/from16 v19, v16

    :goto_7
    move/from16 v18, v19

    .line 1352
    move/from16 v18, v1

    move v7, v2

    move-wide/from16 v22, v8

    move-object/from16 v21, v10

    goto/16 :goto_f

    .line 1325
    .restart local v19    # "hitMaxY":Z
    :cond_9
    :goto_8
    if-eqz v7, :cond_d

    if-nez v18, :cond_d

    .line 1326
    const/16 v20, 0x0

    move-object/from16 v21, v10

    move/from16 v10, v20

    .local v10, "j":I
    .local v21, "bestRect":Landroid/graphics/Rect;
    :goto_9
    if-ge v10, v2, :cond_c

    .line 1327
    move-wide/from16 v22, v8

    .end local v8    # "bestDistance":D
    .local v22, "bestDistance":D
    add-int v8, v11, v1

    add-int/lit8 v9, v13, -0x1

    if-gt v8, v9, :cond_a

    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v8, v8, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v9, v11, v1

    aget-object v8, v8, v9

    add-int v9, v15, v10

    aget-boolean v8, v8, v9

    if-eqz v8, :cond_b

    .line 1329
    :cond_a
    const/16 v18, 0x1

    .line 1326
    :cond_b
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v8, v22

    goto :goto_9

    .end local v22    # "bestDistance":D
    .restart local v8    # "bestDistance":D
    :cond_c
    move-wide/from16 v22, v8

    .line 1332
    .end local v8    # "bestDistance":D
    .end local v10    # "j":I
    .restart local v22    # "bestDistance":D
    if-nez v18, :cond_11

    .line 1333
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1325
    .end local v21    # "bestRect":Landroid/graphics/Rect;
    .end local v22    # "bestDistance":D
    .restart local v8    # "bestDistance":D
    .local v10, "bestRect":Landroid/graphics/Rect;
    :cond_d
    move-wide/from16 v22, v8

    move-object/from16 v21, v10

    .line 1335
    .end local v8    # "bestDistance":D
    .end local v10    # "bestRect":Landroid/graphics/Rect;
    .restart local v21    # "bestRect":Landroid/graphics/Rect;
    .restart local v22    # "bestDistance":D
    if-nez v19, :cond_11

    .line 1336
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_a
    if-ge v8, v1, :cond_10

    .line 1337
    add-int v9, v15, v2

    add-int/lit8 v10, v14, -0x1

    if-gt v9, v10, :cond_e

    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v9, v9, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    add-int v10, v11, v8

    aget-object v9, v9, v10

    add-int v10, v15, v2

    aget-boolean v9, v9, v10

    if-eqz v9, :cond_f

    .line 1339
    :cond_e
    const/16 v19, 0x1

    .line 1336
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 1342
    .end local v8    # "i":I
    :cond_10
    if-nez v19, :cond_11

    .line 1343
    add-int/lit8 v2, v2, 0x1

    .line 1346
    :cond_11
    :goto_b
    if-lt v1, v3, :cond_12

    move/from16 v8, v17

    goto :goto_c

    :cond_12
    move/from16 v8, v16

    :goto_c
    or-int v18, v18, v8

    .line 1347
    if-lt v2, v4, :cond_13

    move/from16 v8, v17

    goto :goto_d

    :cond_13
    move/from16 v8, v16

    :goto_d
    or-int v19, v19, v8

    .line 1348
    if-nez v7, :cond_14

    move/from16 v8, v17

    goto :goto_e

    :cond_14
    move/from16 v8, v16

    :goto_e
    move v7, v8

    move-object/from16 v10, v21

    move-wide/from16 v8, v22

    goto/16 :goto_6

    .line 1306
    .end local v1    # "xSize":I
    .end local v2    # "ySize":I
    .end local v19    # "hitMaxY":Z
    .end local v21    # "bestRect":Landroid/graphics/Rect;
    .end local v22    # "bestDistance":D
    .local v7, "ySize":I
    .local v8, "bestDistance":D
    .restart local v10    # "bestRect":Landroid/graphics/Rect;
    .local v18, "xSize":I
    :cond_15
    move/from16 v20, v7

    move-wide/from16 v22, v8

    move-object/from16 v21, v10

    .line 1354
    .end local v8    # "bestDistance":D
    .end local v10    # "bestRect":Landroid/graphics/Rect;
    .restart local v21    # "bestRect":Landroid/graphics/Rect;
    .restart local v22    # "bestDistance":D
    :goto_f
    iget-object v1, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1355
    .local v1, "cellXY":[I
    invoke-virtual {v0, v11, v15, v1}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 1360
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 1361
    .local v2, "currentRect":Landroid/graphics/Rect;
    add-int v8, v11, v18

    add-int v9, v15, v7

    invoke-virtual {v2, v11, v15, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1362
    const/4 v8, 0x0

    .line 1363
    .local v8, "contained":Z
    invoke-virtual {v12}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_10
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    .line 1364
    .local v10, "r":Landroid/graphics/Rect;
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v19

    if-eqz v19, :cond_16

    .line 1365
    const/4 v8, 0x1

    .line 1366
    goto :goto_11

    .line 1368
    .end local v10    # "r":Landroid/graphics/Rect;
    :cond_16
    goto :goto_10

    .line 1369
    :cond_17
    :goto_11
    invoke-virtual {v12, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    aget v9, v1, v16

    sub-int/2addr v9, v5

    int-to-double v9, v9

    aget v19, v1, v17

    move-object/from16 v20, v1

    .end local v1    # "cellXY":[I
    .local v20, "cellXY":[I
    sub-int v1, v19, v6

    int-to-double v3, v1

    invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    .line 1372
    .local v3, "distance":D
    cmpg-double v1, v3, v22

    if-gtz v1, :cond_19

    if-eqz v8, :cond_18

    goto :goto_12

    :cond_18
    move-object/from16 v1, v21

    goto :goto_13

    .line 1373
    :cond_19
    :goto_12
    move-object/from16 v1, v21

    .end local v21    # "bestRect":Landroid/graphics/Rect;
    .local v1, "bestRect":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1374
    :goto_13
    move-wide v9, v3

    .line 1375
    .end local v22    # "bestDistance":D
    .local v9, "bestDistance":D
    aput v11, p2, v16

    .line 1376
    aput v15, p2, v17

    .line 1377
    if-eqz p9, :cond_1a

    .line 1378
    aput v18, p9, v16

    .line 1379
    aput v7, p9, v17

    .line 1381
    :cond_1a
    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-wide v8, v9

    goto :goto_15

    .line 1303
    .end local v2    # "currentRect":Landroid/graphics/Rect;
    .end local v3    # "distance":D
    .end local v7    # "ySize":I
    .end local v8    # "contained":Z
    .end local v9    # "bestDistance":D
    .end local v18    # "xSize":I
    .end local v20    # "cellXY":[I
    .restart local v22    # "bestDistance":D
    :cond_1b
    :goto_14
    move-wide/from16 v8, v22

    .end local v22    # "bestDistance":D
    .local v8, "bestDistance":D
    :goto_15
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v7, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v10, v1

    move/from16 v1, p3

    goto/16 :goto_2

    .end local v1    # "bestRect":Landroid/graphics/Rect;
    .local v10, "bestRect":Landroid/graphics/Rect;
    :cond_1c
    move-wide/from16 v22, v8

    move-object v1, v10

    .line 1301
    .end local v8    # "bestDistance":D
    .end local v10    # "bestRect":Landroid/graphics/Rect;
    .end local v11    # "x":I
    .restart local v1    # "bestRect":Landroid/graphics/Rect;
    .restart local v22    # "bestDistance":D
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    const/4 v11, -0x1

    move/from16 v1, p3

    goto/16 :goto_1

    .end local v1    # "bestRect":Landroid/graphics/Rect;
    .end local v22    # "bestDistance":D
    .end local p2    # "bestXY":[I
    .local v7, "bestXY":[I
    .restart local v8    # "bestDistance":D
    .restart local v10    # "bestRect":Landroid/graphics/Rect;
    :cond_1d
    move-object/from16 p2, v7

    move-object v1, v10

    .line 1387
    .end local v7    # "bestXY":[I
    .end local v10    # "bestRect":Landroid/graphics/Rect;
    .end local v15    # "y":I
    .restart local v1    # "bestRect":Landroid/graphics/Rect;
    .restart local p2    # "bestXY":[I
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpl-double v2, v8, v2

    if-nez v2, :cond_1e

    .line 1388
    const/4 v2, -0x1

    aput v2, p2, v16

    .line 1389
    aput v2, p2, v17

    .line 1391
    :cond_1e
    invoke-direct {v0, v12}, Lcom/android/launcher3/CellLayout;->recycleTempRects(Ljava/util/Stack;)V

    .line 1392
    return-object p2

    .line 1296
    .end local v1    # "bestRect":Landroid/graphics/Rect;
    .end local p2    # "bestXY":[I
    .restart local v7    # "bestXY":[I
    .restart local v10    # "bestRect":Landroid/graphics/Rect;
    :cond_1f
    move-object/from16 p2, v7

    move-object v1, v10

    .line 1298
    .end local v7    # "bestXY":[I
    .end local v10    # "bestRect":Landroid/graphics/Rect;
    .restart local v1    # "bestRect":Landroid/graphics/Rect;
    .restart local p2    # "bestXY":[I
    :goto_16
    return-object p2
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 17
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "occupied"    # [[Z
    .param p7, "blockOccupied"    # [[Z
    .param p8, "result"    # [I

    .line 1417
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    if-eqz p8, :cond_0

    move-object/from16 v3, p8

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1418
    .local v3, "bestXY":[I
    :goto_0
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 1419
    .local v4, "bestDistance":F
    const/high16 v5, -0x80000000

    .line 1421
    .local v5, "bestDirectionScore":I
    iget v6, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 1422
    .local v6, "countX":I
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 1424
    .local v7, "countY":I
    const/4 v8, 0x0

    .local v8, "y":I
    :goto_1
    add-int/lit8 v9, v2, -0x1

    sub-int v9, v7, v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ge v8, v9, :cond_7

    .line 1426
    const/4 v9, 0x0

    .local v9, "x":I
    :goto_2
    add-int/lit8 v12, v1, -0x1

    sub-int v12, v6, v12

    if-ge v9, v12, :cond_6

    .line 1428
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3
    if-ge v12, v1, :cond_3

    .line 1429
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    if-ge v13, v2, :cond_2

    .line 1430
    add-int v14, v9, v12

    aget-object v14, p6, v14

    add-int v15, v8, v13

    aget-boolean v14, v14, v15

    if-eqz v14, :cond_1

    if-eqz p7, :cond_5

    aget-object v14, p7, v12

    aget-boolean v14, v14, v13

    if-eqz v14, :cond_1

    .line 1431
    goto :goto_5

    .line 1429
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1428
    .end local v13    # "j":I
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1436
    .end local v12    # "i":I
    :cond_3
    sub-int v12, v9, p1

    int-to-double v12, v12

    sub-int v14, v8, p2

    int-to-double v14, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    double-to-float v12, v12

    .line 1437
    .local v12, "distance":F
    iget-object v13, v0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 1438
    .local v13, "curDirection":[I
    sub-int v14, v9, p1

    int-to-float v14, v14

    sub-int v15, v8, p2

    int-to-float v15, v15

    invoke-direct {v0, v14, v15, v13}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    .line 1441
    aget v14, p5, v10

    aget v15, v13, v10

    mul-int/2addr v14, v15

    aget v15, p5, v11

    aget v16, v13, v11

    mul-int v15, v15, v16

    add-int/2addr v14, v15

    .line 1443
    .local v14, "curDirectionScore":I
    invoke-static {v12, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v15

    if-ltz v15, :cond_4

    .line 1444
    invoke-static {v12, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v15

    if-nez v15, :cond_5

    if-le v14, v5, :cond_5

    .line 1446
    :cond_4
    move v4, v12

    .line 1447
    move v5, v14

    .line 1448
    aput v9, v3, v10

    .line 1449
    aput v8, v3, v11

    .line 1426
    .end local v12    # "distance":F
    .end local v13    # "curDirection":[I
    .end local v14    # "curDirectionScore":I
    :cond_5
    :goto_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1424
    .end local v9    # "x":I
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1455
    .end local v8    # "y":I
    :cond_7
    const v8, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v8, v4, v8

    if-nez v8, :cond_8

    .line 1456
    const/4 v8, -0x1

    aput v8, v3, v10

    .line 1457
    aput v8, v3, v11

    .line 1459
    :cond_8
    return-object v3
.end method

.method private findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .locals 18
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "direction"    # [I
    .param p8, "dragView"    # Landroid/view/View;
    .param p9, "decX"    # Z
    .param p10, "solution"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;

    .line 1986
    move-object/from16 v11, p0

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move-object/from16 v15, p10

    const/4 v8, 0x0

    invoke-direct {v11, v15, v8}, Lcom/android/launcher3/CellLayout;->copyCurrentStateToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Z)V

    .line 1989
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v1, v11, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 1993
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 1994
    .local v6, "result":[I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v16

    .line 1999
    .end local v6    # "result":[I
    .local v16, "result":[I
    aget v1, v16, v8

    const/4 v9, 0x1

    aget v2, v16, v9

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p10

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v17

    .line 2002
    .local v17, "success":Z
    if-nez v17, :cond_3

    .line 2005
    move/from16 v10, p3

    if-le v13, v10, :cond_1

    if-eq v12, v14, :cond_0

    if-eqz p9, :cond_1

    .line 2006
    :cond_0
    add-int/lit8 v5, v13, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    .line 2008
    :cond_1
    if-le v14, v12, :cond_2

    .line 2009
    add-int/lit8 v6, v14, -0x1

    const/4 v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    return-object v0

    .line 2012
    :cond_2
    iput-boolean v8, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    goto :goto_0

    .line 2014
    :cond_3
    iput-boolean v9, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    .line 2015
    aget v0, v16, v8

    iput v0, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    .line 2016
    aget v0, v16, v9

    iput v0, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    .line 2017
    iput v13, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    .line 2018
    iput v14, v15, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    .line 2020
    :goto_0
    return-object v15
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 18
    .param p1, "dragViewCenterX"    # I
    .param p2, "dragViewCenterY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "resultDirection"    # [I

    .line 2345
    move-object/from16 v8, p0

    move/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p6

    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 2347
    .local v12, "targetDestination":[I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    .line 2348
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v0

    .line 2349
    .local v13, "dragRect":Landroid/graphics/Rect;
    const/4 v14, 0x0

    aget v1, v12, v14

    const/4 v15, 0x1

    aget v2, v12, v15

    move-object/from16 v0, p0

    move-object v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 2350
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 2352
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v7, v0

    .line 2353
    .local v7, "dropRegionRect":Landroid/graphics/Rect;
    aget v1, v12, v14

    aget v2, v12, v15

    iget-object v6, v8, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v5, p5

    move-object/from16 v16, v6

    move-object v6, v7

    move-object/from16 v17, v7

    .end local v7    # "dropRegionRect":Landroid/graphics/Rect;
    .local v17, "dropRegionRect":Landroid/graphics/Rect;
    move-object/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2356
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v6

    .line 2357
    .local v6, "dropRegionSpanX":I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v7

    .line 2359
    .local v7, "dropRegionSpanY":I
    move-object/from16 v5, v17

    .end local v17    # "dropRegionRect":Landroid/graphics/Rect;
    .local v5, "dropRegionRect":Landroid/graphics/Rect;
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v2, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    .line 2360
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 2359
    move-object/from16 v16, v5

    .end local v5    # "dropRegionRect":Landroid/graphics/Rect;
    .local v16, "dropRegionRect":Landroid/graphics/Rect;
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 2362
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    sub-int v0, v0, p1

    div-int/2addr v0, v9

    .line 2363
    .local v0, "deltaX":I
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    sub-int v1, v1, p2

    div-int/2addr v1, v10

    .line 2365
    .local v1, "deltaY":I
    iget v2, v8, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-eq v6, v2, :cond_0

    if-ne v9, v2, :cond_1

    .line 2366
    :cond_0
    const/4 v0, 0x0

    .line 2368
    :cond_1
    iget v2, v8, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-eq v7, v2, :cond_2

    if-ne v10, v2, :cond_3

    .line 2369
    :cond_2
    const/4 v1, 0x0

    .line 2372
    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_4

    .line 2374
    aput v15, v11, v14

    .line 2375
    aput v14, v11, v15

    goto :goto_0

    .line 2377
    :cond_4
    int-to-float v2, v0

    int-to-float v3, v1

    invoke-direct {v8, v2, v3, v11}, Lcom/android/launcher3/CellLayout;->computeDirectionVector(FF[I)V

    .line 2379
    :goto_0
    return-void
.end method

.method private getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)",
            "Lcom/android/launcher3/util/ParcelableSparseArray;"
        }
    .end annotation

    .line 452
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    sget v0, Lcom/android/launcher3/R$id;->cell_layout_jail_id:I

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    .line 453
    .local v0, "parcelable":Landroid/os/Parcelable;
    instance-of v1, v0, Lcom/android/launcher3/util/ParcelableSparseArray;

    if-eqz v1, :cond_0

    .line 454
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/util/ParcelableSparseArray;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/launcher3/util/ParcelableSparseArray;

    invoke-direct {v1}, Lcom/android/launcher3/util/ParcelableSparseArray;-><init>()V

    .line 453
    :goto_0
    return-object v1
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 16
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "boundingRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2384
    .local p7, "intersectingViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p6

    if-eqz v3, :cond_0

    .line 2385
    add-int v4, v1, p3

    add-int v5, v2, p4

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 2387
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    .line 2388
    new-instance v4, Landroid/graphics/Rect;

    add-int v5, v1, p3

    add-int v6, v2, p4

    invoke-direct {v4, v1, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2389
    .local v4, "r0":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2390
    .local v5, "r1":Landroid/graphics/Rect;
    iget-object v6, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v6

    .line 2391
    .local v6, "count":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_3

    .line 2392
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v8, v7}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 2393
    .local v8, "child":Landroid/view/View;
    move-object/from16 v9, p5

    if-ne v8, v9, :cond_1

    goto :goto_1

    .line 2394
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2395
    .local v10, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget v11, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v12, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v13, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v14, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v13, v14

    iget v14, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v15, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v14, v15

    invoke-virtual {v5, v11, v12, v13, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2396
    invoke-static {v4, v5}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2397
    iget-object v11, v0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2398
    if-eqz v3, :cond_2

    .line 2399
    invoke-virtual {v3, v5}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2391
    .end local v8    # "child":Landroid/view/View;
    .end local v10    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_2
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v9, p5

    .line 2403
    .end local v7    # "i":I
    return-void
.end method

.method private getWorkspace()Lcom/android/launcher3/Workspace;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/Workspace<",
            "*>;"
        }
    .end annotation

    .line 1216
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    return-object v0
.end method

.method private getWorkspaceCellVisualCenter(II[I)V
    .locals 7
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "outPoint"    # [I

    .line 903
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 904
    .local v0, "child":Landroid/view/View;
    instance-of v1, v0, Lcom/android/launcher3/dragndrop/DraggableView;

    if-eqz v1, :cond_0

    .line 905
    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/dragndrop/DraggableView;

    .line 906
    .local v1, "draggableChild":Lcom/android/launcher3/dragndrop/DraggableView;
    invoke-interface {v1}, Lcom/android/launcher3/dragndrop/DraggableView;->getViewType()I

    move-result v2

    if-nez v2, :cond_0

    .line 907
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 908
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Lcom/android/launcher3/dragndrop/DraggableView;->getWorkspaceVisualDragBounds(Landroid/graphics/Rect;)V

    .line 909
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    aget v4, p3, v3

    const/4 v5, 0x1

    aget v6, p3, v5

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 910
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    aput v2, p3, v3

    .line 911
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    aput v2, p3, v5

    .line 912
    return-void

    .line 915
    .end local v1    # "draggableChild":Lcom/android/launcher3/dragndrop/DraggableView;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/CellLayout;->cellToCenterPoint(II[I)V

    .line 916
    return-void
.end method

.method private lazyInitTempRectStack()V
    .locals 3

    .line 1248
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 1250
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1253
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 16
    .param p2, "rectOccupiedByPotentialDrop"    # Landroid/graphics/Rect;
    .param p3, "direction"    # [I
    .param p4, "dragView"    # Landroid/view/View;
    .param p5, "currentState"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/CellLayout$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    .line 1669
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    new-instance v3, Lcom/android/launcher3/CellLayout$ViewCluster;

    move-object/from16 v4, p1

    invoke-direct {v3, v0, v4, v2}, Lcom/android/launcher3/CellLayout$ViewCluster;-><init>(Lcom/android/launcher3/CellLayout;Ljava/util/ArrayList;Lcom/android/launcher3/CellLayout$ItemConfiguration;)V

    .line 1670
    .local v3, "cluster":Lcom/android/launcher3/CellLayout$ViewCluster;
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1673
    .local v5, "clusterRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 1677
    .local v6, "fail":Z
    const/4 v7, 0x0

    aget v8, p3, v7

    const/4 v9, 0x1

    if-gez v8, :cond_0

    .line 1678
    const/4 v8, 0x1

    .line 1679
    .local v8, "whichEdge":I
    iget v10, v5, Landroid/graphics/Rect;->right:I

    iget v11, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .local v10, "pushDistance":I
    goto :goto_0

    .line 1680
    .end local v8    # "whichEdge":I
    .end local v10    # "pushDistance":I
    :cond_0
    aget v8, p3, v7

    if-lez v8, :cond_1

    .line 1681
    const/4 v8, 0x4

    .line 1682
    .restart local v8    # "whichEdge":I
    iget v10, v1, Landroid/graphics/Rect;->right:I

    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    .restart local v10    # "pushDistance":I
    goto :goto_0

    .line 1683
    .end local v8    # "whichEdge":I
    .end local v10    # "pushDistance":I
    :cond_1
    aget v8, p3, v9

    if-gez v8, :cond_2

    .line 1684
    const/4 v8, 0x2

    .line 1685
    .restart local v8    # "whichEdge":I
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    .restart local v10    # "pushDistance":I
    goto :goto_0

    .line 1687
    .end local v8    # "whichEdge":I
    .end local v10    # "pushDistance":I
    :cond_2
    const/16 v8, 0x8

    .line 1688
    .restart local v8    # "whichEdge":I
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    .line 1692
    .restart local v10    # "pushDistance":I
    :goto_0
    if-gtz v10, :cond_3

    .line 1693
    return v7

    .line 1697
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1698
    .local v12, "v":Landroid/view/View;
    iget-object v13, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v13, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/util/CellAndSpan;

    .line 1699
    .local v13, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v14, v13, v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1700
    .end local v12    # "v":Landroid/view/View;
    .end local v13    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_1

    .line 1705
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->save()V

    .line 1710
    invoke-virtual {v3, v8}, Lcom/android/launcher3/CellLayout$ViewCluster;->sortConfigurationForEdgePush(I)V

    .line 1712
    :goto_2
    if-lez v10, :cond_9

    if-nez v6, :cond_9

    .line 1713
    iget-object v11, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1717
    .restart local v12    # "v":Landroid/view/View;
    iget-object v13, v3, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_6

    move-object/from16 v13, p4

    if-eq v12, v13, :cond_7

    .line 1718
    invoke-virtual {v3, v12, v8}, Lcom/android/launcher3/CellLayout$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1719
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1720
    .local v14, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-boolean v15, v14, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v15, :cond_5

    .line 1722
    const/4 v6, 0x1

    .line 1723
    goto :goto_5

    .line 1725
    :cond_5
    invoke-virtual {v3, v12}, Lcom/android/launcher3/CellLayout$ViewCluster;->addView(Landroid/view/View;)V

    .line 1726
    iget-object v15, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v15, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/util/CellAndSpan;

    .line 1729
    .local v15, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v9, v15, v7}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    goto :goto_4

    .line 1717
    .end local v14    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v15    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_6
    move-object/from16 v13, p4

    .line 1732
    .end local v12    # "v":Landroid/view/View;
    :cond_7
    :goto_4
    const/4 v9, 0x1

    goto :goto_3

    .line 1713
    :cond_8
    move-object/from16 v13, p4

    .line 1733
    :goto_5
    add-int/lit8 v10, v10, -0x1

    .line 1737
    const/4 v9, 0x1

    invoke-virtual {v3, v8, v9}, Lcom/android/launcher3/CellLayout$ViewCluster;->shift(II)V

    goto :goto_2

    .line 1712
    :cond_9
    move-object/from16 v13, p4

    .line 1740
    const/4 v7, 0x0

    .line 1741
    .local v7, "foundSolution":Z
    invoke-virtual {v3}, Lcom/android/launcher3/CellLayout$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 1745
    if-nez v6, :cond_a

    iget v9, v5, Landroid/graphics/Rect;->left:I

    if-ltz v9, :cond_a

    iget v9, v5, Landroid/graphics/Rect;->right:I

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-gt v9, v11, :cond_a

    iget v9, v5, Landroid/graphics/Rect;->top:I

    if-ltz v9, :cond_a

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-gt v9, v11, :cond_a

    .line 1747
    const/4 v7, 0x1

    goto :goto_6

    .line 1749
    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->restore()V

    .line 1753
    :goto_6
    iget-object v9, v3, Lcom/android/launcher3/CellLayout$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 1754
    .local v11, "v":Landroid/view/View;
    iget-object v12, v2, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/util/CellAndSpan;

    .line 1755
    .local v12, "c":Lcom/android/launcher3/util/CellAndSpan;
    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v15, 0x1

    invoke-virtual {v14, v12, v15}, Lcom/android/launcher3/util/GridOccupancy;->markCells(Lcom/android/launcher3/util/CellAndSpan;Z)V

    .line 1756
    .end local v11    # "v":Landroid/view/View;
    .end local v12    # "c":Lcom/android/launcher3/util/CellAndSpan;
    goto :goto_7

    .line 1758
    :cond_b
    return v7
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z
    .locals 16
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "direction"    # [I
    .param p6, "ignoreView"    # Landroid/view/View;
    .param p7, "solution"    # Lcom/android/launcher3/CellLayout$ItemConfiguration;

    .line 1912
    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    if-ltz v7, :cond_a

    if-gez v8, :cond_0

    move-object/from16 v3, p5

    const/4 v2, 0x0

    goto/16 :goto_2

    .line 1914
    :cond_0
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1915
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v1, v7, p3

    add-int v2, v8, p4

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1918
    if-eqz v9, :cond_1

    .line 1919
    iget-object v0, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1920
    .local v0, "c":Lcom/android/launcher3/util/CellAndSpan;
    if-eqz v0, :cond_1

    .line 1921
    iput v7, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    .line 1922
    iput v8, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    .line 1925
    .end local v0    # "c":Lcom/android/launcher3/util/CellAndSpan;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, v7, p3

    add-int v2, v8, p4

    invoke-direct {v0, v7, v8, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v12, v0

    .line 1926
    .local v12, "r0":Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object v13, v0

    .line 1927
    .local v13, "r1":Landroid/graphics/Rect;
    iget-object v0, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1928
    .local v1, "child":Landroid/view/View;
    if-ne v1, v9, :cond_2

    goto :goto_0

    .line 1929
    :cond_2
    iget-object v2, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/CellAndSpan;

    .line 1930
    .local v2, "c":Lcom/android/launcher3/util/CellAndSpan;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1931
    .local v3, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget v4, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v5, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v14, v2, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v15, v2, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v14, v15

    iget v15, v2, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v11, v2, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v15, v11

    invoke-virtual {v13, v4, v5, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 1932
    invoke-static {v12, v13}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1933
    iget-boolean v4, v3, Lcom/android/launcher3/CellLayout$LayoutParams;->canReorder:Z

    if-nez v4, :cond_3

    .line 1934
    const/4 v0, 0x0

    return v0

    .line 1936
    :cond_3
    iget-object v4, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "c":Lcom/android/launcher3/util/CellAndSpan;
    .end local v3    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_4
    goto :goto_0

    .line 1940
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v10, Lcom/android/launcher3/CellLayout$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    .line 1945
    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    const/4 v11, 0x1

    if-eqz v0, :cond_6

    .line 1947
    return v11

    .line 1951
    :cond_6
    iget-object v1, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v2, v6, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1953
    return v11

    .line 1957
    :cond_7
    iget-object v0, v6, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1958
    .local v1, "v":Landroid/view/View;
    iget-object v2, v6, Lcom/android/launcher3/CellLayout;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v3, p5

    invoke-direct {v6, v1, v2, v3, v10}, Lcom/android/launcher3/CellLayout;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/CellLayout$ItemConfiguration;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1959
    const/4 v2, 0x0

    return v2

    .line 1958
    :cond_8
    const/4 v2, 0x0

    .line 1961
    .end local v1    # "v":Landroid/view/View;
    goto :goto_1

    .line 1962
    :cond_9
    move-object/from16 v3, p5

    return v11

    .line 1912
    .end local v12    # "r0":Landroid/graphics/Rect;
    .end local v13    # "r1":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v3, p5

    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method private recycleTempRects(Ljava/util/Stack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1256
    .local p1, "used":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/graphics/Rect;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1259
    :cond_0
    return-void
.end method

.method private resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V
    .locals 3
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 376
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    packed-switch v0, :pswitch_data_0

    .line 386
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Lcom/android/launcher3/DeviceProfile;->cellLayoutBorderSpacePx:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    goto :goto_0

    .line 378
    :pswitch_0
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p1, Lcom/android/launcher3/DeviceProfile;->folderCellLayoutBorderSpacePx:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 379
    goto :goto_0

    .line 381
    :pswitch_1
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    iget v2, p1, Lcom/android/launcher3/DeviceProfile;->hotseatBorderSpace:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    .line 383
    nop

    .line 390
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 391
    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 392
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setGridAlpha(F)V
    .locals 1
    .param p1, "gridAlpha"    # F

    .line 584
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    .line 586
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 588
    :cond_0
    return-void
.end method

.method private setUseTempCoords(Z)V
    .locals 3
    .param p1, "useTempCoords"    # Z

    .line 2307
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2308
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2309
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2310
    .local v2, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iput-boolean p1, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->useTmpCoords:Z

    .line 2308
    .end local v2    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2312
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method private updateBgAlpha()V
    .locals 3

    .line 568
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 569
    return-void
.end method


# virtual methods
.method public acceptsWidget()Z
    .locals 1

    .line 737
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V
    .locals 1
    .param p1, "bg"    # Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    .line 669
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 670
    return-void
.end method

.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/CellLayout$LayoutParams;Z)Z
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "childId"    # I
    .param p4, "params"    # Lcom/android/launcher3/CellLayout$LayoutParams;
    .param p5, "markCells"    # Z

    .line 742
    move-object v0, p4

    .line 745
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    instance-of v1, p1, Lcom/android/launcher3/BubbleTextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 746
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 747
    .local v1, "bubbleChild":Lcom/android/launcher3/BubbleTextView;
    iget v4, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    if-eq v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 750
    .end local v1    # "bubbleChild":Lcom/android/launcher3/BubbleTextView;
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 751
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 755
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_5

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v4, v3

    if-gt v1, v4, :cond_5

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_5

    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    sub-int/2addr v4, v3

    if-gt v1, v4, :cond_5

    .line 758
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_2

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 759
    :cond_2
    iget v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_3

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 761
    :cond_3
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 765
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 767
    if-eqz p5, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 769
    :cond_4
    return v3

    .line 771
    :cond_5
    return v2
.end method

.method public animateChildToPosition(Landroid/view/View;IIIIZZ)Z
    .locals 24
    .param p1, "child"    # Landroid/view/View;
    .param p2, "cellX"    # I
    .param p3, "cellY"    # I
    .param p4, "duration"    # I
    .param p5, "delay"    # I
    .param p6, "permanent"    # Z
    .param p7, "adjustOccupied"    # Z

    .line 1056
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v11

    .line 1058
    .local v11, "clc":Lcom/android/launcher3/ShortcutAndWidgetContainer;
    invoke-virtual {v11, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v6, 0x0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    instance-of v0, v8, Lcom/android/launcher3/Reorderable;

    if-eqz v0, :cond_5

    .line 1059
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 1060
    .local v12, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/launcher3/model/data/ItemInfo;

    .line 1061
    .local v13, "info":Lcom/android/launcher3/model/data/ItemInfo;
    move-object v14, v8

    check-cast v14, Lcom/android/launcher3/Reorderable;

    .line 1064
    .local v14, "item":Lcom/android/launcher3/Reorderable;
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1066
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1070
    :cond_0
    if-eqz p7, :cond_2

    .line 1071
    if-eqz p6, :cond_1

    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    :goto_0
    move-object v15, v0

    .line 1072
    .local v15, "occupied":Lcom/android/launcher3/util/GridOccupancy;
    iget v0, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v1, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v2, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v3, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/16 v20, 0x0

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move/from16 v19, v3

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1073
    iget v3, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, v15

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 1079
    .end local v15    # "occupied":Lcom/android/launcher3/util/GridOccupancy;
    :cond_2
    iget v15, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 1080
    .local v15, "oldX":I
    iget v5, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 1081
    .local v5, "oldY":I
    const/4 v4, 0x1

    iput-boolean v4, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1082
    if-eqz p6, :cond_3

    .line 1083
    iput v9, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iput v9, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1084
    iput v10, v13, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iput v10, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    goto :goto_1

    .line 1086
    :cond_3
    iput v9, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 1087
    iput v10, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 1089
    :goto_1
    invoke-virtual {v11, v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setupLp(Landroid/view/View;)V

    .line 1090
    iget v3, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 1091
    .local v3, "newX":I
    iget v2, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 1092
    .local v2, "newY":I
    iput v15, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->x:I

    .line 1093
    iput v5, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->y:I

    .line 1094
    iput-boolean v6, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1097
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    invoke-interface {v14, v0}, Lcom/android/launcher3/Reorderable;->getReorderPreviewOffset(Landroid/graphics/PointF;)V

    .line 1098
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    iget v6, v0, Landroid/graphics/PointF;->x:F

    .line 1099
    .local v6, "initPreviewOffsetX":F
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->y:F

    .line 1100
    .local v1, "initPreviewOffsetY":F
    sub-int v0, v3, v15

    int-to-float v0, v0

    .line 1101
    .local v0, "finalPreviewOffsetX":F
    sub-int v4, v2, v5

    int-to-float v4, v4

    .line 1105
    .local v4, "finalPreviewOffsetY":F
    const/16 v17, 0x0

    cmpl-float v18, v0, v17

    if-nez v18, :cond_4

    cmpl-float v18, v4, v17

    if-nez v18, :cond_4

    cmpl-float v18, v6, v17

    if-nez v18, :cond_4

    cmpl-float v17, v1, v17

    if-nez v17, :cond_4

    .line 1107
    move/from16 v17, v4

    const/4 v4, 0x1

    .end local v4    # "finalPreviewOffsetY":F
    .local v17, "finalPreviewOffsetY":F
    iput-boolean v4, v12, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1108
    return v4

    .line 1105
    .end local v17    # "finalPreviewOffsetY":F
    .restart local v4    # "finalPreviewOffsetY":F
    :cond_4
    move/from16 v17, v4

    const/4 v4, 0x1

    .line 1111
    .end local v4    # "finalPreviewOffsetY":F
    .restart local v17    # "finalPreviewOffsetY":F
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 1112
    .local v4, "va":Landroid/animation/ValueAnimator;
    move/from16 v9, p4

    move/from16 v19, v0

    move/from16 v18, v1

    .end local v0    # "finalPreviewOffsetX":F
    .end local v1    # "initPreviewOffsetY":F
    .local v18, "initPreviewOffsetY":F
    .local v19, "finalPreviewOffsetX":F
    int-to-long v0, v9

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1113
    iget-object v0, v7, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    invoke-virtual {v0, v12, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    new-instance v1, Lcom/android/launcher3/CellLayout$3;

    move-object v0, v1

    move-object v9, v1

    move-object/from16 v1, p0

    move/from16 v20, v2

    .end local v2    # "newY":I
    .local v20, "newY":I
    move v2, v6

    move/from16 v21, v3

    .end local v3    # "newX":I
    .local v21, "newX":I
    move/from16 v3, v19

    move-object v10, v4

    move/from16 v16, v17

    const/16 v17, 0x1

    .end local v4    # "va":Landroid/animation/ValueAnimator;
    .end local v17    # "finalPreviewOffsetY":F
    .local v10, "va":Landroid/animation/ValueAnimator;
    .local v16, "finalPreviewOffsetY":F
    move/from16 v4, v18

    move/from16 v22, v5

    .end local v5    # "oldY":I
    .local v22, "oldY":I
    move/from16 v5, v16

    move/from16 v23, v6

    .end local v6    # "initPreviewOffsetX":F
    .local v23, "initPreviewOffsetX":F
    move-object v6, v14

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout$3;-><init>(Lcom/android/launcher3/CellLayout;FFFFLcom/android/launcher3/Reorderable;)V

    invoke-virtual {v10, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1124
    new-instance v0, Lcom/android/launcher3/CellLayout$4;

    invoke-direct {v0, v7, v12, v14, v8}, Lcom/android/launcher3/CellLayout$4;-><init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Lcom/android/launcher3/Reorderable;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1143
    move/from16 v0, p5

    int-to-long v1, v0

    invoke-virtual {v10, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1144
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 1145
    return v17

    .line 1058
    .end local v10    # "va":Landroid/animation/ValueAnimator;
    .end local v12    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    .end local v13    # "info":Lcom/android/launcher3/model/data/ItemInfo;
    .end local v14    # "item":Lcom/android/launcher3/Reorderable;
    .end local v15    # "oldX":I
    .end local v16    # "finalPreviewOffsetY":F
    .end local v18    # "initPreviewOffsetY":F
    .end local v19    # "finalPreviewOffsetX":F
    .end local v20    # "newY":I
    .end local v21    # "newX":I
    .end local v22    # "oldY":I
    .end local v23    # "initPreviewOffsetX":F
    :cond_5
    move/from16 v0, p5

    .line 1147
    return v6

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public cancelLongPress()V
    .locals 3

    .line 714
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 717
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getChildCount()I

    move-result v0

    .line 718
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 719
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 720
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->cancelLongPress()V

    .line 718
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 722
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method cellToCenterPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .line 877
    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 878
    return-void
.end method

.method cellToPoint(II[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "result"    # [I

    .line 863
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 864
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    aput v0, p3, v1

    .line 865
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    const/4 v1, 0x1

    aput v0, p3, v1

    .line 866
    return-void
.end method

.method public cellToRect(IIIILandroid/graphics/Rect;)V
    .locals 10
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I
    .param p5, "resultRect"    # Landroid/graphics/Rect;

    .line 2713
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 2714
    .local v0, "cellWidth":I
    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 2717
    .local v1, "cellHeight":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v2

    .line 2718
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v2, v3

    .line 2719
    .local v2, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v3

    .line 2721
    .local v3, "vStartPadding":I
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    mul-int v5, p1, v0

    add-int/2addr v4, v5

    .line 2722
    .local v4, "x":I
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    mul-int/2addr v5, p2

    add-int/2addr v5, v3

    mul-int v6, p2, v1

    add-int/2addr v5, v6

    .line 2724
    .local v5, "y":I
    mul-int v6, p3, v0

    add-int/lit8 v7, p3, -0x1

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 2725
    .local v6, "width":I
    mul-int v7, p4, v1

    add-int/lit8 v8, p4, -0x1

    iget-object v9, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    .line 2727
    .local v7, "height":I
    add-int v8, v4, v6

    add-int v9, v5, v7

    invoke-virtual {p5, v4, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 2728
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2779
    instance-of v0, p1, Lcom/android/launcher3/CellLayout$LayoutParams;

    return v0
.end method

.method public clearDragOutlines()V
    .locals 4

    .line 1220
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1221
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1222
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v3, v1, v2

    .line 1223
    return-void
.end method

.method public clearFolderLeaveBehind()V
    .locals 2

    .line 690
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 691
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput v1, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 692
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 693
    return-void
.end method

.method public cloneGridOccupancy()Lcom/android/launcher3/util/GridOccupancy;
    .locals 3

    .line 3026
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    .line 3027
    .local v0, "occupancy":Lcom/android/launcher3/util/GridOccupancy;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/GridOccupancy;->copyTo(Lcom/android/launcher3/util/GridOccupancy;)V

    .line 3028
    return-object v0
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 18
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "direction"    # [I
    .param p7, "commit"    # Z

    .line 2433
    move-object/from16 v11, p0

    move-object/from16 v12, p5

    move/from16 v13, p7

    const/4 v0, 0x2

    new-array v14, v0, [I

    .line 2434
    .local v14, "pixelXY":[I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v14

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->regionToCenterPoint(IIII[I)V

    .line 2437
    const/4 v15, 0x0

    aget v1, v14, v15

    const/4 v10, 0x1

    aget v2, v14, v10

    new-instance v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v8, 0x0

    invoke-direct {v9, v8}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration-IA;)V

    const/16 v16, 0x1

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p6

    move-object v15, v8

    move-object/from16 v8, p5

    move-object/from16 v17, v9

    move/from16 v9, v16

    move v15, v10

    move-object/from16 v10, v17

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    .line 2440
    .local v0, "swapSolution":Lcom/android/launcher3/CellLayout$ItemConfiguration;
    invoke-direct {v11, v15}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2441
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v1, :cond_1

    .line 2445
    invoke-direct {v11, v0, v12}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2446
    invoke-virtual {v11, v15}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2447
    invoke-direct {v11, v0, v12, v13}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2449
    if-eqz v13, :cond_0

    .line 2450
    const/4 v1, 0x0

    invoke-direct {v11, v1}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    .line 2451
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2452
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_0

    .line 2454
    :cond_0
    invoke-direct {v11, v0, v12, v15}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    .line 2457
    :goto_0
    iget-object v1, v11, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2459
    :cond_1
    iget-boolean v1, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    return v1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 653
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 655
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 656
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    .line 657
    .local v1, "bg":Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
    iget v2, v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iget v3, v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 658
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 659
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    const/4 v3, 0x0

    aget v3, v2, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 660
    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->drawOverItem(Landroid/graphics/Canvas;)V

    .line 661
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 655
    .end local v1    # "bg":Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 663
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    const/4 v0, 0x1

    return v0

    .line 345
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 444
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 445
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 437
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->getJailedArray(Landroid/util/SparseArray;)Lcom/android/launcher3/util/ParcelableSparseArray;

    move-result-object v0

    .line 438
    .local v0, "jail":Lcom/android/launcher3/util/ParcelableSparseArray;
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 439
    sget v1, Lcom/android/launcher3/R$id;->cell_layout_jail_id:I

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    return-void
.end method

.method public enableHardwareLayer(Z)V
    .locals 3
    .param p1, "hasLayer"    # Z

    .line 355
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/launcher3/CellLayout;->sPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setLayerType(ILandroid/graphics/Paint;)V

    .line 356
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .line 2635
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher3/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method public findCellForSpan([III)Z
    .locals 1
    .param p1, "cellXY"    # [I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .line 2652
    if-nez p1, :cond_0

    .line 2653
    const/4 v0, 0x2

    new-array p1, v0, [I

    .line 2655
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/util/GridOccupancy;->findVacantCell([III)Z

    move-result v0

    return v0
.end method

.method public findNearestArea(IIII[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .line 2631
    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p3

    move v6, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method findNearestVacantArea(IIIIII[I[I)[I
    .locals 10
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "result"    # [I
    .param p8, "resultSpan"    # [I

    .line 1242
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIIIIIZ[I[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2774
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2784
    new-instance v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher3/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellHeight()I
    .locals 1

    .line 958
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .line 954
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .line 1051
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getCountX()I
    .locals 1

    .line 729
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    return v0
.end method

.method public getCountY()I
    .locals 1

    .line 733
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    return v0
.end method

.method public getDesiredHeight()I
    .locals 3

    .line 2760
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDesiredWidth()I
    .locals 3

    .line 2755
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getDistanceFromWorkspaceCellVisualCenter(FF[I)F
    .locals 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "cell"    # [I

    .line 898
    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 v2, 0x1

    aget v3, p3, v2

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    invoke-direct {p0, v1, v3, v4}, Lcom/android/launcher3/CellLayout;->getWorkspaceCellVisualCenter(II[I)V

    .line 899
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    aget v0, v1, v0

    int-to-float v0, v0

    sub-float v0, p1, v0

    float-to-double v3, v0

    aget v0, v1, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getDragAndDropAccessibilityDelegate()Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    return-object v0
.end method

.method public getFolderCreationRadius([I)F
    .locals 4
    .param p1, "targetCell"    # [I

    .line 922
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 923
    .local v0, "grid":Lcom/android/launcher3/DeviceProfile;
    iget v1, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    const v2, 0x3f6b851f    # 0.92f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 925
    .local v1, "iconVisibleRadius":F
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->getReorderRadius([I)F

    move-result v3

    add-float/2addr v3, v1

    div-float/2addr v3, v2

    return v3
.end method

.method public getIsDragOverlapping()Z
    .locals 1

    .line 458
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method public getItemMoveDescription(II)Ljava/lang/String;
    .locals 10
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I

    .line 1197
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mContainerType:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1198
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/android/launcher3/R$string;->move_to_hotseat_position:I

    new-array v4, v2, [Ljava/lang/Object;

    .line 1199
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    .line 1198
    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1201
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    .line 1202
    .local v0, "workspace":Lcom/android/launcher3/Workspace;, "Lcom/android/launcher3/Workspace<*>;"
    add-int/lit8 v3, p2, 0x1

    .line 1203
    .local v3, "row":I
    iget-boolean v4, v0, Lcom/android/launcher3/Workspace;->mIsRtl:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    sub-int/2addr v4, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, p1, 0x1

    .line 1204
    .local v4, "col":I
    :goto_0
    invoke-virtual {v0}, Lcom/android/launcher3/Workspace;->getPanelCount()I

    move-result v5

    .line 1205
    .local v5, "panelCount":I
    if-le v5, v2, :cond_2

    .line 1207
    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getIdForScreen(Lcom/android/launcher3/CellLayout;)I

    move-result v6

    .line 1208
    .local v6, "screenId":I
    invoke-virtual {v0, v6}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result v7

    .line 1209
    .local v7, "pageIndex":I
    rem-int v8, v7, v5

    iget v9, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    mul-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1211
    .end local v6    # "screenId":I
    .end local v7    # "pageIndex":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/android/launcher3/R$string;->move_to_empty_cell:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getReorderRadius([I)F
    .locals 11
    .param p1, "targetCell"    # [I

    .line 932
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpPoint:[I

    .line 933
    .local v0, "centerPoint":[I
    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-direct {p0, v2, v4, v0}, Lcom/android/launcher3/CellLayout;->getWorkspaceCellVisualCenter(II[I)V

    .line 935
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    .line 936
    .local v2, "cellBoundsWithSpacing":Landroid/graphics/Rect;
    aget v6, p1, v1

    aget v7, p1, v3

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v5, p0

    move-object v10, v2

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 937
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    neg-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    neg-int v5, v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->inset(II)V

    .line 939
    aget v4, p1, v1

    aget v5, p1, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/CellLayout;->canCreateFolder(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 942
    aget v4, v0, v1

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    .line 943
    .local v4, "minRadius":I
    aget v5, v0, v3

    iget v6, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 944
    iget v5, v2, Landroid/graphics/Rect;->right:I

    aget v1, v0, v1

    sub-int/2addr v5, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 945
    .end local v4    # "minRadius":I
    .local v1, "minRadius":I
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    aget v3, v0, v3

    sub-int/2addr v4, v3

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 946
    int-to-float v3, v1

    return v3

    .line 949
    .end local v1    # "minRadius":I
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    float-to-double v4, v1

    .line 950
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    float-to-double v6, v1

    .line 949
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v1, v3

    return v1
.end method

.method public getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .locals 1

    .line 1047
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    return-object v0
.end method

.method public getSpringLoadedProgress()F
    .locals 1

    .line 564
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    return v0
.end method

.method public getUnusedHorizontalSpace()I
    .locals 3

    .line 1037
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public hasReorderSolution(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .locals 18
    .param p1, "itemInfo"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 2986
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const/4 v0, 0x2

    new-array v13, v0, [I

    .line 2988
    .local v13, "cellPoint":[I
    const/4 v0, 0x0

    move v14, v0

    .local v14, "cellX":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v0

    const/4 v15, 0x0

    if-ge v14, v0, :cond_2

    .line 2989
    const/4 v0, 0x0

    move v10, v0

    .local v10, "cellY":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    if-ge v10, v0, :cond_1

    .line 2990
    invoke-virtual {v11, v14, v10, v13}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 2991
    aget v1, v13, v15

    const/16 v16, 0x1

    aget v2, v13, v16

    iget v3, v12, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iget v4, v12, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    iget v5, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget v6, v12, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iget-object v7, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/4 v8, 0x0

    const/4 v9, 0x1

    new-instance v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v15, 0x0

    invoke-direct {v0, v15}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration-IA;)V

    move-object v15, v0

    move-object/from16 v0, p0

    move/from16 v17, v10

    .end local v10    # "cellY":I
    .local v17, "cellY":I
    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_0

    .line 2994
    return v16

    .line 2989
    :cond_0
    add-int/lit8 v10, v17, 0x1

    const/4 v15, 0x0

    .end local v17    # "cellY":I
    .restart local v10    # "cellY":I
    goto :goto_1

    :cond_1
    move/from16 v17, v10

    .line 2988
    .end local v10    # "cellY":I
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 2998
    .end local v14    # "cellX":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public isDropPending()Z
    .locals 1

    .line 423
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    return v0
.end method

.method public isHardwareLayerEnabled()Z
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getLayerType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isItemPlacementDirty()Z
    .locals 1

    .line 2570
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    return v0
.end method

.method isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 9
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragView"    # Landroid/view/View;
    .param p6, "result"    # [I

    .line 2407
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p6

    .line 2408
    const/4 v0, 0x0

    aget v2, p6, v0

    const/4 v0, 0x1

    aget v3, p6, v0

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    const/4 v7, 0x0

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v8}, Lcom/android/launcher3/CellLayout;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    .line 2410
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isOccupied(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 2765
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge p2, v0, :cond_0

    .line 2766
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget-object v0, v0, Lcom/android/launcher3/util/GridOccupancy;->cells:[[Z

    aget-object v0, v0, p1

    aget-boolean v0, v0, p2

    return v0

    .line 2768
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Position exceeds the bound of this CellLayout"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isRegionVacant(IIII)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I

    .line 3032
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/launcher3/util/GridOccupancy;->isRegionVacant(IIII)Z

    move-result v0

    return v0
.end method

.method public makeSpaceForHotseatMigration(Z)Z
    .locals 17
    .param p1, "commitConfig"    # Z

    .line 3005
    move-object/from16 v11, p0

    const/4 v0, 0x2

    new-array v12, v0, [I

    .line 3006
    .local v12, "cellPoint":[I
    new-array v7, v0, [I

    fill-array-data v7, :array_0

    .line 3007
    .local v7, "directionVector":[I
    iget v0, v11, Lcom/android/launcher3/CellLayout;->mCountY:I

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v0, v12}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 3008
    new-instance v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v14, 0x0

    invoke-direct {v0, v14}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration-IA;)V

    move-object v15, v0

    .line 3009
    .local v15, "configuration":Lcom/android/launcher3/CellLayout$ItemConfiguration;
    aget v1, v12, v13

    const/16 v16, 0x1

    aget v2, v12, v16

    iget v5, v11, Lcom/android/launcher3/CellLayout;->mCountX:I

    const/4 v4, 0x1

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move v3, v5

    move-object v10, v15

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v0, :cond_1

    .line 3011
    if-eqz p1, :cond_0

    .line 3012
    invoke-direct {v11, v15, v14}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 3013
    invoke-direct {v11, v14}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    .line 3015
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    const/4 v1, 0x0

    iget v2, v11, Lcom/android/launcher3/CellLayout;->mCountY:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v11, Lcom/android/launcher3/CellLayout;->mCountX:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 3017
    :cond_0
    return v16

    .line 3019
    :cond_1
    return v13

    nop

    :array_0
    .array-data 4
        0x0
        -0x1
    .end array-data
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 2731
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2732
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 2733
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2734
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v3, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v4, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v5, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2735
    return-void

    .line 2737
    .end local v0    # "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2738
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2739
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2740
    return-void

    .line 2737
    .end local v0    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .line 2743
    instance-of v0, p1, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 2744
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_0

    .line 2745
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    .line 2746
    .local v0, "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellX:I

    iget v3, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->cellY:I

    iget v4, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanX:I

    iget v5, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->spanY:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2747
    return-void

    .line 2749
    .end local v0    # "info":Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 2750
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2751
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    iget v2, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v3, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iget v4, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/GridOccupancy;->markCells(IIIIZ)V

    .line 2752
    return-void

    .line 2749
    .end local v0    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_2
    :goto_0
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .line 2664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2665
    return-void
.end method

.method onDragExit()V
    .locals 4

    .line 2674
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2675
    iput-boolean v1, p0, Lcom/android/launcher3/CellLayout;->mDragging:Z

    .line 2679
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v0, v2

    aput v3, v0, v1

    .line 2680
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aput v3, v0, v2

    aput v3, v0, v1

    .line 2681
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 2682
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 2683
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->revertTempState()V

    .line 2684
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setIsDragOverlapping(Z)V

    .line 2685
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 468
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 514
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_1

    .line 515
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    .line 516
    .local v1, "cellDrawing":Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
    iget v4, v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellX:I

    iget v5, v1, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->mDelegateCellY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 517
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 518
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v2, v4, v2

    int-to-float v2, v2

    aget v3, v4, v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 519
    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;->drawUnderItem(Landroid/graphics/Canvas;)V

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 514
    .end local v1    # "cellDrawing":Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 523
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    if-ltz v0, :cond_2

    .line 524
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v0, v0, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iget v1, v1, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    invoke-virtual {p0, v0, v1, v4}, Lcom/android/launcher3/CellLayout;->cellToPoint(II[I)V

    .line 526
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 527
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempLocation:[I

    aget v1, v0, v2

    int-to-float v1, v1

    aget v0, v0, v3

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 528
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/PreviewBackground;->drawLeaveBehind(Landroid/graphics/Canvas;)V

    .line 529
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 532
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    if-eqz v0, :cond_4

    .line 533
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->visualizeGrid(Landroid/graphics/Canvas;)V

    .line 535
    :cond_4
    return-void
.end method

.method onDropChild(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .line 2695
    if-eqz p1, :cond_0

    .line 2696
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2697
    .local v0, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->dropped:Z

    .line 2698
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 2699
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 2701
    .end local v0    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 350
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v0, :cond_0

    .line 351
    invoke-interface {v0, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 350
    :goto_1
    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1012
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 1013
    .local v0, "left":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/2addr v0, v1

    .line 1014
    sub-int v1, p4, p2

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    .line 1015
    .local v1, "right":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getUnusedHorizontalSpace()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    .line 1017
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v2

    .line 1018
    .local v2, "top":I
    sub-int v3, p5, p3

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 1021
    .local v3, "bottom":I
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1022
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int v5, v0, v5

    .line 1023
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v6, v2, v6

    .line 1024
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v1

    .line 1025
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v3

    .line 1026
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    .line 1022
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1028
    iget-object v4, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v4, v0, v2, v1, v3}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->layout(IIII)V

    .line 1029
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 968
    move-object v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 969
    .local v1, "widthSpecMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 970
    .local v2, "heightSpecMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 971
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 972
    .local v4, "heightSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    sub-int v5, v3, v5

    .line 973
    .local v5, "childWidthSize":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    sub-int v6, v4, v6

    .line 975
    .local v6, "childHeightSize":I
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    if-ltz v7, :cond_0

    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    if-gez v7, :cond_2

    .line 976
    :cond_0
    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    invoke-static {v5, v7, v8}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(III)I

    move-result v7

    .line 978
    .local v7, "cw":I
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->y:I

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-static {v6, v8, v9}, Lcom/android/launcher3/DeviceProfile;->calculateCellHeight(III)I

    move-result v8

    .line 980
    .local v8, "ch":I
    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    if-ne v7, v9, :cond_1

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    if-eq v8, v9, :cond_2

    .line 981
    :cond_1
    iput v7, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    .line 982
    iput v8, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    .line 983
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v12, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v13, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move v10, v7

    move v11, v8

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 988
    .end local v7    # "cw":I
    .end local v8    # "ch":I
    :cond_2
    move v7, v5

    .line 989
    .local v7, "newWidth":I
    move v8, v6

    .line 990
    .local v8, "newHeight":I
    iget v9, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v9, :cond_3

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v9, :cond_3

    .line 991
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 992
    iget v8, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    goto :goto_0

    .line 993
    :cond_3
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 997
    :goto_0
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 998
    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v7, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v11

    .line 999
    invoke-static {v8, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 997
    invoke-virtual {v9, v11, v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->measure(II)V

    .line 1001
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v9}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredWidth()I

    move-result v9

    .line 1002
    .local v9, "maxWidth":I
    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getMeasuredHeight()I

    move-result v10

    .line 1003
    .local v10, "maxHeight":I
    iget v11, v0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    if-lez v11, :cond_4

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    if-lez v11, :cond_4

    .line 1004
    invoke-virtual {p0, v9, v10}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    goto :goto_1

    .line 1006
    :cond_4
    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/CellLayout;->setMeasuredDimension(II)V

    .line 1008
    :goto_1
    return-void

    .line 994
    .end local v9    # "maxWidth":I
    .end local v10    # "maxHeight":I
    :cond_5
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method performReorder(IIIIIILandroid/view/View;[I[II)[I
    .locals 19
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "minSpanX"    # I
    .param p4, "minSpanY"    # I
    .param p5, "spanX"    # I
    .param p6, "spanY"    # I
    .param p7, "dragView"    # Landroid/view/View;
    .param p8, "result"    # [I
    .param p9, "resultSpan"    # [I
    .param p10, "mode"    # I

    .line 2465
    move-object/from16 v11, p0

    move-object/from16 v12, p7

    move/from16 v13, p10

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v14

    .line 2467
    .end local p8    # "result":[I
    .local v14, "result":[I
    const/4 v15, 0x2

    if-nez p9, :cond_0

    .line 2468
    new-array v0, v15, [I

    move-object/from16 v16, v0

    .end local p9    # "resultSpan":[I
    .local v0, "resultSpan":[I
    goto :goto_0

    .line 2467
    .end local v0    # "resultSpan":[I
    .restart local p9    # "resultSpan":[I
    :cond_0
    move-object/from16 v16, p9

    .line 2474
    .end local p9    # "resultSpan":[I
    .local v16, "resultSpan":[I
    :goto_0
    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v8, 0x1

    if-eq v13, v15, :cond_1

    if-eq v13, v10, :cond_1

    const/4 v0, 0x4

    if-ne v13, v0, :cond_3

    :cond_1
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    aget v1, v0, v9

    const/16 v2, -0x64

    if-eq v1, v2, :cond_3

    .line 2476
    iget-object v3, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    aput v1, v3, v9

    .line 2477
    aget v1, v0, v8

    aput v1, v3, v8

    .line 2479
    if-eq v13, v15, :cond_2

    if-ne v13, v10, :cond_4

    .line 2480
    :cond_2
    aput v2, v0, v9

    .line 2481
    aput v2, v0, v8

    goto :goto_1

    .line 2484
    :cond_3
    iget-object v6, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/CellLayout;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    .line 2485
    iget-object v0, v11, Lcom/android/launcher3/CellLayout;->mPreviousReorderDirection:[I

    iget-object v1, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    aget v2, v1, v9

    aput v2, v0, v9

    .line 2486
    aget v1, v1, v8

    aput v1, v0, v8

    .line 2490
    :cond_4
    :goto_1
    iget-object v7, v11, Lcom/android/launcher3/CellLayout;->mDirectionVector:[I

    const/16 v17, 0x1

    new-instance v6, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    const/4 v5, 0x0

    invoke-direct {v6, v5}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration-IA;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v15, v5

    move/from16 v5, p5

    move-object/from16 v18, v6

    move/from16 v6, p6

    move-object/from16 v8, p7

    move/from16 v9, v17

    move-object/from16 v10, v18

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/CellLayout;->findReorderSolution(IIIIII[ILandroid/view/View;ZLcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v9

    .line 2494
    .local v9, "swapSolution":Lcom/android/launcher3/CellLayout$ItemConfiguration;
    new-instance v8, Lcom/android/launcher3/CellLayout$ItemConfiguration;

    invoke-direct {v8, v15}, Lcom/android/launcher3/CellLayout$ItemConfiguration;-><init>(Lcom/android/launcher3/CellLayout$ItemConfiguration-IA;)V

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/CellLayout;->findConfigurationNoShuffle(IIIIIILandroid/view/View;Lcom/android/launcher3/CellLayout$ItemConfiguration;)Lcom/android/launcher3/CellLayout$ItemConfiguration;

    move-result-object v0

    .line 2497
    .local v0, "noShuffleSolution":Lcom/android/launcher3/CellLayout$ItemConfiguration;
    const/4 v1, 0x0

    .line 2501
    .local v1, "finalSolution":Lcom/android/launcher3/CellLayout$ItemConfiguration;
    iget-boolean v2, v9, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_5

    invoke-virtual {v9}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ItemConfiguration;->area()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 2502
    move-object v1, v9

    goto :goto_2

    .line 2503
    :cond_5
    iget-boolean v2, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->isSolution:Z

    if-eqz v2, :cond_6

    .line 2504
    move-object v1, v0

    .line 2507
    :cond_6
    :goto_2
    const/4 v2, -0x1

    if-nez v13, :cond_8

    .line 2508
    if-eqz v1, :cond_7

    .line 2509
    const/4 v3, 0x0

    invoke-direct {v11, v1, v12, v3}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    .line 2511
    iget v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    aput v2, v14, v3

    .line 2512
    iget v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    const/4 v4, 0x1

    aput v2, v14, v4

    .line 2513
    iget v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    aput v2, v16, v3

    .line 2514
    iget v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    aput v2, v16, v4

    goto :goto_3

    .line 2516
    :cond_7
    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v2, v16, v4

    aput v2, v16, v3

    aput v2, v14, v4

    aput v2, v14, v3

    .line 2518
    :goto_3
    return-object v14

    .line 2521
    :cond_8
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 2523
    .local v5, "foundSolution":Z
    invoke-direct {v11, v4}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2526
    if-eqz v1, :cond_d

    .line 2527
    iget v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellX:I

    aput v2, v14, v3

    .line 2528
    iget v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->cellY:I

    aput v2, v14, v4

    .line 2529
    iget v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanX:I

    aput v2, v16, v3

    .line 2530
    iget v2, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->spanY:I

    aput v2, v16, v4

    .line 2535
    if-eq v13, v4, :cond_9

    const/4 v2, 0x2

    if-eq v13, v2, :cond_9

    const/4 v2, 0x3

    if-ne v13, v2, :cond_e

    goto :goto_4

    :cond_9
    const/4 v2, 0x3

    .line 2537
    :goto_4
    invoke-direct {v11, v1, v12}, Lcom/android/launcher3/CellLayout;->copySolutionToTempState(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;)V

    .line 2539
    invoke-virtual {v11, v4}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2540
    const/4 v6, 0x2

    if-ne v13, v6, :cond_a

    move v7, v4

    goto :goto_5

    :cond_a
    move v7, v3

    :goto_5
    invoke-direct {v11, v1, v12, v7}, Lcom/android/launcher3/CellLayout;->animateItemsToSolution(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;Z)V

    .line 2542
    if-eq v13, v6, :cond_c

    if-ne v13, v2, :cond_b

    goto :goto_6

    .line 2549
    :cond_b
    invoke-direct {v11, v1, v12, v4}, Lcom/android/launcher3/CellLayout;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/CellLayout$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_7

    .line 2545
    :cond_c
    :goto_6
    invoke-direct {v11, v12}, Lcom/android/launcher3/CellLayout;->commitTempPlacement(Landroid/view/View;)V

    .line 2546
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2547
    invoke-virtual {v11, v3}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    goto :goto_7

    .line 2554
    :cond_d
    const/4 v5, 0x0

    .line 2555
    aput v2, v16, v4

    aput v2, v16, v3

    aput v2, v14, v4

    aput v2, v14, v3

    .line 2558
    :cond_e
    :goto_7
    const/4 v2, 0x2

    if-eq v13, v2, :cond_f

    if-nez v5, :cond_10

    .line 2559
    :cond_f
    invoke-direct {v11, v3}, Lcom/android/launcher3/CellLayout;->setUseTempCoords(Z)V

    .line 2562
    :cond_10
    iget-object v2, v11, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->requestLayout()V

    .line 2563
    return-object v14
.end method

.method public pointToCellExact(II[I)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .line 829
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v0

    .line 830
    .local v0, "hStartPadding":I
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v1

    .line 832
    .local v1, "vStartPadding":I
    sub-int v2, p1, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/2addr v2, v3

    const/4 v3, 0x0

    aput v2, p3, v3

    .line 833
    sub-int v2, p2, v1

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    div-int/2addr v2, v4

    const/4 v4, 0x1

    aput v2, p3, v4

    .line 835
    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 836
    .local v2, "xAxis":I
    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 838
    .local v5, "yAxis":I
    aget v6, p3, v3

    if-gez v6, :cond_0

    aput v3, p3, v3

    .line 839
    :cond_0
    aget v6, p3, v3

    if-lt v6, v2, :cond_1

    add-int/lit8 v6, v2, -0x1

    aput v6, p3, v3

    .line 840
    :cond_1
    aget v6, p3, v4

    if-gez v6, :cond_2

    aput v3, p3, v4

    .line 841
    :cond_2
    aget v3, p3, v4

    if-lt v3, v5, :cond_3

    add-int/lit8 v3, v5, -0x1

    aput v3, p3, v4

    .line 842
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "result"    # [I

    .line 851
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher3/CellLayout;->pointToCellExact(II[I)V

    .line 852
    return-void
.end method

.method regionToCenterPoint(IIII[I)V
    .locals 6
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "result"    # [I

    .line 889
    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    .line 890
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    const/4 v1, 0x0

    aput v0, p5, v1

    .line 891
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p5, v1

    .line 892
    return-void
.end method

.method public removeAllViews()V
    .locals 1

    .line 776
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 777
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViews()V

    .line 778
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    invoke-virtual {v0}, Lcom/android/launcher3/util/GridOccupancy;->clear()V

    .line 784
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeAllViewsInLayout()V

    .line 786
    :cond_0
    return-void
.end method

.method public removeDelegatedCellDrawing(Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;)V
    .locals 1
    .param p1, "bg"    # Lcom/android/launcher3/CellLayout$DelegatedCellDrawing;

    .line 676
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDelegatedCellDrawings:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 677
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 790
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 791
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeView(Landroid/view/View;)V

    .line 792
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .param p1, "index"    # I

    .line 796
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 797
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewAt(I)V

    .line 798
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 802
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 803
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewInLayout(Landroid/view/View;)V

    .line 804
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 808
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 809
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 808
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 811
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViews(II)V

    .line 812
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .line 816
    move v0, p1

    .local v0, "i":I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 817
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 819
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->removeViewsInLayout(II)V

    .line 820
    return-void
.end method

.method public resetCellSize(Lcom/android/launcher3/DeviceProfile;)V
    .locals 0
    .param p1, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 398
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->resetCellSizeInternal(Lcom/android/launcher3/DeviceProfile;)V

    .line 399
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 400
    return-void
.end method

.method public restoreInstanceState(Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 702
    .local p1, "states":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 709
    goto :goto_0

    .line 703
    :catch_0
    move-exception v0

    .line 708
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "CellLayout"

    const-string v2, "Ignoring an error while restoring a view instance state"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 710
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :goto_0
    return-void
.end method

.method revertTempState()V
    .locals 12

    .line 2414
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->completeAndClearReorderPreviewAnimations()V

    .line 2415
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2416
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v0

    .line 2417
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 2418
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2419
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/launcher3/CellLayout$LayoutParams;

    .line 2420
    .local v11, "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    iget v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    iget v4, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    if-ne v3, v4, :cond_0

    iget v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    iget v4, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    if-eq v3, v4, :cond_1

    .line 2421
    :cond_0
    iget v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iput v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellX:I

    .line 2422
    iget v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    iput v3, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->tmpCellY:I

    .line 2423
    iget v5, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    iget v6, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    const/16 v7, 0x96

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    move-object v4, v2

    invoke-virtual/range {v3 .. v10}, Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z

    .line 2417
    .end local v2    # "child":Landroid/view/View;
    .end local v11    # "lp":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2427
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setItemPlacementDirty(Z)V

    .line 2429
    .end local v0    # "count":I
    :cond_3
    return-void
.end method

.method public setCellDimensions(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 369
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedCellWidth:I

    .line 370
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedCellHeight:I

    .line 371
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v5, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 373
    return-void
.end method

.method public setDragAndDropAccessibilityDelegate(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V
    .locals 3
    .param p1, "delegate"    # Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 314
    invoke-virtual {p0, p1}, Lcom/android/launcher3/CellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 317
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mTouchHelper:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 318
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 319
    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 320
    .local v1, "accessibilityFlag":I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/CellLayout;->setImportantForAccessibility(I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setImportantForAccessibility(I)V

    .line 324
    if-eqz p1, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/CellLayout;->setFocusable(Z)V

    .line 326
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 327
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, p0, p0, v0}, Landroid/view/ViewParent;->notifySubtreeAccessibilityStateChanged(Landroid/view/View;Landroid/view/View;I)V

    .line 330
    :cond_2
    return-void
.end method

.method public setDropPending(Z)V
    .locals 0
    .param p1, "pending"    # Z

    .line 419
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mDropPending:Z

    .line 420
    return-void
.end method

.method public setFixedSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 962
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mFixedWidth:I

    .line 963
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mFixedHeight:I

    .line 964
    return-void
.end method

.method public setFolderLeaveBehindCell(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 680
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    .line 681
    .local v0, "child":Landroid/view/View;
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    .line 682
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 681
    const/4 v4, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/folder/PreviewBackground;->setup(Landroid/content/Context;Lcom/android/launcher3/views/ActivityContext;Landroid/view/View;II)V

    .line 684
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput p1, v1, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellX:I

    .line 685
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mFolderLeaveBehind:Lcom/android/launcher3/folder/PreviewBackground;

    iput p2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mDelegateCellY:I

    .line 686
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 687
    return-void
.end method

.method public setGridSize(II)V
    .locals 7
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 403
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    .line 404
    iput p2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    .line 405
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 406
    new-instance v0, Lcom/android/launcher3/util/GridOccupancy;

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/util/GridOccupancy;-><init>(II)V

    iput-object v0, p0, Lcom/android/launcher3/CellLayout;->mTmpOccupied:Lcom/android/launcher3/util/GridOccupancy;

    .line 407
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mTempRectStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 408
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    iget v2, p0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher3/CellLayout;->mCountX:I

    iget v5, p0, Lcom/android/launcher3/CellLayout;->mCountY:I

    iget-object v6, p0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setCellDimensions(IIIILandroid/graphics/Point;)V

    .line 410
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->requestLayout()V

    .line 411
    return-void
.end method

.method public setInvertIfRtl(Z)V
    .locals 1
    .param p1, "invert"    # Z

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mShortcutsAndWidgets:Lcom/android/launcher3/ShortcutAndWidgetContainer;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->setInvertIfRtl(Z)V

    .line 416
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 2
    .param p1, "isDragOverlapping"    # Z

    .line 427
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_1

    .line 428
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mIsDragOverlapping:Z

    .line 429
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 430
    sget-object v1, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_ACTIVE:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/launcher3/CellLayout;->BACKGROUND_STATE_DEFAULT:[I

    .line 429
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 431
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 433
    :cond_1
    return-void
.end method

.method setItemPlacementDirty(Z)V
    .locals 0
    .param p1, "dirty"    # Z

    .line 2567
    iput-boolean p1, p0, Lcom/android/launcher3/CellLayout;->mItemPlacementDirty:Z

    .line 2568
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnTouchListener;

    .line 725
    iput-object p1, p0, Lcom/android/launcher3/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 726
    return-void
.end method

.method public setScrollProgress(F)V
    .locals 2
    .param p1, "progress"    # F

    .line 577
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/CellLayout;->mScrollProgress:F

    .line 579
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->updateBgAlpha()V

    .line 581
    :cond_0
    return-void
.end method

.method public setSpringLoadedProgress(F)V
    .locals 1
    .param p1, "progress"    # F

    .line 552
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    iput p1, p0, Lcom/android/launcher3/CellLayout;->mSpringLoadedProgress:F

    .line 554
    invoke-direct {p0}, Lcom/android/launcher3/CellLayout;->updateBgAlpha()V

    .line 555
    invoke-direct {p0, p1}, Lcom/android/launcher3/CellLayout;->setGridAlpha(F)V

    .line 557
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 697
    const/4 v0, 0x0

    return v0
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 1043
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mBackground:Landroid/graphics/drawable/Drawable;

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

.method visualizeDropLocation(IIIILcom/android/launcher3/DropTarget$DragObject;)V
    .locals 5
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "spanX"    # I
    .param p4, "spanY"    # I
    .param p5, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 1152
    iget-object v0, p0, Lcom/android/launcher3/CellLayout;->mDragCell:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_0

    aget v2, v0, v3

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aget v4, v2, v1

    if-ne v4, p3, :cond_0

    aget v2, v2, v3

    if-eq v2, p4, :cond_1

    .line 1154
    :cond_0
    aput p1, v0, v1

    .line 1155
    aput p2, v0, v3

    .line 1156
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragCellSpan:[I

    aput p3, v2, v1

    .line 1157
    aput p4, v2, v3

    .line 1160
    invoke-direct {p0, p5, v0, p3, p4}, Lcom/android/launcher3/CellLayout;->applyColorExtractionOnWidget(Lcom/android/launcher3/DropTarget$DragObject;[III)V

    .line 1162
    iget v0, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1163
    .local v0, "oldIndex":I
    iget-object v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateOut()V

    .line 1164
    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

    array-length v3, v2

    rem-int/2addr v1, v3

    iput v1, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    .line 1166
    aget-object v1, v2, v1

    .line 1167
    .local v1, "cell":Lcom/android/launcher3/CellLayout$LayoutParams;
    iput p1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 1168
    iput p2, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 1169
    iput p3, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 1170
    iput p4, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 1172
    iget-object v2, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher3/InterruptibleInOutAnimator;

    iget v3, p0, Lcom/android/launcher3/CellLayout;->mDragOutlineCurrent:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/launcher3/InterruptibleInOutAnimator;->animateIn()V

    .line 1173
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 1175
    iget-object v2, p5, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    if-eqz v2, :cond_1

    .line 1176
    iget-object v2, p5, Lcom/android/launcher3/DropTarget$DragObject;->stateAnnouncer:Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout;->getItemMoveDescription(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/accessibility/DragViewStateAnnouncer;->announce(Ljava/lang/CharSequence;)V

    .line 1180
    .end local v0    # "oldIndex":I
    .end local v1    # "cell":Lcom/android/launcher3/CellLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method protected visualizeGrid(Landroid/graphics/Canvas;)V
    .locals 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 591
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    .line 592
    .local v2, "dp":Lcom/android/launcher3/DeviceProfile;
    iget v3, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    iget v4, v2, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingX:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 593
    .local v3, "paddingX":I
    iget v4, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, v2, Lcom/android/launcher3/DeviceProfile;->gridVisualizationPaddingY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 594
    .local v4, "paddingY":I
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v6, v3

    int-to-float v7, v4

    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    sub-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V

    .line 598
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 599
    iget v5, v0, Lcom/android/launcher3/CellLayout;->mGridAlpha:F

    const/high16 v6, 0x42f00000    # 120.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 600
    .local v5, "paintAlpha":I
    iget-object v6, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    iget v7, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v7, v5}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 602
    iget-boolean v6, v0, Lcom/android/launcher3/CellLayout;->mVisualizeCells:Z

    if-eqz v6, :cond_1

    .line 603
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, v0, Lcom/android/launcher3/CellLayout;->mCountX:I

    if-ge v6, v7, :cond_1

    .line 604
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCountY:I

    if-ge v7, v8, :cond_0

    .line 605
    iget v8, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v8, v6

    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    mul-int/2addr v9, v6

    add-int/2addr v8, v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v8, v3

    .line 607
    .local v8, "transX":I
    iget v9, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v9, v7

    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    mul-int/2addr v10, v7

    add-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    .line 610
    .local v9, "transY":I
    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v11, v8

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 611
    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    sget-object v11, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 612
    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    iget v11, v0, Lcom/android/launcher3/CellLayout;->mGridVisualizationRoundingRadius:I

    int-to-float v12, v11

    int-to-float v11, v11

    iget-object v13, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v12, v11, v13}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 604
    .end local v8    # "transX":I
    .end local v9    # "transY":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 603
    .end local v7    # "j":I
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 618
    .end local v6    # "i":I
    :cond_1
    iget-boolean v6, v0, Lcom/android/launcher3/CellLayout;->mVisualizeDropLocation:Z

    if-eqz v6, :cond_4

    .line 619
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_2
    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

    array-length v7, v7

    if-ge v6, v7, :cond_3

    .line 620
    iget-object v7, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    aget v7, v7, v6

    .line 621
    .local v7, "alpha":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gtz v8, :cond_2

    move-object/from16 v16, v2

    move/from16 v17, v5

    goto/16 :goto_3

    .line 623
    :cond_2
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    const/16 v9, 0xff

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 624
    iget-object v8, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

    aget-object v8, v8, v6

    iget v8, v8, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 625
    .local v8, "x":I
    iget-object v9, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

    aget-object v9, v9, v6

    iget v9, v9, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 626
    .local v9, "y":I
    iget-object v10, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

    aget-object v10, v10, v6

    iget v10, v10, Lcom/android/launcher3/CellLayout$LayoutParams;->cellHSpan:I

    .line 627
    .local v10, "spanX":I
    iget-object v11, v0, Lcom/android/launcher3/CellLayout;->mDragOutlines:[Lcom/android/launcher3/CellLayout$LayoutParams;

    aget-object v11, v11, v6

    iget v11, v11, Lcom/android/launcher3/CellLayout$LayoutParams;->cellVSpan:I

    .line 630
    .local v11, "spanY":I
    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v13, v3

    int-to-float v14, v4

    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v15, v10

    move-object/from16 v16, v2

    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    .local v16, "dp":Lcom/android/launcher3/DeviceProfile;
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/lit8 v17, v10, -0x1

    mul-int v2, v2, v17

    add-int/2addr v15, v2

    sub-int/2addr v15, v3

    int-to-float v2, v15

    iget v15, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v15, v11

    move/from16 v17, v5

    .end local v5    # "paintAlpha":I
    .local v17, "paintAlpha":I
    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v18, v11, -0x1

    mul-int v5, v5, v18

    add-int/2addr v15, v5

    sub-int/2addr v15, v4

    int-to-float v5, v15

    invoke-virtual {v12, v13, v14, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 634
    iget v2, v0, Lcom/android/launcher3/CellLayout;->mCellWidth:I

    mul-int/2addr v2, v8

    iget-object v5, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    mul-int/2addr v5, v8

    add-int/2addr v2, v5

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getPaddingLeft()I

    move-result v5

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    .line 636
    .local v2, "transX":I
    iget v5, v0, Lcom/android/launcher3/CellLayout;->mCellHeight:I

    mul-int/2addr v5, v9

    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mBorderSpace:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    mul-int/2addr v12, v9

    add-int/2addr v5, v12

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/CellLayout;->getPaddingTop()I

    move-result v12

    add-int/2addr v5, v12

    add-int/2addr v5, v4

    .line 639
    .local v5, "transY":I
    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    int-to-float v13, v2

    int-to-float v14, v5

    invoke-virtual {v12, v13, v14}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 641
    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    sget-object v13, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 642
    iget-object v12, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    float-to-int v13, v7

    iget v14, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    .line 643
    invoke-static {v14}, Landroid/graphics/Color;->red(I)I

    move-result v14

    iget v15, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v15}, Landroid/graphics/Color;->green(I)I

    move-result v15

    move/from16 v18, v2

    .end local v2    # "transX":I
    .local v18, "transX":I
    iget v2, v0, Lcom/android/launcher3/CellLayout;->mGridColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 642
    invoke-static {v13, v14, v15, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 645
    iget-object v2, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridRect:Landroid/graphics/RectF;

    iget v12, v0, Lcom/android/launcher3/CellLayout;->mGridVisualizationRoundingRadius:I

    int-to-float v13, v12

    int-to-float v12, v12

    iget-object v14, v0, Lcom/android/launcher3/CellLayout;->mVisualizeGridPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2, v13, v12, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 619
    .end local v5    # "transY":I
    .end local v7    # "alpha":F
    .end local v8    # "x":I
    .end local v9    # "y":I
    .end local v10    # "spanX":I
    .end local v11    # "spanY":I
    .end local v18    # "transX":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v16

    move/from16 v5, v17

    goto/16 :goto_2

    .end local v16    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v17    # "paintAlpha":I
    .local v2, "dp":Lcom/android/launcher3/DeviceProfile;
    .local v5, "paintAlpha":I
    :cond_3
    move-object/from16 v16, v2

    move/from16 v17, v5

    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v5    # "paintAlpha":I
    .restart local v16    # "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v17    # "paintAlpha":I
    goto :goto_4

    .line 618
    .end local v6    # "i":I
    .end local v16    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v17    # "paintAlpha":I
    .restart local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v5    # "paintAlpha":I
    :cond_4
    move-object/from16 v16, v2

    move/from16 v17, v5

    .line 649
    .end local v2    # "dp":Lcom/android/launcher3/DeviceProfile;
    .end local v5    # "paintAlpha":I
    .restart local v16    # "dp":Lcom/android/launcher3/DeviceProfile;
    .restart local v17    # "paintAlpha":I
    :goto_4
    return-void
.end method
