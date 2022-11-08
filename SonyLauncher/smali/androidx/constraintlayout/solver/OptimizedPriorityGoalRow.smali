.class public Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "OptimizedPriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final NOT_FOUND:I = -0x1

.field private static final epsilon:F = 1.0E-4f


# instance fields
.field private TABLE_SIZE:I

.field accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

.field private arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

.field mCache:Landroidx/constraintlayout/solver/Cache;

.field private numGoals:I

.field private sortArray:[Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 2
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 166
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 26
    const/16 v0, 0x80

    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->TABLE_SIZE:I

    .line 27
    new-array v1, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 28
    new-array v0, v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    .line 30
    new-instance v0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-direct {v0, p0, p0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;-><init>(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)V

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    .line 167
    iput-object p1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 168
    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)I
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    .line 22
    iget v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    return v0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)[Landroidx/constraintlayout/solver/SolverVariable;
    .locals 1
    .param p0, "x0"    # Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    .line 22
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    return-object v0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 0
    .param p0, "x0"    # Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;
    .param p1, "x1"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 22
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    return-void
.end method

.method private final addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 5
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 204
    iget v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 205
    array-length v0, v2

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 206
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/solver/SolverVariable;

    iput-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    .line 208
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    aput-object p1, v0, v2

    .line 209
    add-int/2addr v2, v1

    iput v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    .line 211
    if-le v2, v1, :cond_2

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    iget v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    if-le v0, v2, :cond_2

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_1

    .line 213
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    const/4 v3, 0x0

    new-instance v4, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;-><init>(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)V

    invoke-static {v0, v3, v2, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 221
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v0, v2, :cond_2

    .line 222
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->sortArray:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v3, v3, v0

    aput-object v3, v2, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v0    # "i":I
    :cond_2
    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    .line 227
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 228
    return-void
.end method

.method private final removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 231
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v0, v1, :cond_2

    .line 232
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 233
    move v1, v0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    add-int/lit8 v3, v2, -0x1

    if-ge v1, v3, :cond_0

    .line 234
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    add-int/lit8 v3, v1, 0x1

    aget-object v3, v2, v3

    aput-object v3, v2, v1

    .line 233
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    .end local v1    # "j":I
    :cond_0
    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    .line 237
    const/4 v1, 0x0

    iput-boolean v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    .line 238
    return-void

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 241
    .end local v0    # "i":I
    :cond_2
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 3
    .param p1, "error"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 197
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 198
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->reset()V

    .line 199
    iget-object v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 200
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 201
    return-void
.end method

.method public clear()V
    .locals 1

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->constantValue:F

    .line 161
    return-void
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "avoid"    # [Z

    .line 174
    const/4 v0, -0x1

    .line 175
    .local v0, "pivot":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    const/4 v3, -0x1

    if-ge v1, v2, :cond_3

    .line 176
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 177
    .local v2, "variable":Landroidx/constraintlayout/solver/SolverVariable;
    iget v4, v2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    aget-boolean v4, p2, v4

    if-eqz v4, :cond_0

    .line 178
    goto :goto_1

    .line 180
    :cond_0
    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 181
    if-ne v0, v3, :cond_1

    .line 182
    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->isNegative()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 183
    move v0, v1

    goto :goto_1

    .line 185
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 186
    move v0, v1

    .line 175
    .end local v2    # "variable":Landroidx/constraintlayout/solver/SolverVariable;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v1    # "i":I
    :cond_3
    if-ne v0, v3, :cond_4

    .line 190
    const/4 v1, 0x0

    return-object v1

    .line 192
    :cond_4
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 272
    const-string v0, ""

    .line 273
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " goal -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->constantValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->numGoals:I

    if-ge v1, v2, :cond_0

    .line 275
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->arrayGoals:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v2, v2, v1

    .line 276
    .local v2, "v":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 274
    .end local v2    # "v":Landroidx/constraintlayout/solver/SolverVariable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 279
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 9
    .param p1, "definition"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "removeFromDefinition"    # Z

    .line 245
    iget-object v0, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 246
    .local v0, "goalVariable":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v0, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getHead()I

    move-result v1

    .line 251
    .local v1, "current":I
    iget-object v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getCurrentSize()I

    move-result v2

    .line 252
    .local v2, "currentSize":I
    const/4 v3, 0x0

    .line 253
    .local v3, "counter":I
    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    if-ge v3, v2, :cond_2

    .line 254
    iget-object v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v4, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getId(I)I

    move-result v4

    .line 255
    .local v4, "id":I
    iget-object v5, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getValue(I)F

    move-result v5

    .line 256
    .local v5, "value":F
    iget-object v6, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v6, v6, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    aget-object v6, v6, v4

    .line 258
    .local v6, "solverVariable":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v7, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->init(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 259
    iget-object v7, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->accessor:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;

    invoke-virtual {v7, v0, v5}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 260
    invoke-direct {p0, v6}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 262
    :cond_1
    iget v7, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->constantValue:F

    iget v8, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->constantValue:F

    .line 264
    iget-object v7, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v7, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getNextIndice(I)I

    move-result v1

    .line 265
    .end local v4    # "id":I
    .end local v5    # "value":F
    .end local v6    # "solverVariable":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_0

    .line 267
    :cond_2
    invoke-direct {p0, v0}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->removeGoal(Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 268
    return-void
.end method
