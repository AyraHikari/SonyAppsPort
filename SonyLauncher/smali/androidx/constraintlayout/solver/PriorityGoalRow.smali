.class public Landroidx/constraintlayout/solver/PriorityGoalRow;
.super Landroidx/constraintlayout/solver/ArrayRow;
.source "PriorityGoalRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;,
        Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final epsilon:F = 1.0E-4f

.field static sCache:Landroidx/constraintlayout/solver/Cache;

.field static sRowVariable:Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;


# instance fields
.field goals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;",
            ">;"
        }
    .end annotation
.end field

.field keyedGoals:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;",
            ">;"
        }
    .end annotation
.end field

.field mCache:Landroidx/constraintlayout/solver/Cache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    const/4 v0, 0x0

    sput-object v0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sCache:Landroidx/constraintlayout/solver/Cache;

    .line 31
    new-instance v0, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;-><init>()V

    sput-object v0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sRowVariable:Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    return-void
.end method

.method public constructor <init>(Landroidx/constraintlayout/solver/Cache;)V
    .locals 1
    .param p1, "cache"    # Landroidx/constraintlayout/solver/Cache;

    .line 138
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/ArrayRow;-><init>(Landroidx/constraintlayout/solver/Cache;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    .line 139
    iput-object p1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    .line 140
    return-void
.end method


# virtual methods
.method public addError(Landroidx/constraintlayout/solver/SolverVariable;)V
    .locals 4
    .param p1, "error"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 168
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v0, v0, Landroidx/constraintlayout/solver/Cache;->goalVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v0}, Landroidx/constraintlayout/solver/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    .line 169
    .local v0, "goalVariable":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    if-nez v0, :cond_0

    .line 170
    new-instance v1, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;-><init>()V

    move-object v0, v1

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->reset()V

    .line 174
    :goto_0
    iget-object v1, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    iget v2, p1, Landroidx/constraintlayout/solver/SolverVariable;->strength:I

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 175
    iget v1, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput v1, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    .line 176
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget v2, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-virtual {p1, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 179
    return-void
.end method

.method public clear()V
    .locals 4

    .line 124
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 125
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 126
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 127
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    .line 128
    .local v2, "v":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v3, v3, Landroidx/constraintlayout/solver/Cache;->goalVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v3, v2}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 126
    .end local v2    # "v":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 132
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 133
    const/4 v1, 0x0

    iput v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    .line 134
    return-void
.end method

