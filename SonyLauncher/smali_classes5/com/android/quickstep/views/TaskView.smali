.class public Lcom/android/quickstep/views/TaskView;
.super Landroid/widget/FrameLayout;
.source "TaskView.java"

# interfaces
.implements Lcom/android/launcher3/util/ViewPool$Reusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;,
        Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;,
        Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;,
        Lcom/android/quickstep/views/TaskView$TaskDataChanges;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DIM_ANIM_DURATION:J = 0x2bcL

.field private static final DISMISS_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final DISMISS_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final EDGE_SCALE_DOWN_FACTOR_CAROUSEL:F = 0.03f

.field private static final EDGE_SCALE_DOWN_FACTOR_GRID:F = 0.0f

.field public static final FLAG_UPDATE_ALL:I = 0x3

.field public static final FLAG_UPDATE_ICON:I = 0x1

.field public static final FLAG_UPDATE_THUMBNAIL:I = 0x2

.field public static final FOCUS_TRANSITION:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRID_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field public static final MAX_PAGE_SCRIM_ALPHA:F = 0.4f

.field private static final NON_GRID_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final NON_GRID_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field public static final SCALE_ICON_DURATION:J = 0x78L

.field public static final SNAPSHOT_SCALE:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPLIT_SELECT_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPLIT_SELECT_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_RESISTANCE_TRANSLATION_X:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TASK_RESISTANCE_TRANSLATION_Y:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

.field private mBoxTranslationY:F

.field protected final mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

.field protected final mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

.field private mDismissScale:F

.field private mDismissTranslationX:F

.field private mDismissTranslationY:F

.field private mEndQuickswitchCuj:Z

.field private mFocusTransitionProgress:F

.field private mFullscreenProgress:F

.field private mGridEndTranslationX:F

.field private mGridProgress:F

.field private mGridTranslationX:F

.field private mGridTranslationY:F

.field private mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

