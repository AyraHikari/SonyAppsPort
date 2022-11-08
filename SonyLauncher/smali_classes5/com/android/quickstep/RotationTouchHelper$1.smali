.class Lcom/android/quickstep/RotationTouchHelper$1;
.super Ljava/lang/Object;
.source "RotationTouchHelper.java"

# interfaces
.implements Lcom/android/systemui/shared/system/TaskStackChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/RotationTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/quickstep/RotationTouchHelper;


# direct methods
.method constructor <init>(Lcom/android/quickstep/RotationTouchHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/quickstep/RotationTouchHelper;

    .line 65
    iput-object p1, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityRotation(I)V
    .locals 2
    .param p1, "displayId"    # I

    .line 80
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fgetmDisplayId(Lcom/android/quickstep/RotationTouchHelper;)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 81
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fputmPrioritizeDeviceRotation(Lcom/android/quickstep/RotationTouchHelper;Z)V

    .line 85
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fgetmInOverview(Lcom/android/quickstep/RotationTouchHelper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fgetmExitOverviewRunnable(Lcom/android/quickstep/RotationTouchHelper;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 89
    :cond_1
    return-void
.end method

.method public onRecentTaskListFrozenChanged(Z)V
    .locals 2
    .param p1, "frozen"    # Z

    .line 68
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0, p1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fputmTaskListFrozen(Lcom/android/quickstep/RotationTouchHelper;Z)V

    .line 69
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    invoke-static {v0}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$fgetmInOverview(Lcom/android/quickstep/RotationTouchHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/RotationTouchHelper$1;->this$0:Lcom/android/quickstep/RotationTouchHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/quickstep/RotationTouchHelper;->-$$Nest$menableMultipleRegions(Lcom/android/quickstep/RotationTouchHelper;Z)V

    .line 73
    return-void

    .line 70
    :cond_1
    :goto_0
    return-void
.end method