.method final create(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    .locals 6
    .param p1, "key"    # Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    .param p2, "error"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p3, "value"    # F

    .line 182
    new-instance v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;-><init>()V

    .line 183
    .local v0, "goalVariable":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_2

    .line 184
    iget-object v2, p1, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aget v2, v2, v1

    .line 185
    .local v2, "strength":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 186
    mul-float v3, p3, v2

    .line 187
    .local v3, "v":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x38d1b717    # 1.0E-4f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 188
    const/4 v3, 0x0

    .line 190
    :cond_0
    iget-object v4, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->strengths:[F

    aput v3, v4, v1

    .line 183
    .end local v2    # "strength":F
    .end local v3    # "v":F
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    .end local v1    # "i":I
    :cond_2
    iget v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iput v1, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    .line 199
    return-object v0
.end method

.method final find(I)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    .locals 2
    .param p1, "id"    # I

    .line 242
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    return-object v0
.end method

.method public getPivotCandidate(Landroidx/constraintlayout/solver/LinearSystem;[Z)Landroidx/constraintlayout/solver/SolverVariable;
    .locals 5
    .param p1, "system"    # Landroidx/constraintlayout/solver/LinearSystem;
    .param p2, "avoid"    # [Z

    .line 144
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    sput-object v0, Landroidx/constraintlayout/solver/PriorityGoalRow;->sCache:Landroidx/constraintlayout/solver/Cache;

    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "pivot":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 147
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 148
    iget-object v3, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    .line 149
    .local v3, "v":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    iget v4, v3, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    aget-boolean v4, p2, v4

    if-eqz v4, :cond_0

    .line 150
    goto :goto_1

    .line 152
    :cond_0
    if-nez v0, :cond_1

    .line 153
    invoke-virtual {v3}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->isNegative()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 154
    move-object v0, v3

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {v3, v0}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->isSmallerThan(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 157
    move-object v0, v3

    .line 147
    .end local v3    # "v":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    .end local v2    # "i":I
    :cond_3
    if-nez v0, :cond_4

    .line 161
    const/4 v2, 0x0

    return-object v2

    .line 163
    :cond_4
    iget-object v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v2, v2, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v3, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    aget-object v2, v2, v3

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 247
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 248
    const-string v0, ""

    .line 249
    .local v0, "result":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " goal -> ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    .line 251
    .local v2, "v":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    invoke-virtual {v2, v4}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->toString(Landroidx/constraintlayout/solver/Cache;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    .end local v2    # "v":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    goto :goto_0

    .line 253
    :cond_0
    return-object v0
.end method

.method public updateFromRow(Landroidx/constraintlayout/solver/ArrayRow;Z)V
    .locals 11
    .param p1, "definition"    # Landroidx/constraintlayout/solver/ArrayRow;
    .param p2, "removeFromDefinition"    # Z

    .line 204
    iget-object v0, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variable:Landroidx/constraintlayout/solver/SolverVariable;

    iget v1, v1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    .line 205
    .local v0, "goalVariable":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    if-nez v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget v2, v0, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v1, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v1, v1, Landroidx/constraintlayout/solver/Cache;->goalVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v1, v0}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 212
    iget-object v1, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getHead()I

    move-result v1

    .line 213
    .local v1, "current":I
    iget-object v2, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    invoke-virtual {v2}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getCurrentSize()I

    move-result v2

    .line 214
    .local v2, "currentSize":I
    const/4 v3, 0x0

    .line 215
    .local v3, "counter":I
    :goto_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    if-ge v3, v2, :cond_3

    .line 216
    iget-object v4, p1, Landroidx/constraintlayout/solver/ArrayRow;->variables:Landroidx/constraintlayout/solver/ArrayLinkedVariables;

    sget-object v5, Landroidx/constraintlayout/solver/PriorityGoalRow;->sRowVariable:Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    invoke-virtual {v4, v5, v1}, Landroidx/constraintlayout/solver/ArrayLinkedVariables;->getVariable(Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;I)I

    move-result v1

    .line 217
    sget-object v4, Landroidx/constraintlayout/solver/PriorityGoalRow;->sRowVariable:Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;

    .line 218
    .local v4, "v":Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;
    iget v5, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->variableId:I

    invoke-virtual {p0, v5}, Landroidx/constraintlayout/solver/PriorityGoalRow;->find(I)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    move-result-object v5

    .line 219
    .local v5, "existing":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    iget v6, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->value:F

    .line 220
    .local v6, "value":F
    iget-object v7, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v7, v7, Landroidx/constraintlayout/solver/Cache;->mIndexedVariables:[Landroidx/constraintlayout/solver/SolverVariable;

    iget v8, v4, Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;->variableId:I

    aget-object v7, v7, v8

    .line 221
    .local v7, "solverVariable":Landroidx/constraintlayout/solver/SolverVariable;
    if-nez v5, :cond_1

    .line 222
    invoke-virtual {p0, v0, v7, v6}, Landroidx/constraintlayout/solver/PriorityGoalRow;->create(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    move-result-object v8

    .line 223
    .local v8, "added":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget v10, v8, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {v7, p0}, Landroidx/constraintlayout/solver/SolverVariable;->addToRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 226
    .end local v8    # "added":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    goto :goto_1

    .line 227
    :cond_1
    invoke-virtual {p0, v0, v7, v6}, Landroidx/constraintlayout/solver/PriorityGoalRow;->create(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;Landroidx/constraintlayout/solver/SolverVariable;F)Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;

    move-result-object v8

    .line 228
    .restart local v8    # "added":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    invoke-virtual {v5, v8}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->add(Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;)V

    .line 229
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->isNull()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 230
    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->goals:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 231
    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->keyedGoals:Ljava/util/HashMap;

    iget v10, v5, Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;->variableId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v9, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->mCache:Landroidx/constraintlayout/solver/Cache;

    iget-object v9, v9, Landroidx/constraintlayout/solver/Cache;->goalVariablePool:Landroidx/constraintlayout/solver/Pools$Pool;

    invoke-interface {v9, v5}, Landroidx/constraintlayout/solver/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {v7, p0}, Landroidx/constraintlayout/solver/SolverVariable;->removeFromRow(Landroidx/constraintlayout/solver/ArrayRow;)V

    .line 236
    .end local v8    # "added":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    :cond_2
    :goto_1
    iget v8, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    iget v9, p1, Landroidx/constraintlayout/solver/ArrayRow;->constantValue:F

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    iput v8, p0, Landroidx/constraintlayout/solver/PriorityGoalRow;->constantValue:F

    .line 237
    .end local v4    # "v":Landroidx/constraintlayout/solver/PriorityGoalRow$RowVariable;
    .end local v5    # "existing":Landroidx/constraintlayout/solver/PriorityGoalRow$GoalVariable;
    .end local v6    # "value":F
    .end local v7    # "solverVariable":Landroidx/constraintlayout/solver/SolverVariable;
    goto :goto_0

    .line 239
    :cond_3
    return-void
.end method