.field private final mIconCenterCoords:[F

.field private mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

.field private mIconScaleAnimStartProgress:F

.field private mIconTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

.field protected mIconView:Lcom/android/quickstep/views/IconView;

.field private mIsClickableAsLiveTile:Z

.field private final mLastTouchDownPosition:Landroid/graphics/PointF;

.field private mModalness:F

.field private mNonGridScale:F

.field private mNonGridTranslationX:F

.field private mNonGridTranslationY:F

.field private final mOutlineProvider:Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

.field private mShowScreenshot:Z

.field protected mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

.field private mSplitSelectScrollOffsetPrimary:F

.field private mSplitSelectTranslationX:F

.field private mSplitSelectTranslationY:F

.field private mStableAlpha:F

.field protected mTask:Lcom/android/systemui/shared/recents/model/Task;

.field protected final mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

.field protected final mTaskIdContainer:[I

.field private mTaskOffsetTranslationX:F

.field private mTaskOffsetTranslationY:F

.field private mTaskResistanceTranslationX:F

.field private mTaskResistanceTranslationY:F

.field private mTaskViewId:I

.field private mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;


# direct methods
.method public static synthetic $r8$lambda$FSX0JrDfpzJvatvYS6QJ6Y6Fa5M(Lcom/android/quickstep/views/TaskView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->onClick(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDismissTranslationX(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDismissTranslationY(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFocusTransitionProgress(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mFocusTransitionProgress:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmGridEndTranslationX(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mGridEndTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNonGridTranslationX(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNonGridTranslationY(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSplitSelectTranslationX(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSplitSelectTranslationY(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskOffsetTranslationX(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskOffsetTranslationY(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskResistanceTranslationX(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationX:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTaskResistanceTranslationY(Lcom/android/quickstep/views/TaskView;)F
    .locals 0

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationY:F

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmIconAndDimAnimator(Lcom/android/quickstep/views/TaskView;Landroid/animation/ObjectAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsClickableAsLiveTile(Lcom/android/quickstep/views/TaskView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetRootViewDisplayId(Lcom/android/quickstep/views/TaskView;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->getRootViewDisplayId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetDismissTranslationX(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setDismissTranslationX(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetDismissTranslationY(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setDismissTranslationY(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetGridEndTranslationX(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setGridEndTranslationX(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNonGridTranslationX(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setNonGridTranslationX(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNonGridTranslationY(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setNonGridTranslationY(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSnapshotScale(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setSnapshotScale(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSplitSelectTranslationX(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setSplitSelectTranslationX(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSplitSelectTranslationY(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setSplitSelectTranslationY(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskOffsetTranslationX(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskOffsetTranslationX(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskOffsetTranslationY(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskOffsetTranslationY(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskResistanceTranslationX(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskResistanceTranslationX(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetTaskResistanceTranslationY(Lcom/android/quickstep/views/TaskView;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->setTaskResistanceTranslationY(F)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 134
    const-class v0, Lcom/android/quickstep/views/TaskView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    .line 194
    sget-object v0, Lcom/android/launcher3/anim/Interpolators;->ACCEL_DEACCEL:Landroid/view/animation/Interpolator;

    sput-object v0, Lcom/android/quickstep/views/TaskView;->GRID_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 204
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 205
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/quickstep/views/TaskView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    .line 207
    new-instance v0, Lcom/android/quickstep/views/TaskView$1;

    const-string v1, "focusTransition"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->FOCUS_TRANSITION:Landroid/util/FloatProperty;

    .line 220
    new-instance v0, Lcom/android/quickstep/views/TaskView$2;

    const-string v1, "splitSelectTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 233
    new-instance v0, Lcom/android/quickstep/views/TaskView$3;

    const-string v1, "splitSelectTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_Y:Landroid/util/FloatProperty;

    .line 246
    new-instance v0, Lcom/android/quickstep/views/TaskView$4;

    const-string v1, "dismissTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 259
    new-instance v0, Lcom/android/quickstep/views/TaskView$5;

    const-string v1, "dismissTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_Y:Landroid/util/FloatProperty;

    .line 272
    new-instance v0, Lcom/android/quickstep/views/TaskView$6;

    const-string v1, "taskOffsetTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 285
    new-instance v0, Lcom/android/quickstep/views/TaskView$7;

    const-string v1, "taskOffsetTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;

    .line 298
    new-instance v0, Lcom/android/quickstep/views/TaskView$8;

    const-string v1, "taskResistanceTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$8;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TASK_RESISTANCE_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 311
    new-instance v0, Lcom/android/quickstep/views/TaskView$9;

    const-string v1, "taskResistanceTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$9;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->TASK_RESISTANCE_TRANSLATION_Y:Landroid/util/FloatProperty;

    .line 324
    new-instance v0, Lcom/android/quickstep/views/TaskView$10;

    const-string v1, "nonGridTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$10;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 337
    new-instance v0, Lcom/android/quickstep/views/TaskView$11;

    const-string v1, "nonGridTranslationY"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$11;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_Y:Landroid/util/FloatProperty;

    .line 350
    new-instance v0, Lcom/android/quickstep/views/TaskView$12;

    const-string v1, "gridEndTranslationX"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$12;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->GRID_END_TRANSLATION_X:Landroid/util/FloatProperty;

    .line 363
    new-instance v0, Lcom/android/quickstep/views/TaskView$13;

    const-string v1, "snapshotScale"

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/TaskView$13;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/quickstep/views/TaskView;->SNAPSHOT_SCALE:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 447
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 450
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/quickstep/views/TaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 451
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 454
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 385
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    .line 386
    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    .line 415
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/quickstep/views/TaskView;->mIconScaleAnimStartProgress:F

    .line 416
    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mFocusTransitionProgress:F

    .line 417
    iput v1, p0, Lcom/android/quickstep/views/TaskView;->mModalness:F

    .line 418
    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mStableAlpha:F

    .line 420
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskViewId:I

    .line 424
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    .line 425
    new-array v1, v0, [Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 438
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconCenterCoords:[F

    .line 440
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    .line 455
    invoke-static {p1}, Lcom/android/launcher3/statemanager/StatefulActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/statemanager/StatefulActivity;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 456
    new-instance v1, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 458
    new-instance v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-direct {v1, p1}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    .line 459
    new-instance v2, Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-direct {v2, v0, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/quickstep/views/TaskView;)V

    iput-object v2, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    .line 461
    new-instance v2, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 462
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    invoke-direct {v2, v3, v1, v0}, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;-><init>(Landroid/content/Context;Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;I)V

    iput-object v2, p0, Lcom/android/quickstep/views/TaskView;->mOutlineProvider:Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

    .line 463
    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/TaskView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 464
    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private applyScale()V
    .locals 2

    .line 1180
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1181
    .local v0, "scale":F
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPersistentScale()F

    move-result v1

    mul-float/2addr v0, v1

    .line 1182
    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    mul-float/2addr v0, v1

    .line 1183
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setScaleX(F)V

    .line 1184
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setScaleY(F)V

    .line 1185
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    .line 1186
    return-void
.end method

.method private applyTranslationX()V
    .locals 2

    .line 1305
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridEndTranslationX:F

    add-float/2addr v0, v1

    .line 1306
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPersistentTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    .line 1305
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setTranslationX(F)V

    .line 1307
    return-void
.end method

.method private applyTranslationY()V
    .locals 2

    .line 1310
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationY:F

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationY:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationY:F

    add-float/2addr v0, v1

    .line 1311
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPersistentTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    .line 1310
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setTranslationY(F)V

    .line 1312
    return-void
.end method

.method public static clipBottom(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 178
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    return v0
.end method

.method public static clipLeft(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public static clipRight(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 171
    const/4 v0, 0x0

    return v0
.end method

.method public static clipTop(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method private confirmSecondSplitSelectApp()Z
    .locals 6

    .line 658
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->getChildTaskIndexAtPosition(Landroid/graphics/PointF;)I

    move-result v0

    .line 659
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    aget-object v1, v1, v0

    .line 660
    .local v1, "container":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    .line 661
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getIconView()Lcom/android/quickstep/views/IconView;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getThumbnailView()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v5

    .line 660
    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/android/quickstep/views/RecentsView;->confirmSplitSelect(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/IconView;Lcom/android/quickstep/views/TaskThumbnailView;)Z

    move-result v2

    return v2
.end method

.method public static getEdgeScaleDownFactor(Lcom/android/launcher3/DeviceProfile;)F
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 1149
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1150
    :cond_0
    const v0, 0x3cf5c28f    # 0.03f

    .line 1149
    :goto_0
    return v0
.end method

.method private getExpectedViewHeight(Landroid/view/View;)I
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 1415
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1416
    .local v0, "h":I
    if-lez v0, :cond_0

    .line 1417
    move v1, v0

    .local v1, "expectedHeight":I
    goto :goto_0

    .line 1419
    .end local v1    # "expectedHeight":I
    :cond_0
    const v1, 0x3fffffff    # 1.9999999f

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1420
    .local v1, "m":I
    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    .line 1421
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v1, v2

    .line 1423
    .local v1, "expectedHeight":I
    :goto_0
    return v1
.end method

.method private getGridTrans(F)F
    .locals 2
    .param p1, "endTranslation"    # F

    .line 1596
    sget-object v0, Lcom/android/quickstep/views/TaskView;->GRID_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 1597
    .local v0, "progress":F
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v1

    return v1
.end method

.method private getNonGridTrans(F)F
    .locals 1
    .param p1, "endTranslation"    # F

    .line 1601
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->getGridTrans(F)F

    move-result v0

    sub-float v0, p1, v0

    return v0
.end method

.method private getRootViewDisplayId()I
    .locals 2

    .line 1649
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1650
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final getRunningTaskWindowMode()I
    .locals 7

    .line 717
    const/4 v0, 0x0

    .line 718
    .local v0, "windowingMode":I
    const/4 v1, 0x0

    .line 720
    .local v1, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v3

    const/16 v4, 0xa

    invoke-interface {v3, v4, v2, v2}, Landroid/app/IActivityTaskManager;->getTasks(IZZ)Ljava/util/List;

    move-result-object v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 723
    goto :goto_0

    .line 721
    :catch_0
    move-exception v3

    .line 722
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v4, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    const-string v5, "Failed to get running tasks"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v1, :cond_0

    .line 725
    return v2

    .line 727
    :cond_0
    const/4 v3, 0x0

    .line 729
    .local v3, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getAllRootTaskInfos()Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 732
    goto :goto_1

    .line 730
    :catch_1
    move-exception v4

    .line 731
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v5, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    const-string v6, "Failed to get stacks"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 733
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    if-nez v3, :cond_1

    .line 734
    return v2

    .line 736
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 737
    .local v4, "task":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    .line 738
    invoke-static {v4, v3}, Lcom/android/quickstep/views/TaskView;->isVisible(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 739
    return v0

    .line 741
    .end local v4    # "task":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_2
    goto :goto_2

    .line 742
    :cond_3
    return v0
.end method

.method private static isVisible(Landroid/app/ActivityManager$RunningTaskInfo;Ljava/util/List;)Z
    .locals 6
    .param p0, "task"    # Landroid/app/ActivityManager$RunningTaskInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;)Z"
        }
    .end annotation

    .line 747
    .local p1, "taskInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityTaskManager$RootTaskInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityTaskManager$RootTaskInfo;

    .line 748
    .local v1, "taskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    iget v3, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v4, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    if-ne v3, v4, :cond_1

    .line 749
    iget-boolean v0, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->visible:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    if-eqz v0, :cond_0

    iget-object v0, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v0, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    iget-object v5, v1, Landroid/app/ActivityTaskManager$RootTaskInfo;->childTaskIds:[I

    array-length v5, v5

    sub-int/2addr v5, v3

    aget v4, v4, v5

    if-ne v0, v4, :cond_0

    move v2, v3

    :cond_0
    return v2

    .line 752
    .end local v1    # "taskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    :cond_1
    goto :goto_0

    .line 753
    :cond_2
    return v2
.end method

.method static synthetic lambda$launchTaskInternal$4(Ljava/util/function/Consumer;)V
    .locals 1
    .param p0, "callback"    # Ljava/util/function/Consumer;

    .line 788
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$launchTasks$7(I)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 1
    .param p0, "x$0"    # I

    .line 837
    new-array v0, p0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-object v0
.end method

.method static synthetic lambda$launchTasks$8(I)[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .locals 1
    .param p0, "x$0"    # I

    .line 841
    new-array v0, p0, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    return-object v0
.end method

.method private launchTaskInternal(Ljava/util/function/Consumer;Z)V
    .locals 4
    .param p2, "freezeTaskList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 783
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string v1, "Main"

    const-string v2, "startActivityFromRecentsAsync"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 787
    nop

    .line 788
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/Consumer;)V

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 787
    const/4 v3, 0x0

    invoke-static {v0, v3, v3, v1, v2}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;IILjava/lang/Runnable;Landroid/os/Handler;)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 789
    .local v0, "opts":Landroid/app/ActivityOptions;
    nop

    .line 790
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 789
    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 791
    if-eqz p2, :cond_1

    .line 792
    invoke-static {v0}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->setFreezeRecentTasksList(Landroid/app/ActivityOptions;)Landroid/app/ActivityOptions;

    .line 794
    :cond_1
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 795
    .local v1, "key":Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    sget-object v2, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v1, v0, p1}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda5;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 806
    return-void
.end method

.method private launchTaskInternalCancel(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 809
    .local p1, "resultCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 810
    return-void
.end method

.method private notifyTaskLaunchFailed(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 1498
    const-string v0, "Failed to launch task"

    .line 1499
    .local v0, "msg":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v1, :cond_0

    .line 1500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1502
    :cond_0
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->activity_not_available:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1504
    return-void
.end method

.method private onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 626
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-nez v0, :cond_0

    .line 627
    return-void

    .line 629
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/FreeFormUtil;->isRunningInFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 630
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->recents_error_toast_cannot_open_multi_window_from_popup_window:I

    invoke-static {v0, v1}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    .line 632
    return-void

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->containsMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 636
    .local v0, "container":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    if-eqz v0, :cond_2

    .line 637
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Lcom/sonymobile/quickstep/FreeFormUtil;->isRunningInFreeForm(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 638
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/launcher3/R$string;->recents_error_toast_cannot_open_multi_window_from_popup_window:I

    invoke-static {v1, v2}, Lcom/sonymobile/quickstep/FreeFormUtil;->showToast(Landroid/content/Context;I)V

    .line 640
    return-void

    .line 644
    .end local v0    # "container":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    :cond_2
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->confirmSecondSplitSelectApp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    invoke-static {}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->getInstance()Lcom/sonymobile/launcher/idd/Idd$SplitScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task;->getTopComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/launcher/idd/Idd$SplitScreen;->secondAppSplitScreen(Landroid/content/ComponentName;)V

    .line 646
    return-void

    .line 648
    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTasks()V

    .line 649
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_LAUNCH_TAP:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 650
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 651
    return-void
.end method

.method private setBoxTranslationY(F)V
    .locals 0
    .param p1, "boxTranslationY"    # F

    .line 1300
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mBoxTranslationY:F

    .line 1301
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1302
    return-void
.end method

.method private setDismissTranslationX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 1214
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    .line 1215
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1216
    return-void
.end method

.method private setDismissTranslationY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 1219
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationY:F

    .line 1220
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1221
    return-void
.end method

.method private setGridEndTranslationX(F)V
    .locals 0
    .param p1, "gridEndTranslationX"    # F

    .line 1272
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mGridEndTranslationX:F

    .line 1273
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1274
    return-void
.end method

.method private setIconScaleAndDim(FZ)V
    .locals 1
    .param p1, "iconScale"    # F
    .param p2, "invert"    # Z

    .line 1079
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1080
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1082
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->setIconAndDimTransitionProgress(FZ)V

    .line 1083
    return-void
.end method

.method private setNonGridScale(F)V
    .locals 0
    .param p1, "nonGridScale"    # F

    .line 1154
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    .line 1155
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyScale()V

    .line 1156
    return-void
.end method

.method private setNonGridTranslationX(F)V
    .locals 0
    .param p1, "nonGridTranslationX"    # F

    .line 1244
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationX:F

    .line 1245
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1246
    return-void
.end method

.method private setNonGridTranslationY(F)V
    .locals 0
    .param p1, "nonGridTranslationY"    # F

    .line 1249
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationY:F

    .line 1250
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1251
    return-void
.end method

.method private setSnapshotScale(F)V
    .locals 0
    .param p1, "dismissScale"    # F

    .line 1163
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mDismissScale:F

    .line 1164
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyScale()V

    .line 1165
    return-void
.end method

.method private setSplitSelectTranslationX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 1200
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationX:F

    .line 1201
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1202
    return-void
.end method

.method private setSplitSelectTranslationY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 1205
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationY:F

    .line 1206
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1207
    return-void
.end method

.method private setTaskOffsetTranslationX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 1224
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    .line 1225
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1226
    return-void
.end method

.method private setTaskOffsetTranslationY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 1229
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    .line 1230
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1231
    return-void
.end method

.method private setTaskResistanceTranslationX(F)V
    .locals 0
    .param p1, "x"    # F

    .line 1234
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationX:F

    .line 1235
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1236
    return-void
.end method

.method private setTaskResistanceTranslationY(F)V
    .locals 0
    .param p1, "y"    # F

    .line 1239
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationY:F

    .line 1240
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1241
    return-void
.end method

.method private showTaskMenu(Lcom/android/quickstep/views/IconView;)Z
    .locals 2
    .param p1, "iconView"    # Lcom/android/quickstep/views/IconView;

    .line 951
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->canLaunchFullscreenTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 953
    const/4 v0, 0x1

    return v0

    .line 956
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-nez v0, :cond_1

    .line 957
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->isClearAllHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 958
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/RecentsView;->snapToPage(I)Z

    .line 959
    const/4 v0, 0x0

    return v0

    .line 961
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_TASK_ICON_TAP_OR_LONGPRESS:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    .line 962
    invoke-interface {v0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    .line 963
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->showTaskMenuWithContainer(Lcom/android/quickstep/views/IconView;)Z

    move-result v0

    return v0
.end method

.method public static useFullThumbnail(Lcom/android/launcher3/DeviceProfile;)Z
    .locals 1
    .param p0, "deviceProfile"    # Lcom/android/launcher3/DeviceProfile;

    .line 185
    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/DeviceProfile;->isTaskbarPresentInApps:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public animateIconScaleAndDimIntoView()V
    .locals 4

    .line 1059
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 1062
    :cond_0
    sget-object v0, Lcom/android/quickstep/views/TaskView;->FOCUS_TRANSITION:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    .line 1063
    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mIconScaleAnimStartProgress:F

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setCurrentFraction(F)V

    .line 1064
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x2bc

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/anim/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1065
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/android/quickstep/views/TaskView$15;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/TaskView$15;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1071
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconAndDimAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 1072
    return-void
.end method

.method public bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 9
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;
    .param p2, "orientedState"    # Lcom/android/quickstep/util/RecentsOrientedState;

    .line 562
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    .line 563
    iput-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    .line 564
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 565
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    new-instance v1, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    iget-object v6, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v7, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    const/4 v8, -0x1

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/views/TaskThumbnailView;Lcom/android/quickstep/views/IconView;I)V

    aput-object v1, v0, v2

    .line 567
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->bind(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 568
    invoke-virtual {p0, p2}, Lcom/android/quickstep/views/TaskView;->setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 569
    return-void
.end method

.method protected cancelPendingLoadTasks()V
    .locals 2

    .line 940
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    .line 942
    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    .line 944
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    if-eqz v0, :cond_1

    .line 945
    invoke-virtual {v0}, Lcom/android/quickstep/util/CancellableTask;->cancel()V

    .line 946
    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    .line 948
    :cond_1
    return-void
.end method

.method protected computeAndSetIconTouchDelegate(Lcom/android/quickstep/views/IconView;[FLcom/android/launcher3/util/TransformingTouchDelegate;)V
    .locals 5
    .param p1, "iconView"    # Lcom/android/quickstep/views/IconView;
    .param p2, "tempCenterCoords"    # [F
    .param p3, "transformingTouchDelegate"    # Lcom/android/launcher3/util/TransformingTouchDelegate;

    .line 523
    invoke-virtual {p1}, Lcom/android/quickstep/views/IconView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 524
    .local v0, "iconHalfSize":F
    const/4 v1, 0x1

    aput v0, p2, v1

    const/4 v2, 0x0

    aput v0, p2, v2

    .line 525
    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;

    move-result-object v3

    invoke-static {p1, v3, p2, v2}, Lcom/android/launcher3/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZ)F

    .line 527
    aget v3, p2, v2

    sub-float/2addr v3, v0

    float-to-int v3, v3

    aget v4, p2, v1

    sub-float/2addr v4, v0

    float-to-int v4, v4

    aget v2, p2, v2

    add-float/2addr v2, v0

    float-to-int v2, v2

    aget v1, p2, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    invoke-virtual {p3, v3, v4, v2, v1}, Lcom/android/launcher3/util/TransformingTouchDelegate;->setBounds(IIII)V

    .line 532
    return-void
.end method

.method public containsMultipleTasks()Z
    .locals 3

    .line 589
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 619
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mLastTouchDownPosition:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 622
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getChildTaskIndexAtPosition(Landroid/graphics/PointF;)I
    .locals 1
    .param p1, "position"    # Landroid/graphics/PointF;

    .line 668
    const/4 v0, 0x0

    return v0
.end method

.method public getDigitalWellBeingToast()Lcom/android/quickstep/views/DigitalWellBeingToast;
    .locals 1

    .line 552
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    return-object v0
.end method

.method public getGridTranslationX()F
    .locals 1

    .line 1259
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    return v0
.end method

.method public getGridTranslationY()F
    .locals 1

    .line 1268
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationY:F

    return v0
.end method

.method public getIconView()Lcom/android/quickstep/views/IconView;
    .locals 1

    .line 614
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    return-object v0
.end method

.method public getItemInfo()Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->getItemInfo(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    move-result-object v0

    return-object v0
.end method

.method protected getItemInfo(Lcom/android/systemui/shared/recents/model/Task;)Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    .locals 4
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 482
    new-instance v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;-><init>()V

    .line 483
    .local v0, "stubInfo":Lcom/android/launcher3/model/data/WorkspaceItemInfo;
    const/4 v1, 0x7

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->itemType:I

    .line 484
    const/16 v1, -0x6d

    iput v1, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->container:I

    .line 485
    if-nez p1, :cond_0

    .line 486
    return-object v0

    .line 489
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-static {v1}, Lcom/android/quickstep/TaskUtils;->getLaunchComponentKeyForTask(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)Lcom/android/launcher3/util/ComponentKey;

    move-result-object v1

    .line 490
    .local v1, "componentKey":Lcom/android/launcher3/util/ComponentKey;
    iget-object v2, v1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->user:Landroid/os/UserHandle;

    .line 491
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iget-object v3, v1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->intent:Landroid/content/Intent;

    .line 492
    iget-object v2, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->title:Ljava/lang/CharSequence;

    .line 493
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->screenId:I

    .line 496
    :cond_1
    return-object v0
.end method

.method public getNonGridScale()F
    .locals 1

    .line 1159
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    return v0
.end method

.method public getOffsetAdjustment(ZZ)F
    .locals 1
    .param p1, "fullscreenEnabled"    # Z
    .param p2, "gridEnabled"    # Z

    .line 1288
    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->getScrollAdjustment(ZZ)F

    move-result v0

    return v0
.end method

.method getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;
    .locals 1

    .line 1494
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mOrientationState:Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-virtual {v0}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    return-object v0
.end method

.method public getPersistentScale()F
    .locals 4

    .line 1193
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1194
    .local v0, "scale":F
    sget-object v1, Lcom/android/quickstep/views/TaskView;->GRID_INTERPOLATOR:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    .line 1195
    .local v1, "gridProgress":F
    iget v2, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->mapRange(FFF)F

    move-result v2

    mul-float/2addr v0, v2

    .line 1196
    return v0
.end method

.method public getPersistentTranslationX()F
    .locals 2

    .line 1319
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationX:F

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskView;->getNonGridTrans(F)F

    move-result v0

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->getGridTrans(F)F

    move-result v1

    add-float/2addr v0, v1

    return v0
.end method

.method public getPersistentTranslationY()F
    .locals 2

    .line 1327
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mBoxTranslationY:F

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationY:F

    .line 1328
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->getNonGridTrans(F)F

    move-result v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationY:F

    .line 1329
    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->getGridTrans(F)F

    move-result v1

    add-float/2addr v0, v1

    .line 1327
    return v0
.end method

.method public getPrimaryDismissTranslationProperty()Landroid/util/FloatProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 1343
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 1363
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getPrimarySplitTranslationProperty()Landroid/util/FloatProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 1333
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getPrimaryTaskOffsetTranslationProperty()Landroid/util/FloatProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 1353
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/TaskView;->TASK_OFFSET_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getPrimaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getRecentsView()Lcom/android/quickstep/views/RecentsView;
    .locals 1

    .line 1490
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    return-object v0
.end method

.method public getScrollAdjustment(ZZ)F
    .locals 2
    .param p1, "fullscreenEnabled"    # Z
    .param p2, "gridEnabled"    # Z

    .line 1277
    const/4 v0, 0x0

    .line 1278
    .local v0, "scrollAdjustment":F
    if-eqz p2, :cond_0

    .line 1279
    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    add-float/2addr v0, v1

    goto :goto_0

    .line 1281
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPrimaryNonGridTranslationProperty()Landroid/util/FloatProperty;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/util/FloatProperty;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr v0, v1

    .line 1283
    :goto_0
    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectScrollOffsetPrimary:F

    add-float/2addr v0, v1

    .line 1284
    return v0
.end method

.method public getSecondaryDissmissTranslationProperty()Landroid/util/FloatProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 1348
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/TaskView;->DISMISS_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getSecondaryNonGridTranslationProperty()Landroid/util/FloatProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 1368
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/TaskView;->NON_GRID_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getSecondarySplitTranslationProperty()Landroid/util/FloatProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 1338
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/TaskView;->SPLIT_SELECT_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getSizeAdjustment(Z)F
    .locals 2
    .param p1, "fullscreenEnabled"    # Z

    .line 1292
    const/high16 v0, 0x3f800000    # 1.0f

    .line 1293
    .local v0, "sizeAdjustment":F
    if-eqz p1, :cond_0

    .line 1294
    iget v1, p0, Lcom/android/quickstep/views/TaskView;->mNonGridScale:F

    mul-float/2addr v0, v1

    .line 1296
    :cond_0
    return v0
.end method

.method public getTask()Lcom/android/systemui/shared/recents/model/Task;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object v0
.end method

.method public getTaskCornerRadius()F
    .locals 1

    .line 1126
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-static {v0}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->-$$Nest$fgetmCornerRadius(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)F

    move-result v0

    return v0
.end method

.method public getTaskIdAttributeContainers()[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    return-object v0
.end method

.method public getTaskIds()[I
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdContainer:[I

    return-object v0
.end method

.method public getTaskResistanceTranslationProperty()Landroid/util/FloatProperty;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/FloatProperty<",
            "Lcom/android/quickstep/views/TaskView;",
            ">;"
        }
    .end annotation

    .line 1358
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getPagedOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v0

    sget-object v1, Lcom/android/quickstep/views/TaskView;->TASK_RESISTANCE_TRANSLATION_X:Landroid/util/FloatProperty;

    sget-object v2, Lcom/android/quickstep/views/TaskView;->TASK_RESISTANCE_TRANSLATION_Y:Landroid/util/FloatProperty;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getSecondaryValue(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/FloatProperty;

    return-object v0
.end method

.method public getTaskViewId()I
    .locals 1

    .line 471
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskViewId:I

    return v0
.end method

.method public getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 1

    .line 593
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    return-object v0
.end method

.method public getThumbnails()[Lcom/android/quickstep/views/TaskThumbnailView;
    .locals 3

    .line 610
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public initiateSplitSelect(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;)V
    .locals 3
    .param p1, "splitPositionOption"    # Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;

    .line 1634
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    const/16 v2, 0x800

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    .line 1635
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitPositionOption;->stagePosition:I

    invoke-virtual {v0, p0, v1}, Lcom/android/quickstep/views/RecentsView;->initiateSplitSelect(Lcom/android/quickstep/views/TaskView;I)V

    .line 1636
    return-void
.end method

.method public isEndQuickswitchCuj()Z
    .locals 1

    .line 1379
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskView;->mEndQuickswitchCuj:Z

    return v0
.end method

.method public isFocusedTask()Z
    .locals 2

    .line 1612
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1613
    return v1

    .line 1615
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getFocusedTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public isGridTask()Z
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 1035
    .local v0, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v1, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isRunningTask()Z
    .locals 2

    .line 1605
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1606
    return v1

    .line 1608
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-ne p0, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method synthetic lambda$launchTask$1$com-android-quickstep-views-TaskView(Ljava/util/function/Consumer;ZLandroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "freezeTaskList"    # Z
    .param p3, "d"    # Landroid/content/DialogInterface;
    .param p4, "i"    # I

    .line 771
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->launchTaskInternal(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method synthetic lambda$launchTask$2$com-android-quickstep-views-TaskView(Ljava/util/function/Consumer;Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "i"    # I

    .line 772
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->launchTaskInternalCancel(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$launchTask$3$com-android-quickstep-views-TaskView(Ljava/util/function/Consumer;Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "callback"    # Ljava/util/function/Consumer;
    .param p2, "d"    # Landroid/content/DialogInterface;

    .line 773
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->launchTaskInternalCancel(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$launchTaskAnimated$0$com-android-quickstep-views-TaskView(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .line 681
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimatedInternal()Lcom/android/launcher3/util/RunnableList;

    return-void
.end method

.method synthetic lambda$launchTaskInternal$5$com-android-quickstep-views-TaskView(Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "callback"    # Ljava/util/function/Consumer;

    .line 801
    sget-object v0, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    .line 802
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 803
    return-void
.end method

.method synthetic lambda$launchTaskInternal$6$com-android-quickstep-views-TaskView(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "key"    # Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .param p2, "opts"    # Landroid/app/ActivityOptions;
    .param p3, "callback"    # Ljava/util/function/Consumer;

    .line 796
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 800
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p3}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda13;-><init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    .line 805
    :cond_0
    return-void
.end method

.method synthetic lambda$onTaskListVisibilityChanged$10$com-android-quickstep-views-TaskView(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 2
    .param p1, "task"    # Lcom/android/systemui/shared/recents/model/Task;

    .line 918
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/TaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    .line 919
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 920
    return-void
.end method

.method synthetic lambda$onTaskListVisibilityChanged$9$com-android-quickstep-views-TaskView(Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .locals 2
    .param p1, "thumbnail"    # Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 912
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, v1, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 913
    return-void
.end method

.method synthetic lambda$setIcon$11$com-android-quickstep-views-TaskView(Lcom/android/quickstep/views/IconView;Landroid/view/View;)V
    .locals 1
    .param p1, "iconView"    # Lcom/android/quickstep/views/IconView;
    .param p2, "v"    # Landroid/view/View;

    .line 983
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->confirmSecondSplitSelectApp()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 984
    return-void

    .line 986
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->showTaskMenu(Lcom/android/quickstep/views/IconView;)Z

    .line 987
    return-void
.end method

.method synthetic lambda$setIcon$12$com-android-quickstep-views-TaskView(Lcom/android/quickstep/views/IconView;Landroid/view/View;)Z
    .locals 1
    .param p1, "iconView"    # Lcom/android/quickstep/views/IconView;
    .param p2, "v"    # Landroid/view/View;

    .line 989
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->requestDisallowInterceptTouchEvent(Z)V

    .line 990
    invoke-direct {p0, p1}, Lcom/android/quickstep/views/TaskView;->showTaskMenu(Lcom/android/quickstep/views/IconView;)Z

    move-result v0

    return v0
.end method

.method public launchTask(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 760
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;->launchTask(Ljava/util/function/Consumer;Z)V

    .line 761
    return-void
.end method

.method public launchTask(Ljava/util/function/Consumer;Z)V
    .locals 4
    .param p2, "freezeTaskList"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 767
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 769
    invoke-static {v0, v1}, Lcom/android/launcher3/uioverrides/SomcUtils;->canSplitActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda8;-><init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;Z)V

    new-instance v2, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p1}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda9;-><init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V

    new-instance v3, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, p1}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda10;-><init>(Lcom/android/quickstep/views/TaskView;Ljava/util/function/Consumer;)V

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/uioverrides/SomcUtils;->showConfirmationDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 774
    return-void

    .line 776
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/quickstep/views/TaskView;->launchTaskInternal(Ljava/util/function/Consumer;Z)V

    goto :goto_0

    .line 778
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 780
    :goto_0
    return-void
.end method

.method public launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;
    .locals 3

    .line 677
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 678
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v2, v2, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 679
    invoke-static {v0, v2}, Lcom/android/launcher3/uioverrides/SomcUtils;->canSplitActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 680
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda3;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-static {v0, v2, v1, v1}, Lcom/android/launcher3/uioverrides/SomcUtils;->showConfirmationDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)V

    .line 683
    return-object v1

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimatedInternal()Lcom/android/launcher3/util/RunnableList;

    move-result-object v0

    return-object v0

    .line 687
    :cond_1
    return-object v1
.end method

.method public launchTaskAnimatedInternal()Lcom/android/launcher3/util/RunnableList;
    .locals 5

    .line 692
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string v1, "Main"

    const-string v2, "startActivityFromRecentsAsync"

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 694
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object v0

    .line 695
    .local v0, "opts":Lcom/android/launcher3/util/ActivityOptionsWrapper;
    iget-object v2, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    .line 696
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 695
    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    .line 697
    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v3, v3, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object v4, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    .line 698
    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 699
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    .line 700
    .local v1, "recentsView":Lcom/android/quickstep/views/RecentsView;
    sget-object v2, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v2}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskViewId()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 701
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchedInLiveTileMode()V

    .line 705
    new-instance v2, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v2}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    .line 706
    .local v2, "callbackList":Lcom/android/launcher3/util/RunnableList;
    invoke-virtual {v1, v2}, Lcom/android/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V

    .line 707
    return-object v2

    .line 709
    .end local v2    # "callbackList":Lcom/android/launcher3/util/RunnableList;
    :cond_1
    iget-object v2, v0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->onEndCallback:Lcom/android/launcher3/util/RunnableList;

    return-object v2

    .line 711
    .end local v1    # "recentsView":Lcom/android/quickstep/views/RecentsView;
    :cond_2
    sget-object v2, Lcom/android/quickstep/views/TaskView;->TAG:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    .line 712
    return-object v1
.end method

.method public launchTasks()V
    .locals 13

    .line 816
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v9

    .line 817
    .local v9, "recentsView":Lcom/android/quickstep/views/RecentsView;
    iget-object v10, v9, Lcom/android/quickstep/views/RecentsView;->mRemoteTargetHandles:[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    .line 818
    .local v10, "remoteTargetHandles":[Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;
    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_QUICKSTEP_LIVE_TILE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v10, :cond_3

    .line 819
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    if-nez v0, :cond_0

    .line 820
    return-void

    .line 825
    :cond_0
    sget-object v0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/SystemUiProxy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/quickstep/SystemUiProxy;->setSplitScreenMinimized(Z)V

    .line 827
    iput-boolean v1, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    .line 829
    array-length v0, v10

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 830
    aget-object v0, v10, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v0

    move-object v11, v0

    .local v0, "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    goto :goto_0

    .line 832
    .end local v0    # "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    :cond_1
    aget-object v0, v10, v1

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v0

    .line 833
    .local v0, "topLeftParams":Lcom/android/quickstep/util/TransformParams;
    aget-object v1, v10, v2

    invoke-virtual {v1}, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;->getTransformParams()Lcom/android/quickstep/util/TransformParams;

    move-result-object v1

    .line 834
    .local v1, "rightBottomParams":Lcom/android/quickstep/util/TransformParams;
    nop

    .line 835
    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v3

    iget-object v3, v3, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 836
    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v4

    iget-object v4, v4, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 834
    invoke-static {v3, v4}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda11;

    invoke-direct {v4}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda11;-><init>()V

    .line 837
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 838
    .local v3, "apps":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    nop

    .line 839
    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v4

    iget-object v4, v4, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v4}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 840
    invoke-virtual {v1}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v5

    iget-object v5, v5, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v5}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 838
    invoke-static {v4, v5}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda12;

    invoke-direct {v5}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda12;-><init>()V

    .line 841
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 842
    .local v4, "wallpapers":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    new-instance v5, Lcom/android/quickstep/RemoteAnimationTargets;

    .line 843
    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v6

    iget-object v6, v6, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    .line 844
    invoke-virtual {v0}, Lcom/android/quickstep/util/TransformParams;->getTargetSet()Lcom/android/quickstep/RemoteAnimationTargets;

    move-result-object v7

    iget v7, v7, Lcom/android/quickstep/RemoteAnimationTargets;->targetMode:I

    invoke-direct {v5, v3, v4, v6, v7}, Lcom/android/quickstep/RemoteAnimationTargets;-><init>([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;I)V

    move-object v11, v5

    .line 846
    .end local v0    # "topLeftParams":Lcom/android/quickstep/util/TransformParams;
    .end local v1    # "rightBottomParams":Lcom/android/quickstep/util/TransformParams;
    .end local v3    # "apps":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .end local v4    # "wallpapers":[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;
    .local v11, "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    :goto_0
    if-nez v11, :cond_2

    .line 849
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    .line 850
    iput-boolean v2, p0, Lcom/android/quickstep/views/TaskView;->mIsClickableAsLiveTile:Z

    .line 851
    return-void

    .line 854
    :cond_2
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v12, v0

    .line 855
    .local v12, "anim":Landroid/animation/AnimatorSet;
    iget-object v2, v11, Lcom/android/quickstep/RemoteAnimationTargets;->apps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v3, v11, Lcom/android/quickstep/RemoteAnimationTargets;->wallpapers:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v4, v11, Lcom/android/quickstep/RemoteAnimationTargets;->nonApps:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 858
    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v6

    .line 859
    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->getDepthController()Lcom/android/launcher3/statehandlers/DepthController;

    move-result-object v8

    .line 855
    move-object v0, v12

    move-object v1, p0

    move-object v7, v9

    invoke-static/range {v0 .. v8}, Lcom/android/quickstep/TaskViewUtils;->composeRecentsLaunchAnimator(Landroid/animation/AnimatorSet;Landroid/view/View;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/statemanager/StateManager;Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/statehandlers/DepthController;)V

    .line 860
    new-instance v0, Lcom/android/quickstep/views/TaskView$14;

    invoke-direct {v0, p0, v9}, Lcom/android/quickstep/views/TaskView$14;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/RecentsView;)V

    invoke-virtual {v12, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 878
    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    .line 879
    invoke-virtual {v9}, Lcom/android/quickstep/views/RecentsView;->onTaskLaunchedInLiveTileMode()V

    .line 880
    .end local v11    # "targets":Lcom/android/quickstep/RemoteAnimationTargets;
    .end local v12    # "anim":Landroid/animation/AnimatorSet;
    goto :goto_1

    .line 881
    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    .line 883
    :goto_1
    return-void
.end method

.method protected needsUpdate(II)Z
    .locals 1
    .param p1, "dataChange"    # I
    .param p2, "flag"    # I

    .line 936
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public offerTouchToChildren(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 512
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconCenterCoords:[F

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mIconTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/quickstep/views/TaskView;->computeAndSetIconTouchDelegate(Lcom/android/quickstep/views/IconView;[FLcom/android/launcher3/util/TransformingTouchDelegate;)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/TransformingTouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    const/4 v0, 0x1

    return v0

    .line 518
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 501
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 502
    sget v0, Lcom/android/launcher3/R$id;->snapshot:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/TaskThumbnailView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    .line 503
    sget v0, Lcom/android/launcher3/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/views/IconView;

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    .line 504
    new-instance v0, Lcom/android/launcher3/util/TransformingTouchDelegate;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/TransformingTouchDelegate;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconTouchDelegate:Lcom/android/launcher3/util/TransformingTouchDelegate;

    .line 505
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 9
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 1428
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1430
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v1, Lcom/android/launcher3/R$string;->accessibility_close:I

    .line 1432
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/android/launcher3/R$string;->accessibility_close:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1430
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1434
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1435
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    .line 1436
    .local v5, "taskContainer":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    if-nez v5, :cond_0

    .line 1437
    goto :goto_2

    .line 1439
    :cond_0
    iget-object v6, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 1440
    invoke-virtual {v6}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 1439
    invoke-static {p0, v6, v5}, Lcom/android/quickstep/TaskOverlayFactory;->getEnabledShortcuts(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/popup/SystemShortcut;

    .line 1441
    .local v7, "s":Lcom/android/launcher3/popup/SystemShortcut;
    invoke-virtual {v7, v0}, Lcom/android/launcher3/popup/SystemShortcut;->createAccessibilityAction(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1442
    .end local v7    # "s":Lcom/android/launcher3/popup/SystemShortcut;
    goto :goto_1

    .line 1435
    .end local v5    # "taskContainer":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1445
    :cond_2
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->hasLimit()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1446
    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    sget v2, Lcom/android/launcher3/R$string;->accessibility_app_usage_settings:I

    .line 1449
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/launcher3/R$string;->accessibility_app_usage_settings:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v1, v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 1446
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 1452
    :cond_3
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    .line 1453
    .local v1, "recentsView":Lcom/android/quickstep/views/RecentsView;
    nop

    .line 1455
    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getTaskViewCount()I

    move-result v2

    invoke-virtual {v1, p0}, Lcom/android/quickstep/views/RecentsView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    .line 1454
    invoke-static {v3, v4, v2, v4, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object v2

    .line 1457
    .local v2, "itemInfo":Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    .line 1458
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1131
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1132
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v0, :cond_1

    .line 1133
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sub-int v0, p4, p2

    int-to-float v0, v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setPivotX(F)V

    .line 1134
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setPivotY(F)V

    goto :goto_1

    .line 1136
    :cond_1
    sub-int v0, p4, p2

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setPivotX(F)V

    .line 1137
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTop()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskThumbnailView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr v0, v2

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setPivotY(F)V

    .line 1139
    :goto_1
    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_Q:Z

    if-eqz v0, :cond_2

    .line 1140
    sget-object v0, Lcom/android/quickstep/views/TaskView;->SYSTEM_GESTURE_EXCLUSION_RECT:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getHeight()I

    move-result v4

    invoke-virtual {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1141
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1143
    :cond_2
    return-void
.end method

.method public onRecycle()V
    .locals 3

    .line 1117
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->resetPersistentViewTransforms()V

    .line 1120
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 1121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setOverlayEnabled(Z)V

    .line 1122
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(Z)V

    .line 1123
    return-void
.end method

.method public onTaskListVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .line 890
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;->onTaskListVisibilityChanged(ZI)V

    .line 891
    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .locals 6
    .param p1, "visible"    # Z
    .param p2, "changes"    # I

    .line 898
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-nez v0, :cond_0

    .line 899
    return-void

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->cancelPendingLoadTasks()V

    .line 902
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eqz p1, :cond_3

    .line 905
    sget-object v2, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/quickstep/RecentsModel;

    .line 906
    .local v2, "model":Lcom/android/quickstep/RecentsModel;
    invoke-virtual {v2}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v3

    .line 907
    .local v3, "thumbnailCache":Lcom/android/quickstep/TaskThumbnailCache;
    invoke-virtual {v2}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object v4

    .line 909
    .local v4, "iconCache":Lcom/android/quickstep/TaskIconCache;
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 910
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v5, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda6;

    invoke-direct {v5, p0}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda6;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v3, v1, v5}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    .line 915
    :cond_1
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v1, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda7;-><init>(Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {v4, v0, v1}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    .line 922
    .end local v2    # "model":Lcom/android/quickstep/RecentsModel;
    .end local v3    # "thumbnailCache":Lcom/android/quickstep/TaskThumbnailCache;
    .end local v4    # "iconCache":Lcom/android/quickstep/TaskIconCache;
    :cond_2
    goto :goto_0

    .line 923
    :cond_3
    invoke-virtual {p0, p2, v1}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 924
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v2, v2}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 927
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iput-object v2, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 929
    :cond_4
    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 930
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, v0, v2}, Lcom/android/quickstep/views/TaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    .line 933
    :cond_5
    :goto_0
    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 8
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;

    .line 1462
    sget v0, Lcom/android/launcher3/R$string;->accessibility_close:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 1463
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v1}, Lcom/android/quickstep/views/RecentsView;->dismissTask(Lcom/android/quickstep/views/TaskView;ZZ)V

    .line 1465
    return v1

    .line 1468
    :cond_0
    sget v0, Lcom/android/launcher3/R$string;->accessibility_app_usage_settings:I

    if-ne p1, v0, :cond_1

    .line 1469
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/DigitalWellBeingToast;->openAppUsageSettings(Landroid/view/View;)V

    .line 1470
    return v1

    .line 1473
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_5

    aget-object v4, v0, v3

    .line 1474
    .local v4, "taskContainer":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    if-nez v4, :cond_2

    .line 1475
    goto :goto_2

    .line 1477
    :cond_2
    iget-object v5, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 1478
    invoke-virtual {v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v5

    .line 1477
    invoke-static {p0, v5, v4}, Lcom/android/quickstep/TaskOverlayFactory;->getEnabledShortcuts(Lcom/android/quickstep/views/TaskView;Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/popup/SystemShortcut;

    .line 1479
    .local v6, "s":Lcom/android/launcher3/popup/SystemShortcut;
    invoke-virtual {v6, p1}, Lcom/android/launcher3/popup/SystemShortcut;->hasHandlerForAction(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1480
    invoke-virtual {v6, p0}, Lcom/android/launcher3/popup/SystemShortcut;->onClick(Landroid/view/View;)V

    .line 1481
    return v1

    .line 1483
    .end local v6    # "s":Lcom/android/launcher3/popup/SystemShortcut;
    :cond_3
    goto :goto_1

    .line 1473
    .end local v4    # "taskContainer":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1486
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method refreshThumbnails(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;)V"
        }
    .end annotation

    .line 597
    .local p1, "thumbnailDatas":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/android/systemui/shared/recents/model/ThumbnailData;>;"
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 598
    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    .line 599
    .local v0, "thumbnailData":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    if-eqz v0, :cond_0

    .line 600
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v1, v2, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 601
    return-void

    .line 605
    .end local v0    # "thumbnailData":Lcom/android/systemui/shared/recents/model/ThumbnailData;
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    .line 606
    return-void
.end method

.method protected resetPersistentViewTransforms()V
    .locals 1

    .line 1086
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mBoxTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mNonGridTranslationX:F

    .line 1088
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->resetViewTransforms()V

    .line 1089
    return-void
.end method

.method protected resetViewTransforms()V
    .locals 3

    .line 1094
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mGridEndTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationX:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationX:F

    .line 1096
    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskResistanceTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskOffsetTranslationY:F

    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mDismissTranslationY:F

    .line 1097
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->isSplitSelectionActive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1098
    :cond_0
    iput v0, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectTranslationY:F

    .line 1101
    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v1}, Lcom/android/quickstep/views/TaskView;->setSnapshotScale(F)V

    .line 1102
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1103
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1104
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setTranslationZ(F)V

    .line 1105
    iget v2, p0, Lcom/android/quickstep/views/TaskView;->mStableAlpha:F

    invoke-virtual {p0, v2}, Lcom/android/quickstep/views/TaskView;->setAlpha(F)V

    .line 1106
    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/TaskView;->setIconScaleAndDim(F)V

    .line 1107
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/TaskView;->setColorTint(FI)V

    .line 1108
    return-void
.end method

.method public setColorTint(FI)V
    .locals 1
    .param p1, "amount"    # F
    .param p2, "tintColor"    # I

    .line 1642
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    .line 1643
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, p2, p1}, Lcom/android/quickstep/views/IconView;->setIconColorTint(IF)V

    .line 1644
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    invoke-virtual {v0, p2, p1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->setBannerColorTint(IF)V

    .line 1645
    return-void
.end method

.method public setEndQuickswitchCuj(Z)V
    .locals 0
    .param p1, "endQuickswitchCuj"    # Z

    .line 1383
    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskView;->mEndQuickswitchCuj:Z

    .line 1384
    return-void
.end method

.method public setFullscreenProgress(F)V
    .locals 3
    .param p1, "progress"    # F

    .line 1512
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result p1

    .line 1513
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    .line 1514
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/IconView;->setVisibility(I)V

    .line 1515
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->setFullscreenProgress(F)V

    .line 1517
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->updateSnapshotRadius()V

    .line 1519
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mOutlineProvider:Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 1521
    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 1519
    invoke-virtual {v0, v1, v2}, Lcom/android/quickstep/views/TaskView$TaskOutlineProvider;->updateParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;I)V

    .line 1522
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->invalidateOutline()V

    .line 1523
    return-void
.end method

.method public setGridProgress(F)V
    .locals 0
    .param p1, "gridProgress"    # F

    .line 1173
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mGridProgress:F

    .line 1174
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1175
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1176
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyScale()V

    .line 1177
    return-void
.end method

.method public setGridTranslationX(F)V
    .locals 0
    .param p1, "gridTranslationX"    # F

    .line 1254
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationX:F

    .line 1255
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationX()V

    .line 1256
    return-void
.end method

.method public setGridTranslationY(F)V
    .locals 0
    .param p1, "gridTranslationY"    # F

    .line 1263
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mGridTranslationY:F

    .line 1264
    invoke-direct {p0}, Lcom/android/quickstep/views/TaskView;->applyTranslationY()V

    .line 1265
    return-void
.end method

.method protected setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "iconView"    # Lcom/android/quickstep/views/IconView;
    .param p2, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 980
    if-eqz p2, :cond_0

    .line 981
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/IconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 982
    new-instance v0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/IconView;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 988
    new-instance v0, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/quickstep/views/TaskView$$ExternalSyntheticLambda2;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/quickstep/views/IconView;)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/IconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    .line 993
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/IconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 994
    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/IconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 995
    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/IconView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 997
    :goto_0
    return-void
.end method

.method protected setIconAndDimTransitionProgress(FZ)V
    .locals 8
    .param p1, "progress"    # F
    .param p2, "invert"    # Z

    .line 1039
    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    .line 1040
    sub-float p1, v0, p1

    .line 1042
    :cond_0
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mFocusTransitionProgress:F

    .line 1043
    const v1, 0x3e2f8af9

    .line 1044
    .local v1, "iconScalePercentage":F
    if-eqz p2, :cond_1

    sub-float v2, v0, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 1045
    .local v2, "lowerClamp":F
    :goto_0
    if-eqz p2, :cond_2

    move v3, v0

    goto :goto_1

    :cond_2
    move v3, v1

    .line 1046
    .local v3, "upperClamp":F
    :goto_1
    sget-object v4, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-static {v4, v2, v3}, Lcom/android/launcher3/anim/Interpolators;->clampToProgress(Landroid/view/animation/Interpolator;FF)Landroid/view/animation/Interpolator;

    move-result-object v4

    .line 1047
    invoke-interface {v4, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 1048
    .local v4, "scale":F
    iget-object v5, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v5, v4}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    .line 1049
    iget-object v5, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    sub-float/2addr v0, v4

    iget-object v6, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v6, v6, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v7, v7, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v6, v7

    invoke-virtual {v5, v0, v6}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateBannerOffset(FF)V

    .line 1052
    return-void
.end method

.method protected setIconScaleAndDim(F)V
    .locals 1
    .param p1, "iconScale"    # F

    .line 1075
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/quickstep/views/TaskView;->setIconScaleAndDim(FZ)V

    .line 1076
    return-void
.end method

.method public setIconScaleAnimStartProgress(F)V
    .locals 0
    .param p1, "startProgress"    # F

    .line 1055
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mIconScaleAnimStartProgress:F

    .line 1056
    return-void
.end method

.method public setModalness(F)V
    .locals 3
    .param p1, "modalness"    # F

    .line 541
    iget v0, p0, Lcom/android/quickstep/views/TaskView;->mModalness:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    .line 542
    return-void

    .line 544
    :cond_0
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mModalness:F

    .line 545
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-static {p1}, Lcom/android/launcher3/Utilities;->comp(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/IconView;->setAlpha(F)V

    .line 546
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v1, v1, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget-object v2, v2, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->mCurrentDrawnInsets:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/android/quickstep/views/DigitalWellBeingToast;->updateBannerOffset(FF)V

    .line 549
    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .locals 14
    .param p1, "orientationState"    # Lcom/android/quickstep/util/RecentsOrientedState;

    .line 1000
    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object v6

    .line 1001
    .local v6, "orientationHandler":Lcom/android/launcher3/touch/PagedOrientationHandler;
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v5, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    .line 1002
    .local v5, "isRtl":Z
    :goto_0
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    .line 1004
    .local v7, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isGridTask()Z

    move-result v8

    .line 1005
    .local v8, "isGridTask":Z
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/IconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 1007
    .local v9, "iconParams":Landroid/widget/FrameLayout$LayoutParams;
    iget v10, v7, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 1008
    .local v10, "thumbnailTopMargin":I
    iget v11, v7, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconSizePx:I

    .line 1009
    .local v11, "taskIconHeight":I
    if-eqz v8, :cond_1

    iget v0, v7, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginGridPx:I

    goto :goto_1

    .line 1010
    :cond_1
    iget v0, v7, Lcom/android/launcher3/DeviceProfile;->overviewTaskMarginPx:I

    :goto_1
    move v12, v0

    .line 1011
    .local v12, "taskMargin":I
    sub-int v0, v10, v11

    sub-int v13, v0, v12

    .line 1012
    .local v13, "taskIconMargin":I
    move-object v0, v6

    move-object v1, v9

    move v2, v13

    move v3, v11

    move v4, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/launcher3/touch/PagedOrientationHandler;->setTaskIconParams(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V

    .line 1014
    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v11, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1015
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v0, v9}, Lcom/android/quickstep/views/IconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1017
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-interface {v6}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/IconView;->setRotation(F)V

    .line 1018
    if-eqz v8, :cond_2

    iget v0, v7, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizeGridPx:I

    goto :goto_2

    .line 1019
    :cond_2
    iget v0, v7, Lcom/android/launcher3/DeviceProfile;->overviewTaskIconDrawableSizePx:I

    :goto_2
    nop

    .line 1020
    .local v0, "iconDrawableSize":I
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {v1, v0, v0}, Lcom/android/quickstep/views/IconView;->setDrawableSize(II)V

    .line 1022
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1023
    .local v1, "snapshotParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v10, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1024
    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1026
    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Lcom/android/quickstep/views/TaskThumbnailView;->getTaskOverlay()Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;->updateOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V

    .line 1027
    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mDigitalWellBeingToast:Lcom/android/quickstep/views/DigitalWellBeingToast;

    iget-object v3, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v2, v3}, Lcom/android/quickstep/views/DigitalWellBeingToast;->initialize(Lcom/android/systemui/shared/recents/model/Task;)V

    .line 1028
    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 1
    .param p1, "overlayEnabled"    # Z

    .line 1630
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setOverlayEnabled(Z)V

    .line 1631
    return-void
.end method

.method public setShowScreenshot(Z)V
    .locals 0
    .param p1, "showScreenshot"    # Z

    .line 1619
    iput-boolean p1, p0, Lcom/android/quickstep/views/TaskView;->mShowScreenshot:Z

    .line 1620
    return-void
.end method

.method public setSplitScrollOffsetPrimary(F)V
    .locals 0
    .param p1, "splitSelectScrollOffsetPrimary"    # F

    .line 1210
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mSplitSelectScrollOffsetPrimary:F

    .line 1211
    return-void
.end method

.method public setStableAlpha(F)V
    .locals 0
    .param p1, "parentAlpha"    # F

    .line 1111
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mStableAlpha:F

    .line 1112
    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskView;->setAlpha(F)V

    .line 1113
    return-void
.end method

.method public setTaskViewId(I)V
    .locals 0
    .param p1, "id"    # I

    .line 467
    iput p1, p0, Lcom/android/quickstep/views/TaskView;->mTaskViewId:I

    .line 468
    return-void
.end method

.method public showScreenshot()Z
    .locals 1

    .line 1623
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isRunningTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    const/4 v0, 0x1

    return v0

    .line 1626
    :cond_0
    iget-boolean v0, p0, Lcom/android/quickstep/views/TaskView;->mShowScreenshot:Z

    return v0
.end method

.method protected showTaskMenuWithContainer(Lcom/android/quickstep/views/IconView;)Z
    .locals 5
    .param p1, "iconView"    # Lcom/android/quickstep/views/IconView;

    .line 968
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTaskIdAttributeContainer:[Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;

    .line 969
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    aget-object v0, v0, v1

    .line 970
    .local v0, "menuContainer":Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v1, :cond_2

    .line 971
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;->getTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/quickstep/views/RecentsView;->isOnGridBottomRow(Lcom/android/quickstep/views/TaskView;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    .line 972
    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v1, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    nop

    :goto_1
    move v1, v2

    .line 973
    .local v1, "alignSecondRow":Z
    sget-object v2, Lcom/android/quickstep/views/TaskMenuViewWithArrow;->Companion:Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;

    invoke-virtual {v2, v0, v1}, Lcom/android/quickstep/views/TaskMenuViewWithArrow$Companion;->showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;Z)Z

    move-result v2

    return v2

    .line 975
    .end local v1    # "alignSecondRow":Z
    :cond_2
    invoke-static {v0}, Lcom/android/quickstep/views/TaskMenuView;->showForTask(Lcom/android/quickstep/views/TaskView$TaskIdAttributeContainer;)Z

    move-result v1

    return v1
.end method

.method updateCurrentFullscreenParams(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V
    .locals 8
    .param p1, "previewPositionHelper"    # Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    .line 1531
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1532
    return-void

    .line 1534
    :cond_0
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    iget v2, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getScaleX()F

    move-result v3

    .line 1535
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getScaleX()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getWidth()I

    move-result v5

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v6

    .line 1534
    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;->setProgress(FFFILcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    .line 1536
    return-void
.end method

.method protected updateSnapshotRadius()V
    .locals 2

    .line 1526
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getPreviewPositionHelper()Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->updateCurrentFullscreenParams(Lcom/android/quickstep/views/TaskThumbnailView$PreviewPositionHelper;)V

    .line 1527
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mCurrentFullscreenParams:Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/TaskThumbnailView;->setFullscreenParams(Lcom/android/quickstep/views/TaskView$FullscreenDrawParams;)V

    .line 1528
    return-void
.end method

.method updateTaskSize()V
    .locals 14

    .line 1543
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1548
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 1549
    .local v1, "deviceProfile":Lcom/android/launcher3/DeviceProfile;
    iget-boolean v2, v1, Lcom/android/launcher3/DeviceProfile;->isTablet:Z

    if-eqz v2, :cond_1

    .line 1550
    iget v2, v1, Lcom/android/launcher3/DeviceProfile;->overviewTaskThumbnailTopMarginPx:I

    .line 1551
    .local v2, "thumbnailPadding":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v3

    .line 1552
    .local v3, "lastComputedTaskSize":Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1553
    .local v4, "taskWidth":I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1557
    .local v5, "taskHeight":I
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->isFocusedTask()Z

    move-result v6

    .line 1558
    .local v6, "isFocusedTask":Z
    if-eqz v6, :cond_0

    .line 1561
    move v7, v4

    .line 1562
    .local v7, "boxWidth":I
    move v8, v5

    .local v8, "boxHeight":I
    goto :goto_0

    .line 1565
    .end local v7    # "boxWidth":I
    .end local v8    # "boxHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/quickstep/views/RecentsView;->getLastComputedGridTaskSize()Landroid/graphics/Rect;

    move-result-object v7

    .line 1566
    .local v7, "lastComputedGridTaskSize":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 1567
    .local v8, "boxWidth":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    move v7, v8

    move v8, v9

    .line 1571
    .local v7, "boxWidth":I
    .local v8, "boxHeight":I
    :goto_0
    move v9, v7

    .line 1572
    .local v9, "expectedWidth":I
    add-int v10, v8, v2

    .line 1575
    .local v10, "expectedHeight":I
    int-to-float v11, v4

    int-to-float v12, v7

    div-float/2addr v11, v12

    .line 1578
    .local v11, "nonGridScale":F
    sub-int v12, v10, v2

    sub-int/2addr v12, v5

    int-to-float v12, v12

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v12, v13

    .line 1579
    .end local v2    # "thumbnailPadding":I
    .end local v3    # "lastComputedTaskSize":Landroid/graphics/Rect;
    .end local v4    # "taskWidth":I
    .end local v5    # "taskHeight":I
    .end local v6    # "isFocusedTask":Z
    .end local v7    # "boxWidth":I
    .end local v8    # "boxHeight":I
    .local v12, "boxTranslationY":F
    goto :goto_1

    .line 1580
    .end local v9    # "expectedWidth":I
    .end local v10    # "expectedHeight":I
    .end local v11    # "nonGridScale":F
    .end local v12    # "boxTranslationY":F
    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1581
    .restart local v11    # "nonGridScale":F
    const/4 v12, 0x0

    .line 1582
    .restart local v12    # "boxTranslationY":F
    const/4 v9, -0x1

    .line 1583
    .restart local v9    # "expectedWidth":I
    const/4 v10, -0x1

    .line 1586
    .restart local v10    # "expectedHeight":I
    :goto_1
    invoke-direct {p0, v11}, Lcom/android/quickstep/views/TaskView;->setNonGridScale(F)V

    .line 1587
    invoke-direct {p0, v12}, Lcom/android/quickstep/views/TaskView;->setBoxTranslationY(F)V

    .line 1588
    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v2, v9, :cond_2

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v2, v10, :cond_3

    .line 1589
    :cond_2
    iput v9, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1590
    iput v10, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1591
    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/TaskView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1593
    :cond_3
    return-void
.end method
