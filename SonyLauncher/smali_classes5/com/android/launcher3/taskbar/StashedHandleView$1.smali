.class Lcom/android/launcher3/taskbar/StashedHandleView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StashedHandleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/taskbar/StashedHandleView;->updateHandleColor(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/taskbar/StashedHandleView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/taskbar/StashedHandleView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/taskbar/StashedHandleView;

    .line 94
    iput-object p1, p0, Lcom/android/launcher3/taskbar/StashedHandleView$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/taskbar/StashedHandleView$1;->this$0:Lcom/android/launcher3/taskbar/StashedHandleView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/taskbar/StashedHandleView;->-$$Nest$fputmColorChangeAnim(Lcom/android/launcher3/taskbar/StashedHandleView;Landroid/animation/ObjectAnimator;)V

    .line 98
    return-void
.end method
