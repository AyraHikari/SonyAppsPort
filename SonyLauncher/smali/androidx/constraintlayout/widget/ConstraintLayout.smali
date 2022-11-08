.class public Landroidx/constraintlayout/widget/ConstraintLayout;
.super Landroid/view/ViewGroup;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;,
        Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_DRAW_CONSTRAINTS:Z = false

.field public static final DESIGN_INFO_ID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ConstraintLayout"

.field private static final USE_CONSTRAINTS_HELPER:Z = true

.field public static final VERSION:Ljava/lang/String; = "ConstraintLayout-2.0-beta6"


# instance fields
.field mChildrenByIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mConstraintHelpers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/ConstraintHelper;",
            ">;"
        }
    .end annotation
.end field

.field protected mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

.field private mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field private mConstraintSetId:I

.field private mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

.field private mDesignIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mDirtyHierarchy:Z

.field private mLastMeasureHeight:I

.field mLastMeasureHeightMode:I

.field mLastMeasureHeightSize:I

.field private mLastMeasureWidth:I

.field mLastMeasureWidthMode:I

.field mLastMeasureWidthSize:I

.field protected mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

.field private mMetrics:Landroidx/constraintlayout/solver/Metrics;

.field private mMinHeight:I

.field private mMinWidth:I

.field private mOnMeasureHeightMeasureSpec:I

.field private mOnMeasureWidthMeasureSpec:I

.field private mOptimizationLevel:I

