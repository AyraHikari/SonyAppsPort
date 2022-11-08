.class Lcom/android/launcher3/taskbar/TaskbarEduController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskbarEduController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarEduController;->startAnim(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarEduController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarEduController;

    .line 113
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarEduController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarEduController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarEduController;->-$$Nest$fputmAnim(Lcom/android/launcher3/taskbar/TaskbarEduController;Landroid/animation/Animator;)V

    .line 117
    return-void
.end method
