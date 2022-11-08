.class public Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
.super Landroidx/constraintlayout/solver/widgets/WidgetContainer;
.source "ConstraintWidgetContainer.java"


# static fields
.field private static final DEBUG:Z = false

.field static final DEBUG_GRAPH:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final MAX_ITERATIONS:I = 0x8


# instance fields
.field mBasicMeasureSolver:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

.field mDebugSolverPassCount:I

.field public mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

.field public mGroupsWrapOptimized:Z

.field private mHeightMeasuredTooSmall:Z

.field mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

.field mHorizontalChainsSize:I

.field public mHorizontalWrapOptimized:Z

.field private mIsRtl:Z

.field protected mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

.field private mOptimizationLevel:I

.field mPaddingBottom:I

.field mPaddingLeft:I

.field mPaddingRight:I

.field mPaddingTop:I

.field public mSkipSolver:Z

.field protected mSystem:Landroidx/constraintlayout/solver/LinearSystem;

.field mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

.field mVerticalChainsSize:I

.field public mVerticalWrapOptimized:Z

.field private mWidthMeasuredTooSmall:Z

.field public mWrapFixedHeight:I

.field public mWrapFixedWidth:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 170
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;-><init>()V

    .line 42
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    .line 48
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 138
    new-instance v1, Landroidx/constraintlayout/solver/LinearSystem;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/LinearSystem;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    .line 145
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 146
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 148
    const/4 v1, 0x4

    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 149
    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 151
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 152
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 153
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 154
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 155
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 157
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 158
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 160
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 161
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 258
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 171
    return-void
.end method

