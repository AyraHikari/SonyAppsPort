.class Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;
.super Ljava/lang/Object;
.source "TaskbarEduController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/taskbar/TaskbarEduController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TaskbarEduCallbacks"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarEduController;

    .line 205
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$onPageChanged$0$com-android-launcher3-taskbar-TaskbarEduController$TaskbarEduCallbacks(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->close(Z)V

    return-void
.end method

.method synthetic lambda$onPageChanged$1$com-android-launcher3-taskbar-TaskbarEduController$TaskbarEduCallbacks(ILandroid/view/View;)V
    .locals 2
    .param p1, "currentPage"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->snapToPage(I)V

    return-void
.end method

.method synthetic lambda$onPageChanged$2$com-android-launcher3-taskbar-TaskbarEduController$TaskbarEduCallbacks(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->close(Z)V

    return-void
.end method

.method synthetic lambda$onPageChanged$3$com-android-launcher3-taskbar-TaskbarEduController$TaskbarEduCallbacks(ILandroid/view/View;)V
    .locals 2
    .param p1, "currentPage"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 219
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduView;->snapToPage(I)V

    return-void
.end method

.method onPageChanged(II)V
    .locals 3
    .param p1, "currentPage"    # I
    .param p2, "pageCount"    # I

    .line 207
    if-nez p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->taskbar_edu_close:I

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarEduView;->updateStartButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->taskbar_edu_previous:I

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarEduView;->updateStartButton(ILandroid/view/View$OnClickListener;)V

    .line 214
    :goto_0
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->taskbar_edu_done:I

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda2;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarEduView;->updateEndButton(ILandroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 218
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-static {v0}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fgetmTaskbarEduView(Lcom/android/launcher3/taskbar/TaskbarEduController;)Lcom/android/launcher3/taskbar/TaskbarEduView;

    move-result-object v0

    sget v1, Lcom/android/launcher3/R$string;->taskbar_edu_next:I

    new-instance v2, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks$$ExternalSyntheticLambda3;-><init>(Lcom/android/launcher3/taskbar/TaskbarEduController$TaskbarEduCallbacks;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/taskbar/TaskbarEduView;->updateEndButton(ILandroid/view/View$OnClickListener;)V

    .line 221
    :goto_1
    return-void
.end method
