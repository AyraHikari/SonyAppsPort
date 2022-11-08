.class public Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;,
        Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$MeasureType;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 1
    .param p1, "constraintWidgetContainer"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    .line 75
    iput-object p1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 76
    return-void
.end method

.method private measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z
    .locals 9
    .param p1, "measurer"    # Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .param p2, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "useDeprecated"    # Z

    .line 376
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 377
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 378
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

    .line 379
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-virtual {p2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    iput v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    .line 380
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    .line 381
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean p3, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    .line 383
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v0, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    .line 384
    .local v0, "horizontalMatchConstraints":Z
    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v4, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v1

    .line 385
    .local v2, "verticalMatchConstraints":Z
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v5, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_2

    move v5, v3

    goto :goto_2

    :cond_2
    move v5, v1

    .line 386
    .local v5, "horizontalUseRatio":Z
    :goto_2
    if-eqz v2, :cond_3

    iget v6, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    cmpl-float v4, v6, v4

    if-lez v4, :cond_3

    move v4, v3

    goto :goto_3

    :cond_3
    move v4, v1

    .line 388
    .local v4, "verticalUseRatio":Z
    :goto_3
    const/4 v6, 0x4

    if-eqz v5, :cond_4

    .line 389
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v7, v7, v1

    if-ne v7, v6, :cond_4

    .line 390
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v8, v7, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 393
    :cond_4
    if-eqz v4, :cond_5

    .line 394
    iget-object v7, p2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    aget v3, v7, v3

    if-ne v3, v6, :cond_5

    .line 395
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    iput-object v6, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    .line 399
    :cond_5
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    invoke-interface {p1, p2, v3}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;)V

    .line 400
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 401
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 402
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHasBaseline(Z)V

    .line 403
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget v3, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    invoke-virtual {p2, v3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setBaselineDistance(I)V

    .line 404
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iput-boolean v1, v3, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->useDeprecated:Z

    .line 405
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;

    iget-boolean v1, v1, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    return v1
.end method

.method private measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 9
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 79
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 80
    .local v0, "childCount":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v1

    .line 81
    .local v1, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 82
    iget-object v3, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 83
    .local v3, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v4, v3, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v4, :cond_0

    .line 84
    goto :goto_2

    .line 87
    :cond_0
    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v4, :cond_1

    iget-object v4, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v4, v4, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v4, :cond_1

    .line 88
    goto :goto_2

    .line 91
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    .line 92
    .local v5, "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v7

    .line 94
    .local v7, "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v5, v8, :cond_2

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-eq v8, v6, :cond_2

    sget-object v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v7, v8, :cond_2

    iget v8, v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-eq v8, v6, :cond_2

    goto :goto_1

    :cond_2
    move v6, v4

    .line 99
    .local v6, "skip":Z
    :goto_1
    if-eqz v6, :cond_3

    .line 102
    goto :goto_2

    .line 105
    :cond_3
    invoke-direct {p0, v1, v3, v4}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    .line 81
    .end local v3    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v5    # "widthBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    .end local v6    # "skip":Z
    .end local v7    # "heightBehavior":Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 107
    .end local v2    # "i":I
    :cond_4
    invoke-interface {v1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    .line 108
    return-void
.end method

.method private solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V
    .locals 3
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "w"    # I
    .param p4, "h"    # I

    .line 111
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    .line 112
    .local v0, "minWidth":I
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    .line 113
    .local v1, "minHeight":I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 114
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 115
    invoke-virtual {p1, p3}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 116
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 117
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    .line 118
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    .line 122
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->layout()V

    .line 123
    return-void
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;IIIIIIIII)V
    .locals 29
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;
    .param p2, "optimizationLevel"    # I
    .param p3, "paddingX"    # I
    .param p4, "paddingY"    # I
    .param p5, "widthMode"    # I
    .param p6, "widthSize"    # I
    .param p7, "heightMode"    # I
    .param p8, "heightSize"    # I
    .param p9, "lastMeasureWidth"    # I
    .param p10, "lastMeasureHeight"    # I

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    move/from16 v4, p7

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v5

    .line 146
    .local v5, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    iget-object v6, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 147
    .local v6, "childCount":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v7

    .line 148
    .local v7, "startingWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v8

    .line 150
    .local v8, "startingHeight":I
    const/16 v9, 0x80

    invoke-static {v2, v9}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v9

    .line 151
    .local v9, "optimizeWrap":Z
    if-nez v9, :cond_1

    const/16 v12, 0x40

    invoke-static {v2, v12}, Landroidx/constraintlayout/solver/widgets/Optimizer;->enabled(II)Z

    move-result v12

    if-eqz v12, :cond_0

    goto :goto_0

    :cond_0
    const/4 v12, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v12, 0x1

    .line 153
    .local v12, "optimize":Z
    :goto_1
    if-eqz v12, :cond_a

    .line 154
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v6, :cond_a

    .line 155
    iget-object v14, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 156
    .local v14, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v11, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v11, :cond_2

    const/4 v11, 0x1

    goto :goto_3

    :cond_2
    const/4 v11, 0x0

    .line 157
    .local v11, "matchWidth":Z
    :goto_3
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v15

    sget-object v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v15, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    .line 158
    .local v10, "matchHeight":Z
    :goto_4
    if-eqz v11, :cond_4

    if-eqz v10, :cond_4

    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v15

    const/16 v18, 0x0

    cmpl-float v15, v15, v18

    if-lez v15, :cond_4

    const/4 v15, 0x1

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    .line 159
    .local v15, "ratio":Z
    :goto_5
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v18

    if-eqz v18, :cond_5

    if-eqz v15, :cond_5

    .line 160
    const/4 v12, 0x0

    .line 161
    goto :goto_7

    .line 163
    :cond_5
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v18

    if-eqz v18, :cond_6

    if-eqz v15, :cond_6

    .line 164
    const/4 v12, 0x0

    .line 165
    goto :goto_7

    .line 167
    :cond_6
    instance-of v2, v14, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v2, :cond_7

    .line 168
    const/4 v12, 0x0

    .line 169
    goto :goto_7

    .line 171
    :cond_7
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v2

    if-nez v2, :cond_9

    .line 172
    invoke-virtual {v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    .line 154
    .end local v10    # "matchHeight":Z
    .end local v11    # "matchWidth":Z
    .end local v14    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v15    # "ratio":Z
    :cond_8
    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p2

    goto :goto_2

    .line 173
    .restart local v10    # "matchHeight":Z
    .restart local v11    # "matchWidth":Z
    .restart local v14    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .restart local v15    # "ratio":Z
    :cond_9
    :goto_6
    const/4 v12, 0x0

    .line 179
    .end local v10    # "matchHeight":Z
    .end local v11    # "matchWidth":Z
    .end local v13    # "i":I
    .end local v14    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v15    # "ratio":Z
    :cond_a
    :goto_7
    if-eqz v12, :cond_b

    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v2, :cond_b

    .line 180
    sget-object v2, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v10, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    const-wide/16 v13, 0x1

    add-long/2addr v10, v13

    iput-wide v10, v2, Landroidx/constraintlayout/solver/Metrics;->measures:J

    .line 183
    :cond_b
    const/4 v2, 0x0

    .line 185
    .local v2, "allSolved":Z
    const/high16 v10, 0x40000000    # 2.0f

    if-ne v3, v10, :cond_c

    if-eq v4, v10, :cond_d

    :cond_c
    if-eqz v9, :cond_e

    :cond_d
    const/4 v11, 0x1

    goto :goto_8

    :cond_e
    const/4 v11, 0x0

    :goto_8
    and-int/2addr v11, v12

    .line 187
    .end local v12    # "optimize":Z
    .local v11, "optimize":Z
    const/4 v12, 0x0

    .line 189
    .local v12, "computations":I
    if-eqz v11, :cond_16

    .line 193
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v13

    move/from16 v14, p6

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 194
    .end local p6    # "widthSize":I
    .local v13, "widthSize":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v14

    move/from16 v15, p8

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 196
    .end local p8    # "heightSize":I
    .local v14, "heightSize":I
    if-ne v3, v10, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    if-eq v15, v13, :cond_f

    .line 197
    invoke-virtual {v1, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 200
    :cond_f
    if-ne v4, v10, :cond_10

    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v15

    if-eq v15, v14, :cond_10

    .line 201
    invoke-virtual {v1, v14}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 202
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 204
    :cond_10
    if-ne v3, v10, :cond_11

    if-ne v4, v10, :cond_11

    .line 205
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v2

    .line 206
    const/4 v12, 0x2

    goto :goto_a

    .line 208
    :cond_11
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v2

    .line 209
    if-ne v3, v10, :cond_12

    .line 210
    const/4 v15, 0x0

    invoke-virtual {v1, v9, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    and-int v2, v2, v17

    .line 211
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 209
    :cond_12
    const/4 v15, 0x0

    .line 213
    :goto_9
    if-ne v4, v10, :cond_13

    .line 214
    const/4 v15, 0x1

    invoke-virtual {v1, v9, v15}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v18

    and-int v2, v2, v18

    .line 215
    add-int/lit8 v12, v12, 0x1

    .line 218
    :cond_13
    :goto_a
    if-eqz v2, :cond_18

    .line 219
    if-ne v3, v10, :cond_14

    const/4 v15, 0x1

    goto :goto_b

    :cond_14
    const/4 v15, 0x0

    :goto_b
    if-ne v4, v10, :cond_15

    const/4 v10, 0x1

    goto :goto_c

    :cond_15
    const/4 v10, 0x0

    :goto_c
    invoke-virtual {v1, v15, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    goto :goto_e

    .line 222
    .end local v13    # "widthSize":I
    .end local v14    # "heightSize":I
    .restart local p6    # "widthSize":I
    .restart local p8    # "heightSize":I
    :cond_16
    move/from16 v14, p6

    move/from16 v15, p8

    const/4 v10, 0x0

    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 223
    iget-object v13, v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 224
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getChildren()Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_17

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v10, v17

    check-cast v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 225
    .local v10, "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v17, v2

    .end local v2    # "allSolved":Z
    .local v17, "allSolved":Z
    iget-object v2, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->clear()V

    .line 226
    iget-object v2, v10, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->clear()V

    .line 227
    .end local v10    # "child":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v2, v17

    const/4 v10, 0x0

    goto :goto_d

    .line 224
    .end local v17    # "allSolved":Z
    .restart local v2    # "allSolved":Z
    :cond_17
    move/from16 v17, v2

    .end local v2    # "allSolved":Z
    .restart local v17    # "allSolved":Z
    move v13, v14

    move v14, v15

    .line 230
    .end local v17    # "allSolved":Z
    .end local p6    # "widthSize":I
    .end local p8    # "heightSize":I
    .restart local v2    # "allSolved":Z
    .restart local v13    # "widthSize":I
    .restart local v14    # "heightSize":I
    :cond_18
    :goto_e
    if-eqz v2, :cond_1a

    const/4 v10, 0x2

    if-eq v12, v10, :cond_19

    goto :goto_f

    :cond_19
    move/from16 p6, v2

    move-object/from16 v28, v5

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v19, v11

    move/from16 p8, v12

    move/from16 v20, v13

    move/from16 v21, v14

    goto/16 :goto_1f

    .line 231
    :cond_1a
    :goto_f
    if-lez v6, :cond_1b

    .line 232
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measureChildren(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V

    .line 235
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v10

    .line 238
    .local v10, "optimizations":I
    iget-object v15, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 241
    .local v15, "sizeDependentWidgetsCount":I
    if-lez v6, :cond_1c

    .line 242
    move/from16 p6, v2

    .end local v2    # "allSolved":Z
    .local p6, "allSolved":Z
    const-string v2, "First pass"

    invoke-direct {v0, v1, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_10

    .line 241
    .end local p6    # "allSolved":Z
    .restart local v2    # "allSolved":Z
    :cond_1c
    move/from16 p6, v2

    .line 249
    .end local v2    # "allSolved":Z
    .restart local p6    # "allSolved":Z
    :goto_10
    if-lez v15, :cond_37

    .line 250
    const/4 v2, 0x0

    .line 251
    .local v2, "needSolverPass":Z
    move/from16 p8, v2

    .end local v2    # "needSolverPass":Z
    .local p8, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_1d

    const/4 v2, 0x1

    goto :goto_11

    :cond_1d
    const/4 v2, 0x0

    .line 253
    .local v2, "containerWrapWidth":Z
    :goto_11
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1e

    const/16 v18, 0x1

    goto :goto_12

    :cond_1e
    const/16 v18, 0x0

    :goto_12
    move/from16 v3, v18

    .line 255
    .local v3, "containerWrapHeight":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    move/from16 v17, v6

    .end local v6    # "childCount":I
    .local v17, "childCount":I
    iget-object v6, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 256
    .local v4, "minWidth":I
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v6

    move/from16 v18, v4

    .end local v4    # "minWidth":I
    .local v18, "minWidth":I
    iget-object v4, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 261
    .local v4, "minHeight":I
    const/4 v6, 0x0

    move/from16 v19, v11

    move v11, v6

    move/from16 v6, v18

    move/from16 v18, v9

    move v9, v4

    move/from16 v4, p8

    .end local p8    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    .local v6, "minWidth":I
    .local v9, "minHeight":I
    .local v11, "i":I
    .local v18, "optimizeWrap":Z
    .local v19, "optimize":Z
    :goto_13
    if-ge v11, v15, :cond_25

    .line 262
    move/from16 p8, v12

    .end local v12    # "computations":I
    .local p8, "computations":I
    iget-object v12, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 263
    .local v12, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    move/from16 v20, v13

    .end local v13    # "widthSize":I
    .local v20, "widthSize":I
    instance-of v13, v12, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-nez v13, :cond_1f

    .line 264
    move/from16 v22, v10

    move/from16 v21, v14

    goto/16 :goto_16

    .line 266
    :cond_1f
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v13

    .line 267
    .local v13, "preWidth":I
    move/from16 v21, v14

    .end local v14    # "heightSize":I
    .local v21, "heightSize":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 268
    .local v14, "preHeight":I
    move/from16 v22, v10

    const/4 v10, 0x1

    .end local v10    # "optimizations":I
    .local v22, "optimizations":I
    invoke-direct {v0, v5, v12, v10}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v23

    or-int v4, v4, v23

    .line 269
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    .line 270
    .local v10, "measuredWidth":I
    move/from16 v23, v4

    .end local v4    # "needSolverPass":Z
    .local v23, "needSolverPass":Z
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    .line 271
    .local v4, "measuredHeight":I
    if-eq v10, v13, :cond_22

    .line 272
    invoke-virtual {v12, v10}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 273
    if-eqz v2, :cond_21

    move/from16 v24, v10

    .end local v10    # "measuredWidth":I
    .local v24, "measuredWidth":I
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v10

    if-le v10, v6, :cond_20

    .line 274
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v10

    move/from16 v25, v13

    .end local v13    # "preWidth":I
    .local v25, "preWidth":I
    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 275
    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v10, v13

    .line 276
    .local v10, "w":I
    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_14

    .line 273
    .end local v10    # "w":I
    .end local v25    # "preWidth":I
    .restart local v13    # "preWidth":I
    :cond_20
    move/from16 v25, v13

    .end local v13    # "preWidth":I
    .restart local v25    # "preWidth":I
    goto :goto_14

    .end local v24    # "measuredWidth":I
    .end local v25    # "preWidth":I
    .local v10, "measuredWidth":I
    .restart local v13    # "preWidth":I
    :cond_21
    move/from16 v24, v10

    move/from16 v25, v13

    .line 278
    .end local v10    # "measuredWidth":I
    .end local v13    # "preWidth":I
    .restart local v24    # "measuredWidth":I
    .restart local v25    # "preWidth":I
    :goto_14
    const/4 v10, 0x1

    move/from16 v23, v10

    .end local v23    # "needSolverPass":Z
    .local v10, "needSolverPass":Z
    goto :goto_15

    .line 271
    .end local v24    # "measuredWidth":I
    .end local v25    # "preWidth":I
    .local v10, "measuredWidth":I
    .restart local v13    # "preWidth":I
    .restart local v23    # "needSolverPass":Z
    :cond_22
    move/from16 v24, v10

    move/from16 v25, v13

    .line 280
    .end local v10    # "measuredWidth":I
    .end local v13    # "preWidth":I
    .restart local v24    # "measuredWidth":I
    .restart local v25    # "preWidth":I
    :goto_15
    if-eq v4, v14, :cond_24

    .line 281
    invoke-virtual {v12, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 282
    if-eqz v3, :cond_23

    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v10

    if-le v10, v9, :cond_23

    .line 283
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v10

    sget-object v13, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 284
    invoke-virtual {v12, v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v13

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v13

    add-int/2addr v10, v13

    .line 285
    .local v10, "h":I
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 287
    .end local v10    # "h":I
    :cond_23
    const/16 v23, 0x1

    .line 289
    :cond_24
    move-object v10, v12

    check-cast v10, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    .line 290
    .local v10, "virtualLayout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    invoke-virtual {v10}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->needSolverPass()Z

    move-result v13

    or-int v13, v23, v13

    move v4, v13

    .line 261
    .end local v10    # "virtualLayout":Landroidx/constraintlayout/solver/widgets/VirtualLayout;
    .end local v12    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "preHeight":I
    .end local v23    # "needSolverPass":Z
    .end local v24    # "measuredWidth":I
    .end local v25    # "preWidth":I
    .local v4, "needSolverPass":Z
    :goto_16
    add-int/lit8 v11, v11, 0x1

    move/from16 v12, p8

    move/from16 v13, v20

    move/from16 v14, v21

    move/from16 v10, v22

    goto/16 :goto_13

    .end local v20    # "widthSize":I
    .end local v21    # "heightSize":I
    .end local v22    # "optimizations":I
    .end local p8    # "computations":I
    .local v10, "optimizations":I
    .local v12, "computations":I
    .local v13, "widthSize":I
    .local v14, "heightSize":I
    :cond_25
    move/from16 v22, v10

    move/from16 p8, v12

    move/from16 v20, v13

    move/from16 v21, v14

    .line 294
    .end local v10    # "optimizations":I
    .end local v11    # "i":I
    .end local v12    # "computations":I
    .end local v13    # "widthSize":I
    .end local v14    # "heightSize":I
    .restart local v20    # "widthSize":I
    .restart local v21    # "heightSize":I
    .restart local v22    # "optimizations":I
    .restart local p8    # "computations":I
    const/4 v10, 0x2

    .line 295
    .local v10, "maxIterations":I
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_17
    if-ge v11, v10, :cond_34

    .line 296
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_18
    if-ge v12, v15, :cond_32

    .line 297
    iget-object v13, v0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 298
    .local v13, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/Helper;

    if-eqz v14, :cond_27

    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v14, :cond_26

    goto :goto_19

    :cond_26
    move/from16 v23, v10

    goto :goto_1a

    :cond_27
    :goto_19
    instance-of v14, v13, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-eqz v14, :cond_28

    .line 299
    move/from16 v23, v10

    goto :goto_1a

    .line 301
    :cond_28
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v14

    move/from16 v23, v10

    .end local v10    # "maxIterations":I
    .local v23, "maxIterations":I
    const/16 v10, 0x8

    if-ne v14, v10, :cond_29

    .line 302
    goto :goto_1a

    .line 304
    :cond_29
    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v10, :cond_2a

    iget-object v10, v13, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;

    iget-object v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;

    iget-boolean v10, v10, Landroidx/constraintlayout/solver/widgets/analyzer/DimensionDependency;->resolved:Z

    if-eqz v10, :cond_2a

    .line 305
    goto :goto_1a

    .line 307
    :cond_2a
    instance-of v10, v13, Landroidx/constraintlayout/solver/widgets/VirtualLayout;

    if-eqz v10, :cond_2b

    .line 308
    nop

    .line 296
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v23    # "maxIterations":I
    .restart local v10    # "maxIterations":I
    :goto_1a
    move/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v25, v11

    move/from16 v24, v15

    .end local v10    # "maxIterations":I
    .restart local v23    # "maxIterations":I
    goto/16 :goto_1d

    .line 311
    .restart local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_2b
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v10

    .line 312
    .local v10, "preWidth":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v14

    .line 313
    .local v14, "preHeight":I
    move/from16 v24, v15

    .end local v15    # "sizeDependentWidgetsCount":I
    .local v24, "sizeDependentWidgetsCount":I
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v15

    .line 315
    .local v15, "preBaselineDistance":I
    move/from16 v25, v11

    const/4 v11, 0x1

    .end local v11    # "j":I
    .local v25, "j":I
    invoke-direct {v0, v5, v13, v11}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->measure(Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Z)Z

    move-result v16

    or-int v4, v4, v16

    .line 317
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v11

    .line 318
    .local v11, "measuredWidth":I
    move/from16 v26, v4

    .end local v4    # "needSolverPass":Z
    .local v26, "needSolverPass":Z
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    .line 320
    .local v4, "measuredHeight":I
    if-eq v11, v10, :cond_2e

    .line 321
    invoke-virtual {v13, v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setWidth(I)V

    .line 322
    if-eqz v2, :cond_2d

    move/from16 v27, v2

    .end local v2    # "containerWrapWidth":Z
    .local v27, "containerWrapWidth":Z
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    if-le v2, v6, :cond_2c

    .line 323
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getRight()I

    move-result v2

    move-object/from16 v28, v5

    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v28, "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 324
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v2, v5

    .line 325
    .local v2, "w":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_1b

    .line 322
    .end local v2    # "w":I
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_2c
    move-object/from16 v28, v5

    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    goto :goto_1b

    .end local v27    # "containerWrapWidth":Z
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v2, "containerWrapWidth":Z
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :cond_2d
    move/from16 v27, v2

    move-object/from16 v28, v5

    .line 327
    .end local v2    # "containerWrapWidth":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v27    # "containerWrapWidth":Z
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :goto_1b
    const/4 v2, 0x1

    move/from16 v26, v2

    .end local v26    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_1c

    .line 320
    .end local v27    # "containerWrapWidth":Z
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v2, "containerWrapWidth":Z
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v26    # "needSolverPass":Z
    :cond_2e
    move/from16 v27, v2

    move-object/from16 v28, v5

    .line 329
    .end local v2    # "containerWrapWidth":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v27    # "containerWrapWidth":Z
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    :goto_1c
    if-eq v4, v14, :cond_30

    .line 330
    invoke-virtual {v13, v4}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHeight(I)V

    .line 331
    if-eqz v3, :cond_2f

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    if-le v2, v9, :cond_2f

    .line 332
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBottom()I

    move-result v2

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    .line 333
    invoke-virtual {v13, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getMargin()I

    move-result v5

    add-int/2addr v2, v5

    .line 334
    .local v2, "h":I
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    move v9, v5

    .line 336
    .end local v2    # "h":I
    :cond_2f
    const/16 v26, 0x1

    .line 338
    :cond_30
    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v13}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v2

    if-eq v15, v2, :cond_31

    .line 339
    const/4 v2, 0x1

    move v4, v2

    .end local v26    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    goto :goto_1d

    .line 296
    .end local v2    # "needSolverPass":Z
    .end local v4    # "measuredHeight":I
    .end local v10    # "preWidth":I
    .end local v11    # "measuredWidth":I
    .end local v13    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .end local v14    # "preHeight":I
    .end local v15    # "preBaselineDistance":I
    .restart local v26    # "needSolverPass":Z
    :cond_31
    move/from16 v4, v26

    .end local v26    # "needSolverPass":Z
    .local v4, "needSolverPass":Z
    :goto_1d
    add-int/lit8 v12, v12, 0x1

    move/from16 v10, v23

    move/from16 v15, v24

    move/from16 v11, v25

    move/from16 v2, v27

    move-object/from16 v5, v28

    goto/16 :goto_18

    .end local v23    # "maxIterations":I
    .end local v24    # "sizeDependentWidgetsCount":I
    .end local v25    # "j":I
    .end local v27    # "containerWrapWidth":Z
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v2, "containerWrapWidth":Z
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v10, "maxIterations":I
    .local v11, "j":I
    .local v15, "sizeDependentWidgetsCount":I
    :cond_32
    move/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v23, v10

    move/from16 v25, v11

    move/from16 v24, v15

    .line 342
    .end local v2    # "containerWrapWidth":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v10    # "maxIterations":I
    .end local v11    # "j":I
    .end local v12    # "i":I
    .end local v15    # "sizeDependentWidgetsCount":I
    .restart local v23    # "maxIterations":I
    .restart local v24    # "sizeDependentWidgetsCount":I
    .restart local v25    # "j":I
    .restart local v27    # "containerWrapWidth":Z
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    if-eqz v4, :cond_33

    .line 343
    const-string v2, "intermediate pass"

    invoke-direct {v0, v1, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 344
    const/4 v2, 0x0

    move v4, v2

    .line 295
    :cond_33
    add-int/lit8 v11, v25, 0x1

    move/from16 v10, v23

    move/from16 v15, v24

    move/from16 v2, v27

    move-object/from16 v5, v28

    .end local v25    # "j":I
    .restart local v11    # "j":I
    goto/16 :goto_17

    .end local v23    # "maxIterations":I
    .end local v24    # "sizeDependentWidgetsCount":I
    .end local v27    # "containerWrapWidth":Z
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v2    # "containerWrapWidth":Z
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local v10    # "maxIterations":I
    .restart local v15    # "sizeDependentWidgetsCount":I
    :cond_34
    move/from16 v27, v2

    move-object/from16 v28, v5

    move/from16 v23, v10

    move/from16 v25, v11

    move/from16 v24, v15

    .line 347
    .end local v2    # "containerWrapWidth":Z
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v10    # "maxIterations":I
    .end local v11    # "j":I
    .end local v15    # "sizeDependentWidgetsCount":I
    .restart local v23    # "maxIterations":I
    .restart local v24    # "sizeDependentWidgetsCount":I
    .restart local v27    # "containerWrapWidth":Z
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    if-eqz v4, :cond_38

    .line 348
    const-string v2, "2nd pass"

    invoke-direct {v0, v1, v2, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    .line 349
    const/4 v2, 0x0

    .line 350
    .end local v4    # "needSolverPass":Z
    .local v2, "needSolverPass":Z
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    if-ge v4, v6, :cond_35

    .line 351
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setWidth(I)V

    .line 352
    const/4 v2, 0x1

    .line 354
    :cond_35
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    if-ge v4, v9, :cond_36

    .line 355
    invoke-virtual {v1, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setHeight(I)V

    .line 356
    const/4 v2, 0x1

    .line 358
    :cond_36
    if-eqz v2, :cond_38

    .line 359
    const-string v4, "3rd pass"

    invoke-direct {v0, v1, v4, v7, v8}, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->solveLinearSystem(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;Ljava/lang/String;II)V

    goto :goto_1e

    .line 249
    .end local v2    # "needSolverPass":Z
    .end local v3    # "containerWrapHeight":Z
    .end local v17    # "childCount":I
    .end local v18    # "optimizeWrap":Z
    .end local v19    # "optimize":Z
    .end local v20    # "widthSize":I
    .end local v21    # "heightSize":I
    .end local v22    # "optimizations":I
    .end local v23    # "maxIterations":I
    .end local v24    # "sizeDependentWidgetsCount":I
    .end local v27    # "containerWrapWidth":Z
    .end local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local p8    # "computations":I
    .restart local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .local v6, "childCount":I
    .local v9, "optimizeWrap":Z
    .local v10, "optimizations":I
    .local v11, "optimize":Z
    .local v12, "computations":I
    .local v13, "widthSize":I
    .local v14, "heightSize":I
    .restart local v15    # "sizeDependentWidgetsCount":I
    :cond_37
    move-object/from16 v28, v5

    move/from16 v17, v6

    move/from16 v18, v9

    move/from16 v22, v10

    move/from16 v19, v11

    move/from16 p8, v12

    move/from16 v20, v13

    move/from16 v21, v14

    move/from16 v24, v15

    .line 363
    .end local v5    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .end local v6    # "childCount":I
    .end local v9    # "optimizeWrap":Z
    .end local v10    # "optimizations":I
    .end local v11    # "optimize":Z
    .end local v12    # "computations":I
    .end local v13    # "widthSize":I
    .end local v14    # "heightSize":I
    .end local v15    # "sizeDependentWidgetsCount":I
    .restart local v17    # "childCount":I
    .restart local v18    # "optimizeWrap":Z
    .restart local v19    # "optimize":Z
    .restart local v20    # "widthSize":I
    .restart local v21    # "heightSize":I
    .restart local v22    # "optimizations":I
    .restart local v24    # "sizeDependentWidgetsCount":I
    .restart local v28    # "measurer":Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure$Measurer;
    .restart local p8    # "computations":I
    :cond_38
    :goto_1e
    move/from16 v2, v22

    .end local v22    # "optimizations":I
    .local v2, "optimizations":I
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    .line 365
    .end local v2    # "optimizations":I
    .end local v24    # "sizeDependentWidgetsCount":I
    :goto_1f
    return-void
.end method

.method public updateHierarchy(Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;)V
    .locals 5
    .param p1, "layout"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 55
    iget-object v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 56
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 57
    iget-object v2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 58
    .local v2, "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 59
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 60
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v3, v4, :cond_0

    .line 61
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v3, v4, :cond_1

    .line 62
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v2    # "widget":Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    .line 66
    return-void
.end method