.method public constructor <init>(II)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 192
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;-><init>(II)V

    .line 42
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    .line 48
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 138
    new-instance v1, Landroidx/constraintlayout/solver/LinearSystem;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/LinearSystem;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    .line 145
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 146
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 148
    const/4 v1, 0x4

    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 149
    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 151
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 152
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 153
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 154
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 155
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 157
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 158
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 160
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 161
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 258
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 193
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 182
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;-><init>(IIII)V

    .line 42
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    .line 48
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-direct {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 132
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 138
    new-instance v1, Landroidx/constraintlayout/solver/LinearSystem;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/LinearSystem;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    .line 145
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 146
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 148
    const/4 v1, 0x4

    new-array v2, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 149
    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 151
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mGroupsWrapOptimized:Z

    .line 152
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalWrapOptimized:Z

    .line 153
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalWrapOptimized:Z

    .line 154
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedWidth:I

    .line 155
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWrapFixedHeight:I

    .line 157
    const/4 v1, 0x7

    iput v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 158
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 160
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 161
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 258
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDebugSolverPassCount:I

    .line 183
    return-void
.end method

.method private addHorizontalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 682
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 683
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    .line 684
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 686
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    new-instance v2, Landroidx/constraintlayout/solver/widgets/ChainHead;

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v4

    invoke-direct {v2, p1, v3, v4}, Landroidx/constraintlayout/solver/widgets/ChainHead;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v2, v0, v1

    .line 687
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 688
    return-void
.end method

.method private addVerticalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V
    .locals 5
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 697
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 698
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    .line 699
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/widgets/ChainHead;

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    .line 701
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsArray:[Landroidx/constraintlayout/solver/widgets/ChainHead;

    iget v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    new-instance v3, Landroidx/constraintlayout/solver/widgets/ChainHead;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result v4

    invoke-direct {v3, p1, v1, v4}, Landroidx/constraintlayout/solver/widgets/ChainHead;-><init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;IZ)V

    aput-object v3, v0, v2

    .line 702
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 703
    return-void
.end method

.method private resetChains()V
    .locals 1

    .line 656
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    .line 657
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    .line 658
    return-void
.end method


# virtual methods
.method addChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)V
    .locals 2
    .param p1, "constraintWidget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "type"    # I

    .line 667
    move-object v0, p1

    .line 668
    .local v0, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    if-nez p2, :cond_0

    .line 669
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addHorizontalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    goto :goto_0

    .line 670
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 671
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addVerticalChain(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 673
    :cond_1
    :goto_0
    return-void
.end method

.method public addChildrenToSolver(Landroidx/constraintlayout/solver/LinearSystem;)Z
    .locals 6
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;

    .line 273
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 274
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 276
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 277
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 278
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v3, :cond_0

    instance-of v3, v2, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v3, :cond_1

    .line 279
    :cond_0
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 276
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v1, v0, :cond_9

    .line 284
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 285
    .local v4, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    if-eqz v5, :cond_7

    .line 286
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v2, v5, v2

    .line 287
    .local v2, "horizontalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v5, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v3, v5, v3

    .line 288
    .local v3, "verticalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_3

    .line 289
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 291
    :cond_3
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_4

    .line 292
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {v4, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 294
    :cond_4
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 295
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v5, :cond_5

    .line 296
    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 298
    :cond_5
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v5, :cond_6

    .line 299
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalDimensionBehaviour(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 301
    .end local v2    # "horizontalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v3    # "verticalBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :cond_6
    goto :goto_2

    .line 302
    :cond_7
    invoke-static {p0, p1, v4}, Landroidx/constraintlayout/solver/widgets/Optimizer;->checkMatchParent(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    .line 303
    instance-of v2, v4, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v2, :cond_8

    instance-of v2, v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v2, :cond_8

    .line 304
    invoke-virtual {v4, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 283
    .end local v4    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 309
    .end local v1    # "i":I
    :cond_9
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

    if-lez v1, :cond_a

    .line 310
    invoke-static {p0, p1, v2}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 312
    :cond_a
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    if-lez v1, :cond_b

    .line 313
    invoke-static {p0, p1, v3}, Landroidx/constraintlayout/solver/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/solver/LinearSystem;I)V

    .line 315
    :cond_b
    return v3
.end method

.method public defineTerminalWidgets()V
    .locals 3

    .line 93
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->defineTerminalWidgets(Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;)V

    .line 94
    return-void
.end method

.method public directMeasure(Z)Z
    .locals 1
    .param p1, "optimizeWrap"    # Z

    .line 66
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->directMeasure(Z)Z

    move-result v0

    return v0
.end method

.method public directMeasureSetup(Z)Z
    .locals 1
    .param p1, "optimizeWrap"    # Z

    .line 85
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->directMeasureSetup(Z)Z

    move-result v0

    return v0
.end method

.method public directMeasureWithOrientation(ZI)Z
    .locals 1
    .param p1, "optimizeWrap"    # Z
    .param p2, "orientation"    # I

    .line 89
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->directMeasureWithOrientation(ZI)Z

    move-result v0

    return v0
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 1
    .param p1, "metrics"    # Landroidx/constraintlayout/solver/Metrics;

    .line 135
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V

    .line 136
    return-void
.end method

.method public getHorizontalGuidelines()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 632
    .local v0, "guidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mChildrenSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 633
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 634
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    .line 635
    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 636
    .local v4, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v5

    if-nez v5, :cond_0

    .line 637
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    .end local v1    # "i":I
    .end local v2    # "mChildrenSize":I
    :cond_1
    return-object v0
.end method

.method public getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .locals 1

    .line 129
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    return-object v0
.end method

.method public getOptimizationLevel()I
    .locals 1

    .line 210
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    return v0
.end method

.method public getSystem()Landroidx/constraintlayout/solver/LinearSystem;
    .locals 1

    .line 645
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 230
    const-string v0, "ConstraintLayout"

    return-object v0
.end method

.method public getVerticalGuidelines()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Guideline;",
            ">;"
        }
    .end annotation

    .line 612
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .local v0, "guidelines":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/constraintlayout/solver/widgets/Guideline;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "mChildrenSize":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 614
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 615
    .local v3, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    .line 616
    move-object v4, v3

    check-cast v4, Landroidx/constraintlayout/solver/widgets/Guideline;

    .line 617
    .local v4, "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/Guideline;->getOrientation()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 618
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    .end local v3    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v4    # "guideline":Landroidx/constraintlayout/solver/widgets/Guideline;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 622
    .end local v1    # "i":I
    .end local v2    # "mChildrenSize":I
    :cond_1
    return-object v0
.end method

.method public handlesInternalConstraints()Z
    .locals 1

    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateGraph()V
    .locals 1

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->invalidateGraph()V

    .line 55
    return-void
.end method

.method public invalidateMeasures()V
    .locals 1

    .line 61
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->invalidateMeasures()V

    .line 62
    return-void
.end method

.method public isHeightMeasuredTooSmall()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    return v0
.end method

.method public isRtl()Z
    .locals 1

    .line 373
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    return v0
.end method

.method public isWidthMeasuredTooSmall()Z
    .locals 1

    .line 248
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    return v0
.end method

.method public layout()V
    .locals 21

    .line 392
    move-object/from16 v1, p0

    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mX:I

    .line 393
    iput v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mY:I

    .line 395
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 396
    .local v3, "prew":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 397
    .local v4, "preh":I
    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 398
    iput-boolean v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 400
    const/16 v0, 0x40

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    const/4 v5, 0x1

    if-nez v0, :cond_1

    const/16 v0, 0x80

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    move v6, v0

    .line 402
    .local v6, "useGraphOptimizer":Z
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    iput-boolean v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    .line 403
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    iput-boolean v2, v0, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    .line 405
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    if-eqz v0, :cond_2

    if-eqz v6, :cond_2

    .line 407
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    iput-boolean v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    .line 410
    :cond_2
    const/4 v0, 0x0

    .line 411
    .local v0, "wrap_override":Z
    iget-object v7, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v7, v7, v5

    .line 412
    .local v7, "originalVerticalDimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    iget-object v8, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aget-object v8, v8, v2

    .line 419
    .local v8, "originalHorizontalDimensionBehaviour":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v9, 0x0

    .line 420
    .local v9, "countSolve":I
    iget-object v10, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 421
    .local v10, "allChildren":Ljava/util/List;, "Ljava/util/List<Landroidx/constraintlayout/solver/widgets/ConstraintWidget;>;"
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_3

    goto :goto_2

    :cond_3
    move v11, v2

    goto :goto_3

    :cond_4
    :goto_2
    move v11, v5

    .line 424
    .local v11, "hasWrapContent":Z
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 425
    iget-object v12, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 426
    .local v12, "count":I
    const/4 v9, 0x0

    .line 430
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v12, :cond_6

    .line 431
    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 432
    .local v14, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v15, v14, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    if-eqz v15, :cond_5

    .line 433
    move-object v15, v14

    check-cast v15, Landroidx/constraintlayout/solver/widgets/WidgetContainer;

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->layout()V

    .line 430
    .end local v14    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 438
    .end local v13    # "i":I
    :cond_6
    const/4 v13, 0x1

    move/from16 v20, v9

    move v9, v0

    move/from16 v0, v20

    .line 439
    .local v0, "countSolve":I
    .local v9, "wrap_override":Z
    .local v13, "needsSolving":Z
    :goto_5
    if-eqz v13, :cond_14

    .line 440
    add-int/lit8 v14, v0, 0x1

    .line 442
    .end local v0    # "countSolve":I
    .local v14, "countSolve":I
    :try_start_0
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    .line 443
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetChains()V

    .line 457
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 458
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v12, :cond_7

    .line 459
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 460
    .local v15, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v15, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->createObjectVariables(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 458
    .end local v15    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    goto :goto_6

    .line 463
    .end local v0    # "i":I
    :cond_7
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->addChildrenToSolver(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v0

    move v13, v0

    .line 464
    if-eqz v13, :cond_8

    .line 465
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->minimize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    :cond_8
    goto :goto_7

    .line 467
    :catch_0
    move-exception v0

    .line 468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EXCEPTION : "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 471
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7
    if-eqz v13, :cond_9

    .line 472
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    invoke-virtual {v1, v0, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateChildrenFromSolver(Landroidx/constraintlayout/solver/LinearSystem;[Z)V

    goto :goto_9

    .line 474
    :cond_9
    iget-object v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8
    if-ge v0, v12, :cond_a

    .line 476
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 477
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 475
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 480
    .end local v0    # "i":I
    :cond_a
    :goto_9
    const/4 v0, 0x0

    .line 482
    .end local v13    # "needsSolving":Z
    .local v0, "needsSolving":Z
    if-eqz v11, :cond_d

    const/16 v2, 0x8

    if-ge v14, v2, :cond_d

    sget-object v2, Landroidx/constraintlayout/solver/widgets/Optimizer;->flags:[Z

    const/4 v5, 0x2

    aget-boolean v2, v2, v5

    if-eqz v2, :cond_d

    .line 485
    const/4 v2, 0x0

    .line 486
    .local v2, "maxX":I
    const/4 v5, 0x0

    .line 487
    .local v5, "maxY":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_a
    if-ge v13, v12, :cond_b

    .line 488
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 489
    .restart local v15    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v18, v0

    .end local v0    # "needsSolving":Z
    .local v18, "needsSolving":Z
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mX:I

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v19

    add-int v0, v0, v19

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 490
    iget v0, v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mY:I

    invoke-virtual {v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v19

    add-int v0, v0, v19

    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 487
    .end local v15    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v18

    goto :goto_a

    .end local v18    # "needsSolving":Z
    .restart local v0    # "needsSolving":Z
    :cond_b
    move/from16 v18, v0

    .line 492
    .end local v0    # "needsSolving":Z
    .end local v13    # "i":I
    .restart local v18    # "needsSolving":Z
    iget v0, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 493
    .end local v2    # "maxX":I
    .local v0, "maxX":I
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 494
    .end local v5    # "maxY":I
    .local v2, "maxY":I
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v8, v5, :cond_c

    .line 495
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    if-ge v5, v0, :cond_c

    .line 500
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 501
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    aput-object v13, v5, v15

    .line 502
    const/4 v9, 0x1

    .line 503
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 506
    :cond_c
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v5, :cond_e

    .line 507
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v5

    if-ge v5, v2, :cond_e

    .line 512
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 513
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x1

    aput-object v13, v5, v15

    .line 514
    const/4 v9, 0x1

    .line 515
    const/4 v5, 0x1

    move v0, v5

    .end local v18    # "needsSolving":Z
    .local v5, "needsSolving":Z
    goto :goto_b

    .line 482
    .end local v2    # "maxY":I
    .end local v5    # "needsSolving":Z
    .local v0, "needsSolving":Z
    :cond_d
    move/from16 v18, v0

    .line 520
    .end local v0    # "needsSolving":Z
    .restart local v18    # "needsSolving":Z
    :cond_e
    move/from16 v0, v18

    .end local v18    # "needsSolving":Z
    .restart local v0    # "needsSolving":Z
    :goto_b
    iget v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinWidth:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 521
    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_f

    .line 526
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 527
    iget-object v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    aput-object v13, v5, v15

    .line 528
    const/4 v9, 0x1

    .line 529
    const/4 v0, 0x1

    .line 531
    :cond_f
    iget v5, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMinHeight:I

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v13

    invoke-static {v5, v13}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 532
    .local v5, "height":I
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v13

    if-le v5, v13, :cond_10

    .line 537
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 538
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v16, 0x1

    aput-object v15, v13, v16

    .line 539
    const/4 v9, 0x1

    .line 540
    const/4 v0, 0x1

    .line 543
    :cond_10
    if-nez v9, :cond_13

    .line 544
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x0

    aget-object v13, v13, v15

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v15, :cond_11

    if-lez v3, :cond_11

    .line 546
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v13

    if-le v13, v3, :cond_11

    .line 552
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mWidthMeasuredTooSmall:Z

    .line 553
    const/4 v9, 0x1

    .line 554
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/16 v17, 0x0

    aput-object v15, v13, v17

    .line 555
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 556
    const/4 v0, 0x1

    .line 559
    :cond_11
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v15, 0x1

    aget-object v13, v13, v15

    sget-object v15, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v13, v15, :cond_12

    if-lez v4, :cond_12

    .line 561
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v13

    if-le v13, v4, :cond_12

    .line 567
    const/4 v13, 0x1

    iput-boolean v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mHeightMeasuredTooSmall:Z

    .line 568
    const/4 v9, 0x1

    .line 569
    iget-object v15, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v16, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    aput-object v16, v15, v13

    .line 570
    invoke-virtual {v1, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 571
    const/4 v0, 0x1

    move v13, v0

    goto :goto_c

    .line 575
    .end local v2    # "width":I
    .end local v5    # "height":I
    :cond_12
    move v13, v0

    goto :goto_c

    .line 543
    .restart local v2    # "width":I
    .restart local v5    # "height":I
    :cond_13
    move v13, v0

    .line 575
    .end local v0    # "needsSolving":Z
    .end local v2    # "width":I
    .end local v5    # "height":I
    .local v13, "needsSolving":Z
    :goto_c
    move v0, v14

    const/4 v2, 0x0

    const/4 v5, 0x1

    goto/16 :goto_5

    .line 583
    .end local v14    # "countSolve":I
    .local v0, "countSolve":I
    :cond_14
    move-object v2, v10

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    .line 585
    if-eqz v9, :cond_15

    .line 586
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x0

    aput-object v8, v2, v5

    .line 587
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mListDimensionBehaviors:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v5, 0x1

    aput-object v7, v2, v5

    .line 590
    :cond_15
    iget-object v2, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/LinearSystem;->getCache()Landroidx/constraintlayout/solver/Cache;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->resetSolverVariables(Landroidx/constraintlayout/solver/Cache;)V

    .line 591
    return-void
.end method

.method public measure(IIIIIIIII)V
    .locals 14
    .param p1, "optimizationLevel"    # I
    .param p2, "widthMode"    # I
    .param p3, "widthSize"    # I
    .param p4, "heightMode"    # I
    .param p5, "heightSize"    # I
    .param p6, "lastMeasureWidth"    # I
    .param p7, "lastMeasureHeight"    # I
    .param p8, "paddingX"    # I
    .param p9, "paddingY"    # I

    .line 111
    move-object v11, p0

    move/from16 v12, p8

    iput v12, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 112
    move/from16 v13, p9

    iput v13, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 113
    iget-object v0, v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    move-object v1, p0

    move v2, p1

    move/from16 v3, p8

    move/from16 v4, p9

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-virtual/range {v0 .. v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)V

    .line 115
    return-void
.end method

.method public optimizeFor(I)Z
    .locals 1
    .param p1, "feature"    # I

    .line 220
    iget v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSystem:Landroidx/constraintlayout/solver/LinearSystem;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/LinearSystem;->reset()V

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 237
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 238
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 239
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 240
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mSkipSolver:Z

    .line 241
    invoke-super {p0}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->reset()V

    .line 242
    return-void
.end method

.method public setMeasurer(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V
    .locals 1
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 124
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mMeasurer:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    .line 125
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mDependencyGraph:Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/widgets/analyzer/DependencyGraph;->setMeasurer(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;)V

    .line 126
    return-void
.end method

.method public setOptimizationLevel(I)V
    .locals 0
    .param p1, "value"    # I

    .line 201
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mOptimizationLevel:I

    .line 202
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 352
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingLeft:I

    .line 353
    iput p2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingTop:I

    .line 354
    iput p3, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingRight:I

    .line 355
    iput p4, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mPaddingBottom:I

    .line 356
    return-void
.end method

.method public setRtl(Z)V
    .locals 0
    .param p1, "isRtl"    # Z

    .line 364
    iput-boolean p1, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mIsRtl:Z

    .line 365
    return-void
.end method

.method public updateChildrenFromSolver(Landroidx/constraintlayout/solver/LinearSystem;[Z)V
    .locals 3
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "flags"    # [Z

    .line 324
    const/4 v0, 0x2

    const/4 v1, 0x0

    aput-boolean v1, p2, v0

    .line 325
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 326
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 327
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 328
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 329
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2, p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateFromSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 327
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public updateFromRuns(ZZ)V
    .locals 3
    .param p1, "updateHorizontal"    # Z
    .param p2, "updateVertical"    # Z

    .line 335
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/WidgetContainer;->updateFromRuns(ZZ)V

    .line 336
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 337
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 338
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 339
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->updateFromRuns(ZZ)V

    .line 337
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 341
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public updateHierarchy()V
    .locals 1

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mBasicMeasureSolver:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 119
    return-void
.end method
