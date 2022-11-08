.class Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
.super Ljava/lang/Object;
.source "PriorityGoalRow.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/solver/PriorityGoalRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GoalVariable"
.end annotation


# instance fields
.field strengths:[F

.field variableId:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    return-void
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;)V
    .locals 4
    .param p1, "added"    # Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    .line 63
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 64
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v2, v1, v0

    iget-object v3, p1, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v3, v3, v0

    add-float/2addr v2, v3

    aput v2, v1, v0

    .line 65
    aget v1, v1, v0

    .line 66
    .local v1, "value":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x38d1b717    # 1.0E-4f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 67
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    const/4 v3, 0x0

    aput v3, v2, v0

    .line 63
    .end local v1    # "value":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 112
    move-object v0, p1

    check-cast v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    .line 113
    .local v0, "v":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    iget v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    iget v2, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    sub-int/2addr v1, v2

    return v1
.end method

.method public final isNegative()Z
    .locals 6

    .line 73
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 74
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v3, v2, v0

    .line 75
    .local v3, "value":F
    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-lez v5, :cond_0

    .line 76
    return v1

    .line 78
    :cond_0
    aget v1, v2, v0

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 79
    const/4 v1, 0x1

    return v1

    .line 73
    .end local v3    # "value":F
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 82
    .end local v0    # "i":I
    :cond_2
    return v1
.end method

.method public final isNull()Z
    .locals 3

    .line 102
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 103
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v1, v1, v0

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 104
    const/4 v1, 0x0

    return v1

    .line 102
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final isSmallerThan(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;)Z
    .locals 5
    .param p1, "variable"    # Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    .line 86
    const/4 v0, 0x7

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x0

    if-ltz v0, :cond_2

    .line 87
    iget-object v2, p1, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v2, v2, v0

    .line 88
    .local v2, "comparedValue":F
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v3, v3, v0

    .line 89
    .local v3, "value":F
    cmpl-float v4, v3, v2

    if-nez v4, :cond_0

    .line 90
    nop

    .line 86
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 92
    .restart local v2    # "comparedValue":F
    .restart local v3    # "value":F
    :cond_0
    cmpg-float v4, v3, v2

    if-gez v4, :cond_1

    .line 93
    const/4 v1, 0x1

    return v1

    .line 95
    :cond_1
    return v1

    .line 98
    .end local v0    # "i":I
    .end local v2    # "comparedValue":F
    .end local v3    # "value":F
    :cond_2
    return v1
.end method

.method public reset()V
    .locals 2

    .line 40
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    .line 42
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->toString(Landroidx/constraintlayout/solver/Cache;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Landroidx/constraintlayout/solver/Cache;)Ljava/lang/String;
    .locals 4
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 49
    const-string v0, "[ "

    .line 50
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 51
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    return-object v0
.end method
