.class Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;
.super Ljava/lang/Object;
.source "OptimizedPriorityGoalRow.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;->addToGoal(Landroidx/constraintlayout/solver/SolverVariable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/constraintlayout/solver/SolverVariable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;)V
    .locals 0
    .param p1, "this$0"    # Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    .line 215
    iput-object p1, p0, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;->this$0:Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)I
    .locals 2
    .param p1, "variable1"    # Landroidx/constraintlayout/solver/SolverVariable;
    .param p2, "variable2"    # Landroidx/constraintlayout/solver/SolverVariable;

    .line 218
    iget v0, p1, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    iget v1, p2, Landroidx/constraintlayout/solver/SolverVariable;->id:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 215
    check-cast p1, Landroidx/constraintlayout/solver/SolverVariable;

    check-cast p2, Landroidx/constraintlayout/solver/SolverVariable;

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/solver/OptimizedPriorityGoalRow$1;->compare(Landroidx/constraintlayout/solver/SolverVariable;Landroidx/constraintlayout/solver/SolverVariable;)I

    move-result p1

    return p1
.end method
