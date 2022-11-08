.class Lcom/android/launcher3/taskbar/TaskbarStashController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TaskbarStashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/TaskbarStashController;->createAnimToIsStashed(ZJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/TaskbarStashController;

    .line 412
    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 415
    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarStashController$1;->this$0:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->-$$Nest$fputmAnimator(Lcom/android/launcher3/taskbar/TaskbarStashController;Landroid/animation/AnimatorSet;)V

    .line 416
    return-void
.end method