.field private mTempMapIdToWidget:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 559
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 490
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 495
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 498
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 499
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 500
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 502
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 503
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 504
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 505
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 507
    const/4 v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 509
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 512
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 513
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 514
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 515
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 518
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 808
    new-instance v2, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v2, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1422
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1423
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 560
    invoke-direct {p0, v1, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 561
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 564
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 490
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 495
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 498
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 499
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 500
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 502
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 503
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 504
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 505
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 507
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 509
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 512
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 513
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 514
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 515
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 518
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 808
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1422
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1423
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 565
    invoke-direct {p0, p2, v0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 566
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 569
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 490
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 495
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 498
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 499
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 500
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 502
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 503
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 504
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 505
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 507
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 509
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 512
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 513
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 514
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 515
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 518
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 808
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1422
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1423
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 570
    invoke-direct {p0, p2, p3, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 571
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 575
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 490
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    .line 495
    new-instance v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 498
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 499
    const v1, 0x7fffffff

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 500
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 502
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 503
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 504
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 505
    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 507
    const/4 v1, -0x1

    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    .line 509
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 512
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 513
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 514
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 515
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 516
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 517
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 518
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    .line 808
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-direct {v1, p0, p0}, Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    .line 1422
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1423
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 576
    invoke-direct {p0, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;->init(Landroid/util/AttributeSet;II)V

    .line 577
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 479
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 479
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    return v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/widget/ConstraintLayout;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 479
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    return v0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/widget/ConstraintLayout;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 479
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private getPaddingWidth()I
    .locals 4

    .line 1566
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 1567
    .local v0, "widthPadding":I
    const/4 v1, 0x0

    .line 1569
    .local v1, "rtlPadding":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    .line 1570
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v2

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v3

    add-int v1, v2, v3

    .line 1572
    :cond_0
    if-lez v1, :cond_1

    .line 1573
    move v0, v1

    .line 1575
    :cond_1
    return v0
.end method

.method private final getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 2
    .param p1, "id"    # I

    .line 1384
    if-nez p1, :cond_0

    .line 1385
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1387
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1388
    .local v0, "view":Landroid/view/View;
    if-nez v0, :cond_1

    .line 1389
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1390
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne v1, p0, :cond_1

    .line 1391
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 1394
    :cond_1
    if-ne v0, p0, :cond_2

    .line 1395
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v1

    .line 1397
    :cond_2
    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v1
.end method

.method private init(Landroid/util/AttributeSet;II)V
    .locals 8
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "defStyleAttr"    # I
    .param p3, "defStyleRes"    # I

    .line 811
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setCompanionWidget(Ljava/lang/Object;)V

    .line 812
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMeasurer:Landroidx/constraintlayout/widget/ConstraintLayout$Measurer;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMeasurer(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 813
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 814
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 815
    if-eqz p1, :cond_8

    .line 816
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 817
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    .line 818
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 819
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    .line 820
    .local v4, "attr":I
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minWidth:I

    if-ne v4, v5, :cond_0

    .line 821
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    goto :goto_3

    .line 822
    :cond_0
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_minHeight:I

    if-ne v4, v5, :cond_1

    .line 823
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    goto :goto_3

    .line 824
    :cond_1
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxWidth:I

    if-ne v4, v5, :cond_2

    .line 825
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    goto :goto_3

    .line 826
    :cond_2
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_maxHeight:I

    if-ne v4, v5, :cond_3

    .line 827
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    goto :goto_3

    .line 828
    :cond_3
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layout_optimizationLevel:I

    if-ne v4, v5, :cond_4

    .line 829
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    goto :goto_3

    .line 830
    :cond_4
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_layoutDescription:I

    const/4 v6, 0x0

    if-ne v4, v5, :cond_5

    .line 831
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 832
    .local v5, "id":I
    if-eqz v5, :cond_6

    .line 834
    :try_start_0
    invoke-virtual {p0, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->parseLayoutDescription(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    goto :goto_2

    .line 835
    :catch_0
    move-exception v6

    .line 836
    .local v6, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    goto :goto_2

    .line 839
    .end local v5    # "id":I
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_constraintSet:I

    if-ne v4, v5, :cond_6

    .line 840
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 842
    .restart local v5    # "id":I
    :try_start_1
    new-instance v6, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v6}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    iput-object v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 843
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->load(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 846
    goto :goto_1

    .line 844
    :catch_1
    move-exception v6

    .line 845
    .restart local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 847
    .end local v6    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_1
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    goto :goto_3

    .line 839
    .end local v5    # "id":I
    :cond_6
    :goto_2
    nop

    .line 818
    .end local v4    # "attr":I
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 850
    .end local v3    # "i":I
    :cond_7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 852
    .end local v1    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "N":I
    :cond_8
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 853
    return-void
.end method

.method private markHierarchyDirty()V
    .locals 1

    .line 3089
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 3091
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 3092
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 3093
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthSize:I

    .line 3094
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightSize:I

    .line 3095
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidthMode:I

    .line 3096
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeightMode:I

    .line 3097
    return-void
.end method

.method private setChildrenConstraints()V
    .locals 13

    .line 1042
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v6

    .line 1044
    .local v6, "isInEditMode":Z
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v7

    .line 1047
    .local v7, "count":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_1

    .line 1048
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1049
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 1050
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v2, :cond_0

    .line 1051
    goto :goto_1

    .line 1053
    :cond_0
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->reset()V

    .line 1047
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz v6, :cond_3

    .line 1060
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v7, :cond_3

    .line 1061
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1063
    .local v3, "view":Landroid/view/View;
    :try_start_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v4

    .line 1064
    .local v4, "IdAsString":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v0, v4, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 1065
    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 1066
    .local v5, "slashIndex":I
    if-eq v5, v1, :cond_2

    .line 1067
    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v4, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1069
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v8

    invoke-direct {p0, v8}, Landroidx/constraintlayout/widget/ConstraintLayout;->getTargetWidget(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDebugName(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1072
    .end local v4    # "IdAsString":Ljava/lang/String;
    .end local v5    # "slashIndex":I
    goto :goto_3

    .line 1070
    :catch_0
    move-exception v4

    .line 1060
    .end local v3    # "view":Landroid/view/View;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1092
    .end local v2    # "i":I
    :cond_3
    iget v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-eq v2, v1, :cond_5

    .line 1093
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v7, :cond_5

    .line 1094
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1095
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSetId:I

    if-ne v3, v4, :cond_4

    instance-of v3, v2, Landroidx/constraintlayout/widget/Constraints;

    if-eqz v3, :cond_4

    .line 1096
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Constraints;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Constraints;->getConstraintSet()Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 1093
    .end local v2    # "child":Landroid/view/View;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1101
    .end local v1    # "i":I
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v1, :cond_6

    .line 1102
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->applyToInternal(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    .line 1105
    :cond_6
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->removeAllChildren()V

    .line 1107
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1108
    .local v8, "helperCount":I
    if-lez v8, :cond_7

    .line 1109
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_5
    if-ge v1, v8, :cond_7

    .line 1110
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1111
    .local v2, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v2, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1109
    .end local v2    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1116
    .end local v1    # "i":I
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    if-ge v1, v7, :cond_9

    .line 1117
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1118
    .local v2, "child":Landroid/view/View;
    instance-of v3, v2, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v3, :cond_8

    .line 1119
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Placeholder;

    invoke-virtual {v3, p0}, Landroidx/constraintlayout/widget/Placeholder;->updatePreLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1116
    .end local v2    # "child":Landroid/view/View;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1123
    .end local v1    # "i":I
    :cond_9
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 1124
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1125
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1126
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_7
    if-ge v0, v7, :cond_a

    .line 1127
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1128
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    .line 1129
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1126
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1132
    .end local v0    # "i":I
    :cond_a
    const/4 v0, 0x0

    move v9, v0

    .local v9, "i":I
    :goto_8
    if-ge v9, v7, :cond_c

    .line 1133
    invoke-virtual {p0, v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1134
    .local v10, "child":Landroid/view/View;
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v11

    .line 1135
    .local v11, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez v11, :cond_b

    .line 1136
    goto :goto_9

    .line 1138
    :cond_b
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1139
    .local v12, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 1140
    iget-object v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mTempMapIdToWidget:Landroid/util/SparseArray;

    move-object v0, p0

    move v1, v6

    move-object v2, v10

    move-object v3, v11

    move-object v4, v12

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V

    .line 1132
    .end local v10    # "child":Landroid/view/View;
    .end local v11    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v12    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 1142
    .end local v9    # "i":I
    :cond_c
    return-void
.end method

.method private updateHierarchy()Z
    .locals 5

    .line 1025
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1027
    .local v0, "count":I
    const/4 v1, 0x0

    .line 1028
    .local v1, "recompute":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1029
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1030
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->isLayoutRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1031
    const/4 v1, 0x1

    .line 1032
    goto :goto_1

    .line 1028
    .end local v3    # "child":Landroid/view/View;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1035
    .end local v2    # "i":I
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 1036
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setChildrenConstraints()V

    .line 1038
    :cond_2
    return v1
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 869
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 870
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 871
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewAdded(Landroid/view/View;)V

    .line 873
    :cond_0
    return-void
.end method

.method protected applyConstraintsFromLayoutParams(ZLandroid/view/View;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;Landroid/util/SparseArray;)V
    .locals 21
    .param p1, "isInEditMode"    # Z
    .param p2, "child"    # Landroid/view/View;
    .param p3, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p4, "layoutParams"    # Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 1150
    .local p5, "idToWidget":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    invoke-virtual/range {p4 .. p4}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    .line 1151
    const/4 v11, 0x0

    iput-boolean v11, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->helped:Z

    .line 1153
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1154
    iget-boolean v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    const/4 v12, 0x1

    if-eqz v2, :cond_0

    .line 1155
    invoke-virtual {v8, v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setInPlaceholder(Z)V

    .line 1156
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVisibility(I)V

    .line 1158
    :cond_0
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setCompanionWidget(Ljava/lang/Object;)V

    .line 1160
    instance-of v2, v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v2, :cond_1

    .line 1161
    move-object v2, v1

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1162
    .local v2, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v3

    invoke-virtual {v2, v8, v3}, Landroidx/constraintlayout/widget/ConstraintHelper;->resolveRtl(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)V

    .line 1164
    .end local v2    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    :cond_1
    iget-boolean v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    const/16 v3, 0x11

    const/4 v13, -0x1

    if-eqz v2, :cond_6

    .line 1165
    move-object v2, v8

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 1166
    .local v2, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideBegin:I

    .line 1167
    .local v4, "resolvedGuideBegin":I
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuideEnd:I

    .line 1168
    .local v5, "resolvedGuideEnd":I
    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedGuidePercent:F

    .line 1169
    .local v6, "resolvedGuidePercent":F
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v7, v3, :cond_2

    .line 1170
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    .line 1171
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    .line 1172
    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    .line 1174
    :cond_2
    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, v6, v3

    if-eqz v3, :cond_3

    .line 1175
    invoke-virtual {v2, v6}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuidePercent(F)V

    goto :goto_0

    .line 1176
    :cond_3
    if-eq v4, v13, :cond_4

    .line 1177
    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideBegin(I)V

    goto :goto_0

    .line 1178
    :cond_4
    if-eq v5, v13, :cond_5

    .line 1179
    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/Guideline;->setGuideEnd(I)V

    .line 1181
    .end local v2    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    .end local v4    # "resolvedGuideBegin":I
    .end local v5    # "resolvedGuideEnd":I
    .end local v6    # "resolvedGuidePercent":F
    :cond_5
    :goto_0
    goto/16 :goto_10

    .line 1183
    :cond_6
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToLeft:I

    .line 1184
    .local v2, "resolvedLeftToLeft":I
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedLeftToRight:I

    .line 1185
    .local v4, "resolvedLeftToRight":I
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToLeft:I

    .line 1186
    .local v5, "resolvedRightToLeft":I
    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedRightToRight:I

    .line 1187
    .local v6, "resolvedRightToRight":I
    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneLeftMargin:I

    .line 1188
    .local v7, "resolveGoneLeftMargin":I
    iget v14, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolveGoneRightMargin:I

    .line 1189
    .local v14, "resolveGoneRightMargin":I
    iget v15, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->resolvedHorizontalBias:F

    .line 1191
    .local v15, "resolvedHorizontalBias":F
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v11, v3, :cond_b

    .line 1194
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    .line 1195
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    .line 1196
    .end local v4    # "resolvedLeftToRight":I
    .local v3, "resolvedLeftToRight":I
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    .line 1197
    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    .line 1198
    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneLeftMargin:I

    .line 1199
    iget v14, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneRightMargin:I

    .line 1200
    iget v15, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    .line 1202
    if-ne v2, v13, :cond_8

    if-ne v3, v13, :cond_8

    .line 1203
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    if-eq v4, v13, :cond_7

    .line 1204
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    move v4, v3

    goto :goto_1

    .line 1205
    :cond_7
    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    if-eq v4, v13, :cond_8

    .line 1206
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    move v4, v3

    goto :goto_1

    .line 1209
    :cond_8
    move v4, v3

    .end local v3    # "resolvedLeftToRight":I
    .restart local v4    # "resolvedLeftToRight":I
    :goto_1
    if-ne v5, v13, :cond_a

    if-ne v6, v13, :cond_a

    .line 1210
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    if-eq v3, v13, :cond_9

    .line 1211
    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v14

    move v14, v4

    move v7, v6

    move v6, v15

    move v15, v5

    goto :goto_2

    .line 1212
    :cond_9
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    if-eq v3, v13, :cond_a

    .line 1213
    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v14

    move v14, v4

    move v7, v6

    move v6, v15

    move v15, v5

    goto :goto_2

    .line 1219
    :cond_a
    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v14

    move v14, v4

    move v7, v6

    move v6, v15

    move v15, v5

    goto :goto_2

    .line 1191
    :cond_b
    move v11, v2

    move/from16 v16, v7

    move/from16 v17, v14

    move v14, v4

    move v7, v6

    move v6, v15

    move v15, v5

    .line 1219
    .end local v2    # "resolvedLeftToLeft":I
    .end local v4    # "resolvedLeftToRight":I
    .end local v5    # "resolvedRightToLeft":I
    .local v6, "resolvedHorizontalBias":F
    .local v7, "resolvedRightToRight":I
    .local v11, "resolvedLeftToLeft":I
    .local v14, "resolvedLeftToRight":I
    .local v15, "resolvedRightToLeft":I
    .local v16, "resolveGoneLeftMargin":I
    .local v17, "resolveGoneRightMargin":I
    :goto_2
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    if-eq v2, v13, :cond_d

    .line 1220
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1221
    .local v2, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v2, :cond_c

    .line 1222
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    invoke-virtual {v8, v2, v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connectCircularConstraint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V

    .line 1224
    .end local v2    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_c
    move v2, v6

    move v12, v7

    goto/16 :goto_b

    .line 1226
    :cond_d
    if-eq v11, v13, :cond_f

    .line 1227
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1228
    .local v18, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_e

    .line 1229
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object/from16 v2, p3

    move/from16 v19, v4

    move-object/from16 v4, v18

    move/from16 v20, v6

    .end local v6    # "resolvedHorizontalBias":F
    .local v20, "resolvedHorizontalBias":F
    move/from16 v6, v19

    move v12, v7

    .end local v7    # "resolvedRightToRight":I
    .local v12, "resolvedRightToRight":I
    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_3

    .line 1228
    .end local v12    # "resolvedRightToRight":I
    .end local v20    # "resolvedHorizontalBias":F
    .restart local v6    # "resolvedHorizontalBias":F
    .restart local v7    # "resolvedRightToRight":I
    :cond_e
    move/from16 v20, v6

    move v12, v7

    .end local v6    # "resolvedHorizontalBias":F
    .end local v7    # "resolvedRightToRight":I
    .restart local v12    # "resolvedRightToRight":I
    .restart local v20    # "resolvedHorizontalBias":F
    goto :goto_3

    .line 1233
    .end local v12    # "resolvedRightToRight":I
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v20    # "resolvedHorizontalBias":F
    .restart local v6    # "resolvedHorizontalBias":F
    .restart local v7    # "resolvedRightToRight":I
    :cond_f
    move/from16 v20, v6

    move v12, v7

    .end local v6    # "resolvedHorizontalBias":F
    .end local v7    # "resolvedRightToRight":I
    .restart local v12    # "resolvedRightToRight":I
    .restart local v20    # "resolvedHorizontalBias":F
    if-eq v14, v13, :cond_10

    .line 1234
    invoke-virtual {v10, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1235
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_11

    .line 1236
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move/from16 v7, v16

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_4

    .line 1233
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_10
    :goto_3
    nop

    .line 1243
    :cond_11
    :goto_4
    if-eq v15, v13, :cond_12

    .line 1244
    invoke-virtual {v10, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1245
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_13

    .line 1246
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_5

    .line 1250
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_12
    if-eq v12, v13, :cond_13

    .line 1251
    invoke-virtual {v10, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1252
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_14

    .line 1253
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    move/from16 v7, v17

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_6

    .line 1250
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_13
    :goto_5
    nop

    .line 1260
    :cond_14
    :goto_6
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    if-eq v2, v13, :cond_15

    .line 1261
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1262
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_16

    .line 1263
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_7

    .line 1267
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_15
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    if-eq v2, v13, :cond_16

    .line 1268
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1269
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_17

    .line 1270
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneTopMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_8

    .line 1267
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_16
    :goto_7
    nop

    .line 1277
    :cond_17
    :goto_8
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    if-eq v2, v13, :cond_18

    .line 1278
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1279
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_19

    .line 1280
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_9

    .line 1284
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_18
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    if-eq v2, v13, :cond_19

    .line 1285
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    invoke-virtual {v10, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1286
    .restart local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v18, :cond_1a

    .line 1287
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    iget v6, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iget v7, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneBottomMargin:I

    move-object/from16 v2, p3

    move-object/from16 v4, v18

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->immediateConnect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;II)V

    goto :goto_a

    .line 1284
    .end local v18    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_19
    :goto_9
    nop

    .line 1294
    :cond_1a
    :goto_a
    iget v2, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    if-eq v2, v13, :cond_1b

    .line 1295
    iget-object v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1296
    .local v2, "view":Landroid/view/View;
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    invoke-virtual {v10, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1297
    .local v3, "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-eqz v3, :cond_1b

    if-eqz v2, :cond_1b

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    instance-of v4, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v4, :cond_1b

    .line 1298
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1299
    .local v4, "targetParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    const/4 v5, 0x1

    iput-boolean v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1300
    iput-boolean v5, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->needsBaseline:Z

    .line 1301
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    .line 1302
    .local v6, "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    sget-object v7, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BASELINE:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 1303
    invoke-virtual {v3, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v7

    .line 1304
    .local v7, "targetBaseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    const/4 v0, 0x0

    invoke-virtual {v6, v7, v0, v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIZ)Z

    .line 1305
    invoke-virtual {v8, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 1306
    iget-object v0, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 1307
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1308
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->reset()V

    .line 1312
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "target":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "targetParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v6    # "baseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    .end local v7    # "targetBaseline":Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;
    :cond_1b
    const/4 v0, 0x0

    move/from16 v2, v20

    .end local v20    # "resolvedHorizontalBias":F
    .local v2, "resolvedHorizontalBias":F
    cmpl-float v3, v2, v0

    if-ltz v3, :cond_1c

    .line 1313
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    .line 1315
    :cond_1c
    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_1d

    .line 1316
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    .line 1320
    :cond_1d
    :goto_b
    if-eqz p1, :cond_1f

    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    if-ne v0, v13, :cond_1e

    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    if-eq v0, v13, :cond_1f

    .line 1322
    :cond_1e
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    invoke-virtual {v8, v0, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setOrigin(II)V

    .line 1326
    :cond_1f
    iget-boolean v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalDimensionFixed:Z

    const/4 v3, -0x2

    if-nez v0, :cond_22

    .line 1327
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v13, :cond_21

    .line 1328
    iget-boolean v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    if-eqz v0, :cond_20

    .line 1329
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_c

    .line 1331
    :cond_20
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1333
    :goto_c
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftMargin:I

    iput v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1334
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightMargin:I

    iput v4, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_d

    .line 1336
    :cond_21
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1337
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    goto :goto_d

    .line 1340
    :cond_22
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1341
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 1342
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->width:I

    if-ne v0, v3, :cond_23

    .line 1343
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1346
    :cond_23
    :goto_d
    iget-boolean v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalDimensionFixed:Z

    if-nez v0, :cond_26

    .line 1347
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v13, :cond_25

    .line 1348
    iget-boolean v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    if-eqz v0, :cond_24

    .line 1349
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    goto :goto_e

    .line 1351
    :cond_24
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1353
    :goto_e
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    .line 1354
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v0

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomMargin:I

    iput v3, v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->mMargin:I

    goto :goto_f

    .line 1356
    :cond_25
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1357
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    goto :goto_f

    .line 1360
    :cond_26
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1361
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 1362
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->height:I

    if-ne v0, v3, :cond_27

    .line 1363
    sget-object v0, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1367
    :cond_27
    :goto_f
    iget-object v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 1368
    iget-object v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setDimensionRatio(Ljava/lang/String;)V

    .line 1370
    :cond_28
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalWeight(F)V

    .line 1371
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalWeight(F)V

    .line 1372
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1373
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    invoke-virtual {v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1374
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    invoke-virtual {v8, v0, v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalMatchStyle(IIIF)V

    .line 1377
    iget v0, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v3, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v4, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v5, v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    invoke-virtual {v8, v0, v3, v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalMatchStyle(IIIF)V

    .line 1381
    .end local v2    # "resolvedHorizontalBias":F
    .end local v11    # "resolvedLeftToLeft":I
    .end local v12    # "resolvedRightToRight":I
    .end local v14    # "resolvedLeftToRight":I
    .end local v15    # "resolvedRightToLeft":I
    .end local v16    # "resolveGoneLeftMargin":I
    .end local v17    # "resolveGoneRightMargin":I
    :goto_10
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1780
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1806
    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1807
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1808
    .local v1, "helperCount":I
    if-lez v1, :cond_0

    .line 1809
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1810
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1811
    .local v3, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePreDraw(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1809
    .end local v3    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1815
    .end local v1    # "helperCount":I
    .end local v2    # "i":I
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1816
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1817
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1818
    .local v1, "count":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 1819
    .local v2, "cw":F
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    .line 1820
    .local v3, "ch":F
    const/high16 v4, 0x44870000    # 1080.0f

    .line 1821
    .local v4, "ow":F
    const/high16 v5, 0x44f00000    # 1920.0f

    .line 1822
    .local v5, "oh":F
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_4

    .line 1823
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1824
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    .line 1825
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    goto/16 :goto_2

    .line 1827
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    .line 1828
    .local v8, "tag":Ljava/lang/Object;
    if-eqz v8, :cond_3

    instance-of v9, v8, Ljava/lang/String;

    if-eqz v9, :cond_3

    .line 1829
    move-object v9, v8

    check-cast v9, Ljava/lang/String;

    .line 1830
    .local v9, "coordinates":Ljava/lang/String;
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 1831
    .local v10, "split":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    .line 1832
    const/4 v11, 0x0

    aget-object v11, v10, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1833
    .local v11, "x":I
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1834
    .local v12, "y":I
    const/4 v13, 0x2

    aget-object v13, v10, v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 1835
    .local v13, "w":I
    const/4 v14, 0x3

    aget-object v14, v10, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 1836
    .local v14, "h":I
    int-to-float v15, v11

    div-float/2addr v15, v4

    mul-float/2addr v15, v2

    float-to-int v11, v15

    .line 1837
    int-to-float v15, v12

    div-float/2addr v15, v5

    mul-float/2addr v15, v3

    float-to-int v12, v15

    .line 1838
    int-to-float v15, v13

    div-float/2addr v15, v4

    mul-float/2addr v15, v2

    float-to-int v13, v15

    .line 1839
    int-to-float v15, v14

    div-float/2addr v15, v5

    mul-float/2addr v15, v3

    float-to-int v14, v15

    .line 1840
    new-instance v15, Landroid/graphics/Paint;

    invoke-direct {v15}, Landroid/graphics/Paint;-><init>()V

    .line 1841
    .local v15, "paint":Landroid/graphics/Paint;
    const/high16 v0, -0x10000

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1842
    int-to-float v0, v11

    move/from16 v22, v1

    .end local v1    # "count":I
    .local v22, "count":I
    int-to-float v1, v12

    move/from16 v23, v2

    .end local v2    # "cw":F
    .local v23, "cw":F
    add-int v2, v11, v13

    int-to-float v2, v2

    move/from16 v24, v3

    .end local v3    # "ch":F
    .local v24, "ch":F
    int-to-float v3, v12

    move-object/from16 v16, p1

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v21, v15

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1843
    add-int v0, v11, v13

    int-to-float v0, v0

    int-to-float v1, v12

    add-int v2, v11, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1844
    add-int v0, v11, v13

    int-to-float v0, v0

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v11

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1845
    int-to-float v0, v11

    add-int v1, v12, v14

    int-to-float v1, v1

    int-to-float v2, v11

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1846
    const v0, -0xff0100

    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1847
    int-to-float v0, v11

    int-to-float v1, v12

    add-int v2, v11, v13

    int-to-float v2, v2

    add-int v3, v12, v14

    int-to-float v3, v3

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1848
    int-to-float v0, v11

    add-int v1, v12, v14

    int-to-float v1, v1

    add-int v2, v11, v13

    int-to-float v2, v2

    int-to-float v3, v12

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1831
    .end local v11    # "x":I
    .end local v12    # "y":I
    .end local v13    # "w":I
    .end local v14    # "h":I
    .end local v15    # "paint":Landroid/graphics/Paint;
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_2
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    goto :goto_2

    .line 1828
    .end local v9    # "coordinates":Ljava/lang/String;
    .end local v10    # "split":[Ljava/lang/String;
    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_3
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .line 1822
    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .end local v7    # "child":Landroid/view/View;
    .end local v8    # "tag":Ljava/lang/Object;
    .restart local v22    # "count":I
    .restart local v23    # "cw":F
    .restart local v24    # "ch":F
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    goto/16 :goto_1

    .end local v22    # "count":I
    .end local v23    # "cw":F
    .end local v24    # "ch":F
    .restart local v1    # "count":I
    .restart local v2    # "cw":F
    .restart local v3    # "ch":F
    :cond_4
    move/from16 v22, v1

    move/from16 v23, v2

    move/from16 v24, v3

    .line 1895
    .end local v1    # "count":I
    .end local v2    # "cw":F
    .end local v3    # "ch":F
    .end local v4    # "ow":F
    .end local v5    # "oh":F
    .end local v6    # "i":I
    :cond_5
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 1
    .param p1, "metrics"    # Landroidx/constraintlayout/solver/Metrics;

    .line 1418
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMetrics:Landroidx/constraintlayout/solver/Metrics;

    .line 1419
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V

    .line 1420
    return-void
.end method

.method public forceLayout()V
    .locals 0

    .line 3084
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    .line 3085
    invoke-super {p0}, Landroid/view/ViewGroup;->forceLayout()V

    .line 3086
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 479
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2

    .line 1764
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 479
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1772
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1756
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 549
    if-nez p1, :cond_0

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 550
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 551
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 555
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 1021
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1011
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .line 974
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    return v0
.end method

.method public getMinWidth()I
    .locals 1

    .line 964
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    return v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 1748
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v0

    return v0
.end method

.method public getViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 1798
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public final getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 1407
    if-ne p1, p0, :cond_0

    .line 1408
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    return-object v0

    .line 1410
    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_0
    return-object v0
.end method

.method protected isRtl()Z
    .locals 4

    .line 1554
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_2

    .line 1555
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1556
    .local v0, "isRtlSupported":Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getLayoutDirection()I

    move-result v3

    if-ne v2, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 1558
    .end local v0    # "isRtlSupported":Z
    :cond_2
    return v1
.end method

.method public loadLayoutDescription(I)V
    .locals 3
    .param p1, "layoutDescription"    # I

    .line 1910
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1912
    :try_start_0
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1913
    :catch_0
    move-exception v1

    .line 1914
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 1915
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    :goto_0
    goto :goto_1

    .line 1917
    :cond_0
    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 1919
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .line 1671
    move-object v0, p0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v1

    .line 1672
    .local v1, "widgetsCount":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isInEditMode()Z

    move-result v2

    .line 1673
    .local v2, "isInEditMode":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_3

    .line 1674
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1675
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1676
    .local v5, "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iget-object v6, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1678
    .local v6, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    if-nez v7, :cond_0

    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isVirtualGroup:Z

    if-nez v7, :cond_0

    if-nez v2, :cond_0

    .line 1681
    goto :goto_1

    .line 1683
    :cond_0
    iget-boolean v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isInPlaceholder:Z

    if-eqz v7, :cond_1

    .line 1684
    goto :goto_1

    .line 1686
    :cond_1
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v7

    .line 1687
    .local v7, "l":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v8

    .line 1688
    .local v8, "t":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    add-int/2addr v9, v7

    .line 1689
    .local v9, "r":I
    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    add-int/2addr v10, v8

    .line 1695
    .local v10, "b":I
    invoke-virtual {v4, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1696
    instance-of v11, v4, Landroidx/constraintlayout/widget/Placeholder;

    if-eqz v11, :cond_2

    .line 1697
    move-object v11, v4

    check-cast v11, Landroidx/constraintlayout/widget/Placeholder;

    .line 1698
    .local v11, "holder":Landroidx/constraintlayout/widget/Placeholder;
    invoke-virtual {v11}, Landroidx/constraintlayout/widget/Placeholder;->getContent()Landroid/view/View;

    move-result-object v12

    .line 1699
    .local v12, "content":Landroid/view/View;
    if-eqz v12, :cond_2

    .line 1700
    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    invoke-virtual {v12, v7, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    .line 1673
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "params":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    .end local v6    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v7    # "l":I
    .end local v8    # "t":I
    .end local v9    # "r":I
    .end local v10    # "b":I
    .end local v11    # "holder":Landroidx/constraintlayout/widget/Placeholder;
    .end local v12    # "content":Landroid/view/View;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1705
    .end local v3    # "i":I
    :cond_3
    iget-object v3, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1706
    .local v3, "helperCount":I
    if-lez v3, :cond_4

    .line 1707
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    if-ge v4, v3, :cond_4

    .line 1708
    iget-object v5, v0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 1709
    .local v5, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v5, p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->updatePostLayout(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1707
    .end local v5    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1712
    .end local v4    # "i":I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1518
    const-wide/16 v0, 0x0

    .line 1523
    .local v0, "time":J
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureWidthMeasureSpec:I

    .line 1524
    iput p2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOnMeasureHeightMeasureSpec:I

    .line 1531
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setRtl(Z)V

    .line 1533
    iget-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    if-eqz v2, :cond_0

    .line 1534
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 1535
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->updateHierarchy()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1536
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateHierarchy()V

    .line 1540
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    iget v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    invoke-virtual {p0, v2, v3, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V

    .line 1541
    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v6

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v7

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 1542
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isWidthMeasuredTooSmall()Z

    move-result v8

    iget-object v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isHeightMeasuredTooSmall()Z

    move-result v9

    .line 1541
    move-object v3, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveMeasuredDimension(IIIIZZ)V

    .line 1551
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 891
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 892
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 894
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 895
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v1, p1, Landroidx/constraintlayout/widget/Guideline;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 896
    instance-of v1, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v1, :cond_1

    .line 897
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 898
    .local v1, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    new-instance v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v3}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 899
    iput-boolean v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isGuideline:Z

    .line 900
    iget-object v3, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    .line 903
    .end local v1    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_1
    instance-of v1, p1, Landroidx/constraintlayout/widget/ConstraintHelper;

    if-eqz v1, :cond_2

    .line 904
    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintHelper;

    .line 905
    .local v1, "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    invoke-virtual {v1}, Landroidx/constraintlayout/widget/ConstraintHelper;->validateParams()V

    .line 906
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 907
    .local v3, "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    iput-boolean v2, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->isHelper:Z

    .line 908
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 909
    iget-object v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 912
    .end local v1    # "helper":Landroidx/constraintlayout/widget/ConstraintHelper;
    .end local v3    # "layoutParams":Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 913
    iput-boolean v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 914
    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 921
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 922
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 924
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 925
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewWidget(Landroid/view/View;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    .line 926
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->remove(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 927
    iget-object v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintHelpers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 928
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDirtyHierarchy:Z

    .line 929
    return-void
.end method

.method protected parseLayoutDescription(I)V
    .locals 2
    .param p1, "id"    # I

    .line 861
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;-><init>(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;I)V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    .line 862
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 880
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 881
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 882
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->onViewRemoved(Landroid/view/View;)V

    .line 884
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 0

    .line 3078
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->markHierarchyDirty()V

    .line 3079
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3080
    return-void
.end method

.method protected resolveMeasuredDimension(IIIIZZ)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .param p3, "measuredWidth"    # I
    .param p4, "measuredHeight"    # I
    .param p5, "isWidthMeasuredTooSmall"    # Z
    .param p6, "isHeightMeasuredTooSmall"    # Z

    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, "childState":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 1484
    .local v1, "heightPadding":I
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v2

    .line 1486
    .local v2, "widthPadding":I
    add-int v3, p3, v2

    .line 1487
    .local v3, "androidLayoutWidth":I
    add-int v4, p4, v1

    .line 1489
    .local v4, "androidLayoutHeight":I
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    .line 1490
    invoke-static {v3, p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v5

    .line 1491
    .local v5, "resolvedWidthSize":I
    shl-int/lit8 v6, v0, 0x10

    invoke-static {v4, p2, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->resolveSizeAndState(III)I

    move-result v6

    .line 1493
    .local v6, "resolvedHeightSize":I
    const v7, 0xffffff

    and-int/2addr v5, v7

    .line 1494
    and-int/2addr v6, v7

    .line 1495
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1496
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1497
    const/high16 v7, 0x1000000

    if-eqz p5, :cond_0

    .line 1498
    or-int/2addr v5, v7

    .line 1500
    :cond_0
    if-eqz p6, :cond_1

    .line 1501
    or-int/2addr v6, v7

    .line 1503
    :cond_1
    invoke-virtual {p0, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1504
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 1505
    iput v6, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 1506
    .end local v5    # "resolvedWidthSize":I
    .end local v6    # "resolvedHeightSize":I
    goto :goto_0

    .line 1507
    :cond_2
    invoke-virtual {p0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setMeasuredDimension(II)V

    .line 1508
    iput v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    .line 1509
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    .line 1511
    :goto_0
    return-void
.end method

.method protected resolveSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;III)V
    .locals 25
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "widthMeasureSpec"    # I
    .param p4, "heightMeasureSpec"    # I

    .line 1435
    move-object/from16 v6, p0

    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v17

    .line 1436
    .local v17, "widthMode":I
    invoke-static/range {p3 .. p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1437
    .local v0, "widthSize":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1438
    .local v18, "heightMode":I
    invoke-static/range {p4 .. p4}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1440
    .local v1, "heightSize":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v19

    .line 1441
    .local v19, "paddingY":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v2

    add-int v20, v19, v2

    .line 1442
    .local v20, "paddingHeight":I
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v21

    .line 1445
    .local v21, "paddingWidth":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 1446
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingStart()I

    move-result v2

    .line 1447
    .local v2, "paddingStart":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingEnd()I

    move-result v3

    .line 1448
    .local v3, "paddingEnd":I
    if-gtz v2, :cond_1

    if-lez v3, :cond_0

    goto :goto_0

    .line 1455
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    .local v4, "paddingX":I
    goto :goto_1

    .line 1449
    .end local v4    # "paddingX":I
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->isRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1450
    move v4, v3

    .restart local v4    # "paddingX":I
    goto :goto_1

    .line 1452
    .end local v4    # "paddingX":I
    :cond_2
    move v4, v2

    .line 1457
    .end local v2    # "paddingStart":I
    .end local v3    # "paddingEnd":I
    .restart local v4    # "paddingX":I
    :goto_1
    move/from16 v22, v4

    goto :goto_2

    .line 1458
    .end local v4    # "paddingX":I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingLeft()I

    move-result v4

    move/from16 v22, v4

    .line 1461
    .local v22, "paddingX":I
    :goto_2
    sub-int v23, v0, v21

    .line 1462
    .end local v0    # "widthSize":I
    .local v23, "widthSize":I
    sub-int v24, v1, v20

    .line 1464
    .end local v1    # "heightSize":I
    .local v24, "heightSize":I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v23

    move/from16 v4, v18

    move/from16 v5, v24

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->setSelfDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIII)V

    .line 1465
    iget v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureWidth:I

    iget v14, v6, Landroidx/constraintlayout/widget/ConstraintLayout;->mLastMeasureHeight:I

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, v17

    move/from16 v10, v23

    move/from16 v11, v18

    move/from16 v12, v24

    move/from16 v15, v22

    move/from16 v16, v19

    invoke-virtual/range {v7 .. v16}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->measure(IIIIIIIII)V

    .line 1467
    return-void
.end method

.method public setConstraintSet(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0
    .param p1, "set"    # Landroidx/constraintlayout/widget/ConstraintSet;

    .line 1789
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    .line 1790
    return-void
.end method

.method public setDesignInformation(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "value1"    # Ljava/lang/Object;
    .param p3, "value2"    # Ljava/lang/Object;

    .line 531
    if-nez p1, :cond_2

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    instance-of v0, p3, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 532
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 533
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    .line 535
    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    .line 536
    .local v0, "name":Ljava/lang/String;
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 537
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 538
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 540
    :cond_1
    move-object v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 541
    .local v2, "id":I
    iget-object v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mDesignIds:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .end local v0    # "name":Ljava/lang/String;
    .end local v1    # "index":I
    .end local v2    # "id":I
    :cond_2
    return-void
.end method

.method public setId(I)V
    .locals 2
    .param p1, "id"    # I

    .line 584
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 585
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setId(I)V

    .line 586
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mChildrenByIds:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 587
    return-void
.end method

.method public setMaxHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 996
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    if-ne p1, v0, :cond_0

    .line 997
    return-void

    .line 999
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    .line 1000
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 1001
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 983
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    if-ne p1, v0, :cond_0

    .line 984
    return-void

    .line 986
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    .line 987
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 988
    return-void
.end method

.method public setMinHeight(I)V
    .locals 1
    .param p1, "value"    # I

    .line 950
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    if-ne p1, v0, :cond_0

    .line 951
    return-void

    .line 953
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    .line 954
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 955
    return-void
.end method

.method public setMinWidth(I)V
    .locals 1
    .param p1, "value"    # I

    .line 937
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    if-ne p1, v0, :cond_0

    .line 938
    return-void

    .line 940
    :cond_0
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    .line 941
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 942
    return-void
.end method

.method public setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V
    .locals 1
    .param p1, "constraintsChangedListener"    # Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 1898
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintsChangedListener:Landroidx/constraintlayout/widget/ConstraintsChangedListener;

    .line 1899
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1900
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->setOnConstraintsChanged(Landroidx/constraintlayout/widget/ConstraintsChangedListener;)V

    .line 1902
    :cond_0
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 1
    .param p1, "level"    # I

    .line 1737
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mOptimizationLevel:I

    .line 1738
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mLayoutWidget:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 1739
    return-void
.end method

.method protected setSelfDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIII)V
    .locals 9
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "widthMode"    # I
    .param p3, "widthSize"    # I
    .param p4, "heightMode"    # I
    .param p5, "heightSize"    # I

    .line 1580
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1581
    .local v0, "heightPadding":I
    invoke-direct {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getPaddingWidth()I

    move-result v1

    .line 1583
    .local v1, "widthPadding":I
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1584
    .local v2, "widthBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1586
    .local v3, "heightBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v4, 0x0

    .line 1587
    .local v4, "desiredWidth":I
    const/4 v5, 0x0

    .line 1588
    .local v5, "desiredHeight":I
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v6

    .line 1590
    .local v6, "childCount":I
    const/4 v7, 0x0

    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 1607
    :sswitch_0
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr v8, v1

    invoke-static {v8, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    .line 1600
    :sswitch_1
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1601
    if-nez v6, :cond_0

    .line 1602
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0

    .line 1592
    :sswitch_2
    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1593
    move v4, p3

    .line 1594
    if-nez v6, :cond_0

    .line 1595
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1610
    :cond_0
    :goto_0
    sparse-switch p4, :sswitch_data_1

    goto :goto_1

    .line 1627
    :sswitch_3
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr v8, v0

    invoke-static {v8, p5}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_1

    .line 1620
    :sswitch_4
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1621
    if-nez v6, :cond_1

    .line 1622
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_1

    .line 1612
    :sswitch_5
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 1613
    move v5, p5

    .line 1614
    if-nez v6, :cond_1

    .line 1615
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1631
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v8

    if-ne v4, v8, :cond_2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    if-eq v5, v8, :cond_3

    .line 1632
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateMeasures()V

    .line 1634
    :cond_3
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setX(I)V

    .line 1635
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setY(I)V

    .line 1636
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxWidth:I

    sub-int/2addr v8, v1

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMaxWidth(I)V

    .line 1637
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMaxHeight:I

    sub-int/2addr v8, v0

    invoke-virtual {p1, v8}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMaxHeight(I)V

    .line 1638
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1639
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1640
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1641
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 1642
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 1643
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 1644
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinWidth:I

    sub-int/2addr v7, v1

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 1645
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mMinHeight:I

    sub-int/2addr v7, v0

    invoke-virtual {p1, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 1646
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_2
        0x0 -> :sswitch_1
        0x40000000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x80000000 -> :sswitch_5
        0x0 -> :sswitch_4
        0x40000000 -> :sswitch_3
    .end sparse-switch
.end method

.method public setState(III)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "screenWidth"    # I
    .param p3, "screenHeight"    # I

    .line 1657
    iget-object v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->mConstraintLayoutSpec:Landroidx/constraintlayout/widget/ConstraintLayoutStates;

    if-eqz v0, :cond_0

    .line 1658
    int-to-float v1, p2

    int-to-float v2, p3

    invoke-virtual {v0, p1, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayoutStates;->updateConstraints(IFF)V

    .line 1660
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 3106
    const/4 v0, 0x0

    return v0
.end method
