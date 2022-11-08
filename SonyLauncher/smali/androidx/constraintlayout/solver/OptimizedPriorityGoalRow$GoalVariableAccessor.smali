.class Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;
.super Ljava/lang/Object;
.source "OptimizedPriorityGoalRow.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoalVariableAccessor"
.end annotation


# instance fields
.field row:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

.field final synthetic this$0:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

.field variable:Landroidx/constraintlayout/solver/SolverVariable;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;
    .param p2, "row"    # Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    .line 35
    iput-object p1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->row:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    .line 37
    return-void
.end method

.method private final alreadyInGoal()Z
    .locals 3

    .line 44
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    invoke-static {v1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->access$000(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 45
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    invoke-static {v1}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->access$100(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)[Landroidx/constraintlayout/solver/SolverVariable;

    move-result-object v1

    aget-object v1, v1, v0

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-ne v1, v2, :cond_0

    .line 46
    const/4 v1, 0x1

    return v1

    .line 44
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4
    .param p1, "other"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 88
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v1, v0

    iget-object v3, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 89
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    .line 90
    .local v1, "value":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 91
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 87
    .end local v1    # "value":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addToGoal(Landroidx/constraintlayout/solver/SolverVariable;F)Z
    .locals 8
    .param p1, "other"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "value"    # F

    .line 54
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-boolean v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->inGoal:Z

    const v1, 0x38d1b717    # 1.0E-4f

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 55
    const/4 v0, 0x1

    .line 56
    .local v0, "empty":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 57
    iget-object v5, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v6, v5, v4

    iget-object v7, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v7, v7, v4

    mul-float/2addr v7, p2

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 58
    iget-object v5, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v5, v5, v4

    .line 59
    .local v5, "v":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_0

    .line 60
    iget-object v6, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v3, v6, v4

    goto :goto_1

    .line 62
    :cond_0
    const/4 v0, 0x0

    .line 56
    .end local v5    # "v":F
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 65
    .end local v4    # "i":I
    :cond_1
    if-eqz v0, :cond_2

    .line 66
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->this$0:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-static {v1, v2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->access$200(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;Landroidx/constraintlayout/solver/SolverVariable;)V

    .line 68
    .end local v0    # "empty":Z
    :cond_2
    nop

    .line 83
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_6

    .line 70
    iget-object v4, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v4, v4, v0

    .line 71
    .local v4, "strength":F
    cmpl-float v5, v4, v3

    if-eqz v5, :cond_5

    .line 72
    mul-float v5, p2, v4

    .line 73
    .restart local v5    # "v":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v1

    if-gez v6, :cond_4

    .line 74
    const/4 v5, 0x0

    .line 76
    :cond_4
    iget-object v6, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v6, v6, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v5, v6, v0

    .line 77
    .end local v5    # "v":F
    goto :goto_3

    .line 78
    :cond_5
    iget-object v5, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v5, v5, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aput v3, v5, v0

    .line 69
    .end local v4    # "strength":F
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 81
    .end local v0    # "i":I
    :cond_6
    const/4 v0, 0x1

    return v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 136
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/SolverVariable;

    .line 137
    .local v0, "v":Landroidx/constraintlayout/solver/SolverVariable;
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v2, v0, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public init(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 0
    .param p1, "variable"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 40
    iput-object p1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    .line 41
    return-void
.end method

.method public final isNegative()Z
    .locals 5

    .line 97
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 98
    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v2, v2, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 99
    .local v2, "value":F
    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-lez v4, :cond_0

    .line 100
    return v1

    .line 102
    :cond_0
    cmpg-float v1, v2, v3

    if-gez v1, :cond_1

    .line 103
    const/4 v1, 0x1

    return v1

    .line 97
    .end local v2    # "value":F
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public final isNull()Z
    .locals 3

    .line 126
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 127
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 128
    const/4 v1, 0x0

    return v1

    .line 126
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final isSmallerThan(Landroidx/constraintlayout/solver/SolverVariable;)Z
    .locals 5
    .param p1, "other"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 110
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 111
    iget-object v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v2, v2, v0

    .line 112
    .local v2, "comparedValue":F
    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v0

    .line 113
    .local v3, "value":F
    cmpl-float v4, v3, v2

    if-nez v4, :cond_0

    .line 114
    nop

    .line 110
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 116
    .restart local v2    # "comparedValue":F
    .restart local v3    # "value":F
    :cond_0
    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    .line 117
    const/4 v1, 0x1

    return v1

    .line 119
    :cond_1
    return v1

    .line 122
    .end local v0    # "i":I
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    :cond_2
    return v1
.end method

.method public reset()V
    .locals 2

    .line 141
    iget-object v0, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v0, v0, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 142
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 145
    const-string v0, "[ "

    .line 146
    .local v0, "result":Ljava/lang/String;
    iget-object v1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    if-eqz v1, :cond_0

    .line 147
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 148
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget-object v3, v3, Landroidx/constraintlayout/solver/SolverVariable;->goalStrengthVector:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 151
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$GoalVariableAccessor;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    return-object v0
.end method
