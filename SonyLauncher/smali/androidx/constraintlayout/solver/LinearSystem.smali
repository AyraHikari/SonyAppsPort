.class public Landroidx/constraintlayout/solver/LinearSystem;
.super Ljava/lang/Object;
.source "LinearSystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/LinearSystem$Row;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final DEBUG_CONSTRAINTS:Z

.field public static final FULL_DEBUG:Z

.field private static POOL_SIZE:I

.field public static sMetrics:Landroidx/constraintlayout/solver/Metrics;


# instance fields
.field private TABLE_SIZE:I

.field public graphOptimizer:Z

.field private mAlreadyTestedCandidates:[Z

.field final mCache:Landroidx/constraintlayout/solver/Cache;

.field private mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mMaxColumns:I

.field private mMaxRows:I

.field mNumColumns:I

.field mNumRows:I

.field private mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

.field private mPoolVariablesCount:I

.field mRows:[Landroidx/constraintlayout/solver/ArrayRow;

.field private final mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/solver/SolverVariable;",
            ">;"
        }
    .end annotation
.end field

.field mVariablesID:I

.field public newgraphOptimizer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/16 v0, 0x3e8

    sput v0, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 55
    const/16 v2, 0x20

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 56
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 57
    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 60
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    .line 61
    iput-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    .line 64
    new-array v1, v2, [Z

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 66
    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 67
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 68
    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 72
    sget v1, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    new-array v1, v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 73
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 80
    new-array v0, v2, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 81
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 82
    new-instance v0, Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/Cache;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 83
    new-instance v1, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 84
    new-instance v1, Landroidx/constraintlayout/solver/ArrayRow;

    invoke-direct {v1, v0}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    .line 85
    return-void
.end method

.method private acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4
    .param p1, "type"    # Landroidx/constraintlayout/solver/SolverVariable$Type;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 308
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    .line 309
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 310
    new-instance v1, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-direct {v1, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;-><init>(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    move-object v0, v1

    .line 311
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    goto :goto_0

    .line 313
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 314
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/solver/SolverVariable;->setType(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)V

    .line 316
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    sget v2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    if-lt v1, v2, :cond_1

    .line 317
    mul-int/lit8 v2, v2, 0x2

    sput v2, Landroidx/constraintlayout/solver/LinearSystem;->POOL_SIZE:I

    .line 318
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 320
    :cond_1
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    aput-object v0, v1, v2

    .line 321
    return-object v0
.end method

.method private addError(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 1
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;

    .line 244
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 245
    return-void
.end method

.method private final addRow(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 3
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;

    .line 563
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 566
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    aput-object p1, v0, v1

    .line 567
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 568
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 569
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 576
    return-void
.end method

.method private addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V
    .locals 1
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "sign"    # I

    .line 248
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 249
    return-void
.end method

.method private computeValues()V
    .locals 4

    .line 882
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_0

    .line 883
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 884
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v3, v2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 882
    .end local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 886
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public static createRowCentering(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 9
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "marginA"    # I
    .param p4, "bias"    # F
    .param p5, "variableC"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p6, "variableD"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "marginB"    # I
    .param p8, "withError"    # Z

    .line 1325
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v8

    .line 1326
    .local v8, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1328
    if-eqz p8, :cond_0

    .line 1329
    const/4 v0, 0x4

    move-object v1, p0

    invoke-virtual {v8, p0, v0}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    goto :goto_0

    .line 1328
    :cond_0
    move-object v1, p0

    .line 1343
    :goto_0
    return-object v8
.end method

.method public static createRowDimensionPercent(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableC"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "percent"    # F

    .line 1261
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1262
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionPercent(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    return-object v1
.end method

.method public static createRowEquals(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .line 1229
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1230
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1231
    if-eqz p4, :cond_0

    .line 1232
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1243
    :cond_0
    return-object v0
.end method

.method public static createRowGreaterThan(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .line 1270
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 1271
    .local v0, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    .line 1272
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v1, p1, p2, v0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1273
    if-eqz p4, :cond_0

    .line 1274
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1275
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1288
    .end local v2    # "slackValue":F
    :cond_0
    return-object v1
.end method

.method public static createRowLowerThan(Landroidx/constraintlayout/solver/LinearSystem;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 4
    .param p0, "linearSystem"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p1, "variableA"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variableB"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "withError"    # Z

    .line 1296
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 1297
    .local v0, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    .line 1298
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v1, p1, p2, v0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1299
    if-eqz p4, :cond_0

    .line 1300
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1301
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-direct {p0, v1, v3}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;I)V

    .line 1314
    .end local v2    # "slackValue":F
    :cond_0
    return-object v1
.end method

.method private createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 266
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 267
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->variables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->variables:J

    .line 269
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    .line 270
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 272
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 273
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/SolverVariable;->setName(Ljava/lang/String;)V

    .line 274
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 275
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 276
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 277
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 278
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 280
    :cond_2
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 282
    return-object v0
.end method

.method private displayRows()V
    .locals 5

    .line 894
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 895
    const-string v0, ""

    .line 896
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_0

    .line 897
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 898
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 896
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 900
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 902
    return-void
.end method

.method private displaySolverVariables()V
    .locals 2

    .line 976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Display Rows ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    .local v0, "s":Ljava/lang/String;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 987
    return-void
.end method

.method private enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I
    .locals 17
    .param p1, "goal"    # Landroidx/constraintlayout/solver/LinearSystem$Row;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 735
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 747
    .local v1, "tries":I
    const/4 v2, 0x0

    .line 748
    .local v2, "infeasibleSystem":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v5, 0x0

    if-ge v3, v4, :cond_2

    .line 749
    iget-object v4, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v3

    iget-object v4, v4, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 750
    .local v4, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v6, v4, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v7, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v6, v7, :cond_0

    .line 751
    goto :goto_1

    .line 753
    :cond_0
    iget-object v6, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v6, v6, v3

    iget v6, v6, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    cmpg-float v6, v6, v5

    if-gez v6, :cond_1

    .line 754
    const/4 v2, 0x1

    .line 755
    goto :goto_2

    .line 748
    .end local v4    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 760
    .end local v3    # "i":I
    :cond_2
    :goto_2
    if-eqz v2, :cond_10

    .line 768
    const/4 v3, 0x0

    .line 769
    .local v3, "done":Z
    const/4 v1, 0x0

    .line 770
    :goto_3
    if-nez v3, :cond_10

    .line 771
    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v6, 0x1

    if-eqz v4, :cond_3

    .line 772
    iget-wide v8, v4, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    add-long/2addr v8, v6

    iput-wide v8, v4, Landroidx/constraintlayout/solver/Metrics;->bfs:J

    .line 774
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 778
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    .line 779
    .local v4, "min":F
    const/4 v8, 0x0

    .line 780
    .local v8, "strength":I
    const/4 v9, -0x1

    .line 781
    .local v9, "pivotRowIndex":I
    const/4 v10, -0x1

    .line 783
    .local v10, "pivotColumnIndex":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    iget v12, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v11, v12, :cond_c

    .line 784
    iget-object v12, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v12, v12, v11

    .line 785
    .local v12, "current":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v13, v12, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 786
    .local v13, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v14, v13, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v15, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v14, v15, :cond_4

    .line 789
    goto :goto_8

    .line 791
    :cond_4
    iget-boolean v14, v12, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v14, :cond_5

    .line 792
    goto :goto_8

    .line 794
    :cond_5
    iget v14, v12, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    cmpg-float v14, v14, v5

    if-gez v14, :cond_b

    .line 799
    const/4 v14, 0x1

    .local v14, "j":I
    :goto_5
    iget v15, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v14, v15, :cond_b

    .line 800
    iget-object v15, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v15, v15, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v15, v15, v14

    .line 801
    .local v15, "candidate":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v6, v12, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v6, v15}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v6

    .line 802
    .local v6, "a_j":F
    cmpg-float v7, v6, v5

    if-gtz v7, :cond_6

    .line 803
    goto :goto_7

    .line 808
    :cond_6
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_6
    const/16 v5, 0x8

    if-ge v7, v5, :cond_a

    .line 809
    iget-object v5, v15, Landroidx/constraintlayout/solver/SolverVariable;->strengthVector:[F

    aget v5, v5, v7

    div-float/2addr v5, v6

    .line 810
    .local v5, "value":F
    cmpg-float v16, v5, v4

    if-gez v16, :cond_7

    if-eq v7, v8, :cond_8

    :cond_7
    if-le v7, v8, :cond_9

    .line 811
    :cond_8
    move v4, v5

    .line 812
    move v9, v11

    .line 813
    move v10, v14

    .line 814
    move v8, v7

    .line 808
    .end local v5    # "value":F
    :cond_9
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_6

    .line 799
    .end local v6    # "a_j":F
    .end local v7    # "k":I
    .end local v15    # "candidate":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_a
    :goto_7
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    goto :goto_5

    .line 783
    .end local v12    # "current":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v13    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v14    # "j":I
    :cond_b
    :goto_8
    add-int/lit8 v11, v11, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x1

    goto :goto_4

    .line 821
    .end local v11    # "i":I
    :cond_c
    const/4 v5, -0x1

    if-eq v9, v5, :cond_e

    .line 823
    iget-object v6, v0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v6, v6, v9

    .line 828
    .local v6, "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v7, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v5, v7, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 829
    sget-object v5, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v5, :cond_d

    .line 830
    iget-wide v11, v5, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    const-wide/16 v13, 0x1

    add-long/2addr v11, v13

    iput-wide v11, v5, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 832
    :cond_d
    iget-object v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v5, v5, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v5, v5, v10

    invoke-virtual {v6, v5}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 833
    iget-object v5, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v9, v5, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 834
    iget-object v5, v6, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 840
    .end local v6    # "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    goto :goto_9

    .line 841
    :cond_e
    const/4 v3, 0x1

    .line 843
    :goto_9
    iget v5, v0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    div-int/lit8 v5, v5, 0x2

    if-le v1, v5, :cond_f

    .line 845
    const/4 v3, 0x1

    .line 847
    .end local v4    # "min":F
    .end local v8    # "strength":I
    .end local v9    # "pivotRowIndex":I
    .end local v10    # "pivotColumnIndex":I
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_3

    .line 878
    .end local v3    # "done":Z
    :cond_10
    return v1
.end method

.method private getDisplaySize(I)Ljava/lang/String;
    .locals 4
    .param p1, "n"    # I

    .line 990
    mul-int/lit8 v0, p1, 0x4

    div-int/lit16 v0, v0, 0x400

    div-int/lit16 v0, v0, 0x400

    .line 991
    .local v0, "mb":I
    const-string v1, ""

    if-lez v0, :cond_0

    .line 992
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Mb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 994
    :cond_0
    mul-int/lit8 v2, p1, 0x4

    div-int/lit16 v2, v2, 0x400

    .line 995
    .local v2, "kb":I
    if-lez v2, :cond_1

    .line 996
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " Kb"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 998
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v3, p1, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " bytes"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getDisplayStrength(I)Ljava/lang/String;
    .locals 1
    .param p1, "strength"    # I

    .line 1006
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1007
    const-string v0, "LOW"

    return-object v0

    .line 1009
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1010
    const-string v0, "MEDIUM"

    return-object v0

    .line 1012
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1013
    const-string v0, "HIGH"

    return-object v0

    .line 1015
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1016
    const-string v0, "HIGHEST"

    return-object v0

    .line 1018
    :cond_3
    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    .line 1019
    const-string v0, "EQUALITY"

    return-object v0

    .line 1021
    :cond_4
    const/4 v0, 0x7

    if-ne p1, v0, :cond_5

    .line 1022
    const-string v0, "FIXED"

    return-object v0

    .line 1024
    :cond_5
    const/4 v0, 0x6

    if-ne p1, v0, :cond_6

    .line 1025
    const-string v0, "BARRIER"

    return-object v0

    .line 1027
    :cond_6
    const-string v0, "NONE"

    return-object v0
.end method

.method public static getMetrics()Landroidx/constraintlayout/solver/Metrics;
    .locals 1

    .line 92
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    return-object v0
.end method

.method private increaseTableSize()V
    .locals 5

    .line 115
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    .line 116
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/ArrayRow;

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    .line 117
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, v0, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 118
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    new-array v1, v0, [Z

    iput-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    .line 119
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    .line 120
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    .line 121
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 122
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->tableSizeIncrease:J

    .line 123
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    .line 124
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxTableSize:J

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->lastTableSize:J

    .line 126
    :cond_0
    return-void
.end method

.method private final optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I
    .locals 13
    .param p1, "goal"    # Landroidx/constraintlayout/solver/LinearSystem$Row;
    .param p2, "b"    # Z

    .line 585
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 586
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->optimize:J

    .line 588
    :cond_0
    const/4 v0, 0x0

    .line 589
    .local v0, "done":Z
    const/4 v3, 0x0

    .line 590
    .local v3, "tries":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    if-ge v4, v5, :cond_1

    .line 591
    iget-object v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    const/4 v6, 0x0

    aput-boolean v6, v5, v4

    .line 590
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 602
    .end local v4    # "i":I
    :cond_1
    :goto_1
    if-nez v0, :cond_e

    .line 603
    sget-object v4, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v4, :cond_2

    .line 604
    iget-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    add-long/2addr v5, v1

    iput-wide v5, v4, Landroidx/constraintlayout/solver/Metrics;->iterations:J

    .line 606
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 611
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    mul-int/lit8 v4, v4, 0x2

    if-lt v3, v4, :cond_3

    .line 615
    return v3

    .line 618
    :cond_3
    invoke-interface {p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 619
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getKey()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v6

    iget v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput-boolean v5, v4, v6

    .line 621
    :cond_4
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    invoke-interface {p1, p0, v4}, Landroidx/constraintlayout/solver/LinearSystem$Row;->getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 626
    .local v4, "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v4, :cond_6

    .line 627
    iget-object v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v6, v6, v7

    if-eqz v6, :cond_5

    .line 631
    return v3

    .line 633
    :cond_5
    iget-object v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mAlreadyTestedCandidates:[Z

    iget v7, v4, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aput-boolean v5, v6, v7

    .line 637
    :cond_6
    if-eqz v4, :cond_d

    .line 651
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    .line 652
    .local v5, "min":F
    const/4 v6, -0x1

    .line 654
    .local v6, "pivotRowIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    iget v8, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v7, v8, :cond_a

    .line 655
    iget-object v8, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v8, v8, v7

    .line 656
    .local v8, "current":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 657
    .local v9, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v10, v9, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v11, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v10, v11, :cond_7

    .line 659
    goto :goto_3

    .line 661
    :cond_7
    iget-boolean v10, v8, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v10, :cond_8

    .line 662
    goto :goto_3

    .line 665
    :cond_8
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/ArrayRow;->hasVariable(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 671
    iget-object v10, v8, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v10, v4}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v10

    .line 672
    .local v10, "a_j":F
    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_9

    .line 673
    iget v11, v8, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    neg-float v11, v11

    div-float/2addr v11, v10

    .line 674
    .local v11, "value":F
    cmpg-float v12, v11, v5

    if-gez v12, :cond_9

    .line 675
    move v5, v11

    .line 676
    move v6, v7

    .line 654
    .end local v8    # "current":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v9    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    .end local v10    # "a_j":F
    .end local v11    # "value":F
    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 683
    .end local v7    # "i":I
    :cond_a
    const/4 v7, -0x1

    if-le v6, v7, :cond_c

    .line 688
    iget-object v8, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v8, v8, v6

    .line 689
    .local v8, "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v9, v8, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v7, v9, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 690
    sget-object v7, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v7, :cond_b

    .line 691
    iget-wide v9, v7, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long/2addr v9, v1

    iput-wide v9, v7, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 693
    :cond_b
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 694
    iget-object v7, v8, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iput v6, v7, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 695
    iget-object v7, v8, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 717
    .end local v5    # "min":F
    .end local v6    # "pivotRowIndex":I
    .end local v8    # "pivotEquation":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_c
    goto :goto_4

    .line 723
    :cond_d
    const/4 v0, 0x1

    .line 725
    .end local v4    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    :goto_4
    goto/16 :goto_1

    .line 726
    :cond_e
    return v3
.end method

.method private releaseRows()V
    .locals 4

    .line 132
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 133
    aget-object v1, v1, v0

    .line 134
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    if-eqz v1, :cond_0

    .line 135
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v2, v1}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 137
    :cond_0
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 132
    .end local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method public addCenterPoint(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;FI)V
    .locals 21
    .param p1, "widget"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p2, "target"    # Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .param p3, "angle"    # F
    .param p4, "radius"    # I

    .line 1357
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 1358
    .local v5, "Al":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v13

    .line 1359
    .local v13, "At":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v14

    .line 1360
    .local v14, "Ar":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v1, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v15

    .line 1362
    .local v15, "Ab":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v16

    .line 1363
    .local v16, "Bl":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v17

    .line 1364
    .local v17, "Bt":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v18

    .line 1365
    .local v18, "Br":Landroidx/constraintlayout/solver/SolverVariable;
    sget-object v6, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;

    invoke-virtual {v2, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v19

    .line 1367
    .local v19, "Bb":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1368
    .local v6, "row":Landroidx/constraintlayout/solver/ArrayRow;
    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    int-to-double v9, v4

    mul-double/2addr v7, v9

    double-to-float v12, v7

    .line 1369
    .local v12, "angleComponent":F
    move-object v7, v6

    move-object v8, v13

    move-object v9, v15

    move-object/from16 v10, v17

    move-object/from16 v11, v19

    move/from16 v20, v12

    .end local v12    # "angleComponent":F
    .local v20, "angleComponent":F
    invoke-virtual/range {v7 .. v12}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1370
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1371
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v12

    .line 1372
    .end local v6    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    .local v12, "row":Landroidx/constraintlayout/solver/ArrayRow;
    float-to-double v6, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    int-to-double v8, v4

    mul-double/2addr v6, v8

    double-to-float v11, v6

    .line 1373
    .end local v20    # "angleComponent":F
    .local v11, "angleComponent":F
    move-object v6, v12

    move-object v7, v5

    move-object v8, v14

    move-object/from16 v9, v16

    move-object/from16 v10, v18

    move/from16 v20, v11

    .end local v11    # "angleComponent":F
    .restart local v20    # "angleComponent":F
    invoke-virtual/range {v6 .. v11}, Landroidx/constraintlayout/solver/ArrayRow;->createRowWithAngle(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1374
    invoke-virtual {v0, v12}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1375
    return-void
.end method

.method public addCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 11
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "m1"    # I
    .param p4, "bias"    # F
    .param p5, "c"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p6, "d"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p7, "m2"    # I
    .param p8, "strength"    # I

    .line 1126
    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v10

    .line 1127
    .local v10, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Landroidx/constraintlayout/solver/ArrayRow;->createRowCentering(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IFLandroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1128
    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    .line 1129
    invoke-virtual {v10, p0, v1}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1131
    :cond_0
    invoke-virtual {p0, v10}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1132
    return-void
.end method

.method public addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 9
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;

    .line 486
    if-nez p1, :cond_0

    .line 487
    return-void

    .line 489
    :cond_0
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_1

    .line 490
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->constraints:J

    .line 491
    iget-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v0, :cond_1

    .line 492
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->simpleconstraints:J

    .line 495
    :cond_1
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const/4 v3, 0x1

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    if-ge v0, v4, :cond_2

    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/2addr v0, v3

    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v4, :cond_3

    .line 496
    :cond_2
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 502
    :cond_3
    const/4 v0, 0x0

    .line 503
    .local v0, "added":Z
    iget-boolean v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v4, :cond_9

    .line 505
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 507
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 508
    return-void

    .line 512
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->ensurePositiveConstant()V

    .line 519
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/ArrayRow;->chooseSubject(Landroidx/constraintlayout/solver/LinearSystem;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 521
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v4

    .line 522
    .local v4, "extra":Landroidx/constraintlayout/solver/SolverVariable;
    iput-object v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 523
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 524
    const/4 v0, 0x1

    .line 525
    iget-object v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v5, p1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->initFromRow(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    .line 526
    iget-object v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mTempGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-direct {p0, v5, v3}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    .line 527
    iget v5, v4, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_8

    .line 531
    iget-object v5, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v5, v4, :cond_6

    .line 533
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/solver/ArrayRow;->pickPivot(Landroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v5

    .line 534
    .local v5, "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v5, :cond_6

    .line 535
    sget-object v6, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v6, :cond_5

    .line 536
    iget-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    add-long/2addr v7, v1

    iput-wide v7, v6, Landroidx/constraintlayout/solver/Metrics;->pivots:J

    .line 538
    :cond_5
    invoke-virtual {p1, v5}, Landroidx/constraintlayout/solver/ArrayRow;->pivot(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 541
    .end local v5    # "pivotCandidate":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_6
    iget-boolean v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v1, :cond_7

    .line 542
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, p1}, Landroidx/constraintlayout/solver/SolverVariable;->updateReferencesWithNewDefinition(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 544
    :cond_7
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    sub-int/2addr v1, v3

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 548
    .end local v4    # "extra":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_8
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/ArrayRow;->hasKeyVariable()Z

    move-result v1

    if-nez v1, :cond_9

    .line 554
    return-void

    .line 557
    :cond_9
    if-nez v0, :cond_a

    .line 558
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->addRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 560
    :cond_a
    return-void
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 2
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .line 1156
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1157
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1158
    const/4 v1, 0x7

    if-eq p4, v1, :cond_0

    .line 1159
    invoke-virtual {v0, p0, p4}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1161
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1162
    return-object v0
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 3
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # I

    .line 1174
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 1175
    .local v0, "idx":I
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    .line 1176
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 1177
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v2, :cond_0

    .line 1178
    int-to-float v2, p2

    iput v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 1180
    :cond_0
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v2, v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v2, :cond_1

    .line 1181
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 1182
    int-to-float v2, p2

    iput v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 1184
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 1185
    .local v2, "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1186
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1189
    .end local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v2    # "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    :goto_0
    goto :goto_1

    .line 1190
    :cond_2
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    .line 1191
    .restart local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1192
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1194
    .end local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :goto_1
    return-void
.end method

.method public addEquality(Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 3
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # I
    .param p3, "strength"    # I

    .line 1206
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    .line 1207
    .local v0, "idx":I
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->definitionId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1208
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 1209
    .local v1, "row":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v2, :cond_0

    .line 1210
    int-to-float v2, p2

    iput v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    goto :goto_0

    .line 1212
    :cond_0
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v2

    .line 1213
    .local v2, "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v2, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowEquals(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1214
    invoke-virtual {v2, p0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1215
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1217
    .end local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    .end local v2    # "newRow":Landroidx/constraintlayout/solver/ArrayRow;
    :goto_0
    goto :goto_1

    .line 1218
    :cond_1
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v1

    .line 1219
    .restart local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDefinition(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1220
    invoke-virtual {v1, p0, p3}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1221
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1223
    .end local v1    # "row":Landroidx/constraintlayout/solver/ArrayRow;
    :goto_1
    return-void
.end method

.method public addGreaterBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .locals 3
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "hasMatchConstraintWidgets"    # Z

    .line 1067
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1068
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1069
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1070
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1071
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1072
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;I)V
    .locals 3
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # I

    .line 1056
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1057
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1058
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1059
    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;ILandroidx/constraintlayout/solver/SolverVariable;)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1060
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1061
    return-void
.end method

.method public addGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 4
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .line 1041
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1042
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1043
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1044
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowGreaterThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1045
    const/4 v2, 0x7

    if-eq p4, v2, :cond_0

    .line 1046
    iget-object v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1047
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1049
    .end local v2    # "slackValue":F
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1050
    return-void
.end method

.method public addLowerBarrier(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;IZ)V
    .locals 3
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "hasMatchConstraintWidgets"    # Z

    .line 1100
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1101
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1102
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1103
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1104
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1105
    return-void
.end method

.method public addLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;II)V
    .locals 4
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "margin"    # I
    .param p4, "strength"    # I

    .line 1085
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v0

    .line 1086
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 1087
    .local v1, "slack":Landroidx/constraintlayout/solver/SolverVariable;
    const/4 v2, 0x0

    iput v2, v1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 1088
    invoke-virtual {v0, p1, p2, v1, p3}, Landroidx/constraintlayout/solver/ArrayRow;->createRowLowerThan(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1089
    const/4 v2, 0x7

    if-eq p4, v2, :cond_0

    .line 1090
    iget-object v2, v0, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->get(Landroidx/constraintlayout/solver/SolverVariable;)F

    move-result v2

    .line 1091
    .local v2, "slackValue":F
    const/high16 v3, -0x40800000    # -1.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    invoke-virtual {p0, v0, v3, p4}, Landroidx/constraintlayout/solver/LinearSystem;->addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V

    .line 1093
    .end local v2    # "slackValue":F
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1094
    return-void
.end method

.method public addRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;FI)V
    .locals 7
    .param p1, "a"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "b"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "c"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p4, "d"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p5, "ratio"    # F
    .param p6, "strength"    # I

    .line 1138
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/LinearSystem;->createRow()Landroidx/constraintlayout/solver/ArrayRow;

    move-result-object v6

    .line 1139
    .local v6, "row":Landroidx/constraintlayout/solver/ArrayRow;
    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/constraintlayout/solver/ArrayRow;->createRowDimensionRatio(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1140
    const/4 v0, 0x7

    if-eq p6, v0, :cond_0

    .line 1141
    invoke-virtual {v6, p0, p6}, Landroidx/constraintlayout/solver/ArrayRow;->addError(Landroidx/constraintlayout/solver/LinearSystem;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 1143
    :cond_0
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/solver/LinearSystem;->addConstraint(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 1144
    return-void
.end method

.method addSingleError(Landroidx/constraintlayout/solver/ArrayRow;II)V
    .locals 2
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "sign"    # I
    .param p3, "strength"    # I

    .line 252
    const/4 v0, 0x0

    .line 261
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p0, p3, v0}, Landroidx/constraintlayout/solver/LinearSystem;->createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    .line 262
    .local v1, "error":Landroidx/constraintlayout/solver/SolverVariable;
    invoke-virtual {p1, v1, p2}, Landroidx/constraintlayout/solver/ArrayRow;->addSingleError(Landroidx/constraintlayout/solver/SolverVariable;I)Landroidx/constraintlayout/solver/ArrayRow;

    .line 263
    return-void
.end method

.method final cleanupRows()V
    .locals 7

    .line 461
    const/4 v0, 0x0

    .line 462
    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v0, v1, :cond_3

    .line 463
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v1, v1, v0

    .line 464
    .local v1, "current":Landroidx/constraintlayout/solver/ArrayRow;
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v2, v2, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 465
    iput-boolean v3, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 467
    :cond_0
    iget-boolean v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-eqz v2, :cond_2

    .line 468
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v4, v1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    iput v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    .line 469
    iget-object v2, v1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v2, v1}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 470
    move v2, v0

    .local v2, "j":I
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_1

    .line 471
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v5, v2, 0x1

    aget-object v5, v4, v5

    aput-object v5, v4, v2

    .line 470
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 473
    .end local v2    # "j":I
    :cond_1
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x0

    aput-object v6, v2, v5

    .line 474
    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 475
    add-int/lit8 v0, v0, -0x1

    .line 477
    :cond_2
    nop

    .end local v1    # "current":Landroidx/constraintlayout/solver/ArrayRow;
    add-int/2addr v0, v3

    .line 478
    goto :goto_0

    .line 479
    :cond_3
    return-void
.end method

.method public createErrorVariable(ILjava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5
    .param p1, "strength"    # I
    .param p2, "prefix"    # Ljava/lang/String;

    .line 286
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 287
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->errors:J

    .line 289
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    .line 290
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 292
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->ERROR:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-direct {p0, v0, p2}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 293
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 294
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 295
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 296
    iput p1, v0, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    .line 297
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 298
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/solver/LinearSystem$Row;->addError(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 299
    return-object v0
.end method

.method public createExtraVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 229
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 230
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->extravariables:J

    .line 232
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    .line 233
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 235
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 236
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 237
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 238
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 239
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 240
    return-object v0
.end method

.method public createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 4
    .param p1, "anchor"    # Ljava/lang/Object;

    .line 173
    if-nez p1, :cond_0

    .line 174
    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    .line 177
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 179
    :cond_1
    const/4 v0, 0x0

    .line 180
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    instance-of v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    if-eqz v1, :cond_5

    .line 181
    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 182
    if-nez v0, :cond_2

    .line 183
    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->resetSolverVariable(Landroidx/constraintlayout/solver/Cache;)V

    .line 184
    move-object v1, p1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 186
    :cond_2
    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    if-gt v1, v3, :cond_3

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-object v1, v1, v3

    if-nez v1, :cond_5

    .line 189
    :cond_3
    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-eq v1, v2, :cond_4

    .line 190
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 192
    :cond_4
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 193
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 194
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 195
    sget-object v1, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    iput-object v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 196
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 199
    :cond_5
    return-object v0
.end method

.method public createRow()Landroidx/constraintlayout/solver/ArrayRow;
    .locals 3

    .line 203
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->arrayRowPool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/ArrayRow;

    .line 204
    .local v0, "row":Landroidx/constraintlayout/solver/ArrayRow;
    if-nez v0, :cond_0

    .line 205
    new-instance v1, Landroidx/constraintlayout/solver/ArrayRow;

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-direct {v1, v2}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    move-object v0, v1

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/ArrayRow;->reset()V

    .line 209
    :goto_0
    invoke-static {}, Landroidx/constraintlayout/solver/SolverVariable;->increaseErrorId()V

    .line 210
    return-object v0
.end method

.method public createSlackVariable()Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5

    .line 214
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 215
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->slackvariables:J

    .line 217
    :cond_0
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    if-lt v0, v1, :cond_1

    .line 218
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->increaseTableSize()V

    .line 220
    :cond_1
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->SLACK:Landroidx/constraintlayout/solver/SolverVariable$Type;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->acquireSolverVariable(Landroidx/constraintlayout/solver/SolverVariable$Type;Ljava/lang/String;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 221
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 222
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 223
    iput v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    .line 224
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    aput-object v0, v1, v2

    .line 225
    return-object v0
.end method

.method displayReadableRows()V
    .locals 4

    .line 905
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 906
    const-string v0, " #  "

    .line 907
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_0

    .line 908
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 909
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n #  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 911
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    if-eqz v1, :cond_1

    .line 912
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Goal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 914
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 915
    return-void
.end method

.method displaySystemInformations()V
    .locals 7

    .line 951
    const/4 v0, 0x0

    .line 952
    .local v0, "count":I
    const/4 v1, 0x0

    .line 953
    .local v1, "rowSize":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    if-ge v2, v3, :cond_1

    .line 954
    iget-object v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 955
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v3

    add-int/2addr v1, v3

    .line 953
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 958
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .line 959
    .local v2, "actualRowSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_3

    .line 960
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v3

    if-eqz v4, :cond_2

    .line 961
    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v4

    add-int/2addr v2, v4

    .line 959
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 965
    .end local v3    # "i":I
    :cond_3
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Linear System -> Table size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->TABLE_SIZE:I

    mul-int/2addr v5, v5

    .line 966
    invoke-direct {p0, v5}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") -- row sizes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 967
    invoke-direct {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 968
    invoke-direct {p0, v2}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " rows: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxRows:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " cols: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroidx/constraintlayout/solver/LinearSystem;->mMaxColumns:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " occupied cells, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 971
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getDisplaySize(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 965
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 973
    return-void
.end method

.method public displayVariablesReadableRows()V
    .locals 5

    .line 919
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->displaySolverVariables()V

    .line 920
    const-string v0, ""

    .line 921
    .local v0, "s":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    const-string v3, "\n"

    if-ge v1, v2, :cond_1

    .line 922
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    iget-object v2, v2, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->mType:Landroidx/constraintlayout/solver/SolverVariable$Type;

    sget-object v4, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    if-ne v2, v4, :cond_0

    .line 923
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Landroidx/constraintlayout/solver/ArrayRow;->toReadableString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 924
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 921
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 929
    return-void
.end method

.method public fillMetrics(Landroidx/constraintlayout/solver/Metrics;)V
    .locals 0
    .param p1, "metrics"    # Landroidx/constraintlayout/solver/Metrics;

    .line 88
    sput-object p1, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    .line 89
    return-void
.end method

.method public getCache()Landroidx/constraintlayout/solver/Cache;
    .locals 1

    .line 1002
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    return-object v0
.end method

.method getGoal()Landroidx/constraintlayout/solver/LinearSystem$Row;
    .locals 1

    .line 332
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    return-object v0
.end method

.method public getMemoryUsed()I
    .locals 3

    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, "actualRowSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_1

    .line 935
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 936
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayRow;->sizeInBytes()I

    move-result v2

    add-int/2addr v0, v2

    .line 934
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 939
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method public getNumEquations()I
    .locals 1

    .line 943
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    return v0
.end method

.method public getNumVariables()I
    .locals 1

    .line 945
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    return v0
.end method

.method public getObjectVariableValue(Ljava/lang/Object;)I
    .locals 3
    .param p1, "anchor"    # Ljava/lang/Object;

    .line 347
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;->getSolverVariable()Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 348
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v0, :cond_0

    .line 349
    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1

    .line 351
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method getRow(I)Landroidx/constraintlayout/solver/ArrayRow;
    .locals 1
    .param p1, "n"    # I

    .line 335
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v0, v0, p1

    return-object v0
.end method

.method getValueFor(Ljava/lang/String;)F
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 339
    sget-object v0, Landroidx/constraintlayout/solver/SolverVariable$Type;->UNRESTRICTED:Landroidx/constraintlayout/solver/SolverVariable$Type;

    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 340
    .local v0, "v":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 341
    const/4 v1, 0x0

    return v1

    .line 343
    :cond_0
    iget v1, v0, Landroidx/constraintlayout/solver/SolverVariable;->computedValue:F

    return v1
.end method

.method getVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Landroidx/constraintlayout/solver/SolverVariable$Type;

    .line 362
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    .line 365
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    .line 366
    .local v0, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_1

    .line 367
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/LinearSystem;->createVariable(Ljava/lang/String;Landroidx/constraintlayout/solver/SolverVariable$Type;)Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v0

    .line 369
    :cond_1
    return-object v0
.end method

.method public minimize()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 380
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    const-wide/16 v1, 0x1

    if-eqz v0, :cond_0

    .line 381
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->minimize:J

    .line 386
    :cond_0
    iget-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->graphOptimizer:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->newgraphOptimizer:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    goto :goto_4

    .line 387
    :cond_2
    :goto_0
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_3

    .line 388
    iget-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    add-long/2addr v3, v1

    iput-wide v3, v0, Landroidx/constraintlayout/solver/Metrics;->graphOptimizer:J

    .line 390
    :cond_3
    const/4 v0, 0x1

    .line 391
    .local v0, "fullySolved":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v3, v4, :cond_5

    .line 392
    iget-object v4, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v4, v4, v3

    .line 393
    .local v4, "r":Landroidx/constraintlayout/solver/ArrayRow;
    iget-boolean v5, v4, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    if-nez v5, :cond_4

    .line 394
    const/4 v0, 0x0

    .line 395
    goto :goto_2

    .line 391
    .end local v4    # "r":Landroidx/constraintlayout/solver/ArrayRow;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 398
    .end local v3    # "i":I
    :cond_5
    :goto_2
    if-nez v0, :cond_6

    .line 399
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/solver/LinearSystem;->minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V

    goto :goto_3

    .line 401
    :cond_6
    sget-object v3, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v3, :cond_7

    .line 402
    iget-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    add-long/2addr v4, v1

    iput-wide v4, v3, Landroidx/constraintlayout/solver/Metrics;->fullySolved:J

    .line 404
    :cond_7
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    .line 406
    .end local v0    # "fullySolved":Z
    :goto_3
    nop

    .line 412
    :goto_4
    return-void
.end method

.method minimizeGoal(Landroidx/constraintlayout/solver/LinearSystem$Row;)V
    .locals 5
    .param p1, "goal"    # Landroidx/constraintlayout/solver/LinearSystem$Row;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    if-eqz v0, :cond_0

    .line 420
    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->minimizeGoal:J

    .line 421
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxVariables:J

    .line 422
    sget-object v0, Landroidx/constraintlayout/solver/LinearSystem;->sMetrics:Landroidx/constraintlayout/solver/Metrics;

    iget-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    iget v3, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Landroidx/constraintlayout/solver/Metrics;->maxRows:J

    .line 434
    :cond_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/LinearSystem;->enforceBFS(Landroidx/constraintlayout/solver/LinearSystem$Row;)I

    .line 439
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/solver/LinearSystem;->optimize(Landroidx/constraintlayout/solver/LinearSystem$Row;Z)I

    .line 444
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->computeValues()V

    .line 445
    return-void
.end method

.method public reset()V
    .locals 3

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 146
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    .line 147
    .local v1, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    if-eqz v1, :cond_0

    .line 148
    invoke-virtual {v1}, Landroidx/constraintlayout/solver/SolverVariable;->reset()V

    .line 145
    .end local v1    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->solverVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    invoke-interface {v0, v1, v2}, Landroidx/constraintlayout/solver/Pools$Pool;->releaseAll([Ljava/lang/Object;I)V

    .line 152
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mPoolVariablesCount:I

    .line 154
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariables:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 156
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 158
    :cond_2
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mVariablesID:I

    .line 159
    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mGoal:Landroidx/constraintlayout/solver/LinearSystem$Row;

    invoke-interface {v1}, Landroidx/constraintlayout/solver/LinearSystem$Row;->clear()V

    .line 160
    const/4 v1, 0x1

    iput v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumColumns:I

    .line 161
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-ge v1, v2, :cond_3

    .line 162
    iget-object v2, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    aget-object v2, v2, v1

    iput-boolean v0, v2, Landroidx/constraintlayout/solver/ArrayRow;->used:Z

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 164
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0}, Landroidx/constraintlayout/solver/LinearSystem;->releaseRows()V

    .line 165
    iput v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    .line 166
    return-void
.end method

.method final updateRowFromVariables(Landroidx/constraintlayout/solver/ArrayRow;)V
    .locals 2
    .param p1, "row"    # Landroidx/constraintlayout/solver/ArrayRow;

    .line 452
    iget v0, p0, Landroidx/constraintlayout/solver/LinearSystem;->mNumRows:I

    if-lez v0, :cond_0

    .line 453
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget-object v1, p0, Landroidx/constraintlayout/solver/LinearSystem;->mRows:[Landroidx/constraintlayout/solver/ArrayRow;

    invoke-virtual {v0, p1, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->updateFromSystem(Landroidx/constraintlayout/solver/ArrayRow;[Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 454
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    iget v0, v0, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->currentSize:I

    if-nez v0, :cond_0

    .line 455
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->isSimpleDefinition:Z

    .line 458
    :cond_0
    return-void
.end method
