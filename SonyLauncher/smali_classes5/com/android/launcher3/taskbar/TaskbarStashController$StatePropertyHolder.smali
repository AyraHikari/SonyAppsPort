.class Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;
.super Ljava/lang/Object;
.source "TaskbarStashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarStashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatePropertyHolder"
.end annotation


# instance fields
.field private mIsStashed:Z

.field private mPrevFlags:I

.field private final mStashCondition:Ljava/util/function/IntPredicate;

.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPrevFlags(Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;)I
    .locals 0

    iget p0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    return p0
.end method

.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;Ljava/util/function/IntPredicate;)V
    .locals 0
    .param p2, "stashCondition"    # Ljava/util/function/IntPredicate;

    .line 724
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 725
    iput-object p2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mStashCondition:Ljava/util/function/IntPredicate;

    .line 726
    return-void
.end method


# virtual methods
.method public setState(IJJZ)Landroid/animation/Animator;
    .locals 9
    .param p1, "flags"    # I
    .param p2, "duration"    # J
    .param p4, "startDelay"    # J
    .param p6, "start"    # Z

    .line 745
    iget v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    xor-int v1, v0, p1

    .line 746
    .local v1, "changedFlags":I
    if-eq v0, p1, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->-$$Nest$monStateChangeApplied(Lcom/android/launcher3/taskbar/TaskbarStashController;I)V

    .line 748
    iput p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mPrevFlags:I

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mStashCondition:Ljava/util/function/IntPredicate;

    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    .line 751
    .local v0, "isStashed":Z
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    if-eq v2, v0, :cond_3

    .line 752
    sget-boolean v2, Lcom/android/launcher3/testing/TestProtocol;->sDebugTracing:Z

    if-eqz v2, :cond_1

    .line 753
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    .line 755
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 756
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 757
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    .line 758
    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 753
    const-string v3, "setState: mIsStashed=%b, isStashed=%b, duration=%d, start=:%b"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "b/227657604"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->mIsStashed:Z

    .line 763
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v8, 0x1

    move v3, v0

    move-wide v4, p2

    move-wide v6, p4

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/taskbar/TaskbarStashController;->-$$Nest$mcreateAnimToIsStashed(Lcom/android/launcher3/taskbar/TaskbarStashController;ZJJZ)V

    .line 764
    if-eqz p6, :cond_2

    .line 765
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->-$$Nest$fgetmAnimator(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 767
    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-static {v2}, Lcom/android/launcher3/taskbar/TaskbarStashController;->-$$Nest$fgetmAnimator(Lcom/android/launcher3/taskbar/TaskbarStashController;)Landroid/animation/AnimatorSet;

    move-result-object v2

    return-object v2

    .line 769
    :cond_3
    const/4 v2, 0x0

    return-object v2
.end method

.method public setState(IJZ)Landroid/animation/Animator;
    .locals 7
    .param p1, "flags"    # I
    .param p2, "duration"    # J
    .param p4, "start"    # Z

    .line 732
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/taskbar/TaskbarStashController$StatePropertyHolder;->setState(IJJZ)Landroid/animation/Animator;

    move-result-object v0

    return-object v0
.end method
