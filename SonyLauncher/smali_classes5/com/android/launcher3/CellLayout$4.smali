.class Lcom/android/launcher3/CellLayout$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field cancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$item:Lcom/android/launcher3/Reorderable;

.field final synthetic val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout$LayoutParams;Lcom/android/launcher3/Reorderable;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/CellLayout;

    .line 1124
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$4;->this$0:Lcom/android/launcher3/CellLayout;

    iput-object p2, p0, Lcom/android/launcher3/CellLayout$4;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/launcher3/CellLayout$4;->val$item:Lcom/android/launcher3/Reorderable;

    iput-object p4, p0, Lcom/android/launcher3/CellLayout$4;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 1125
    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/CellLayout$4;->cancelled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/CellLayout$4;->cancelled:Z

    .line 1141
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 1130
    iget-boolean v0, p0, Lcom/android/launcher3/CellLayout$4;->cancelled:Z

    if-nez v0, :cond_0

    .line 1131
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$4;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 1132
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$4;->val$item:Lcom/android/launcher3/Reorderable;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/android/launcher3/Reorderable;->setReorderPreviewOffset(FF)V

    .line 1133
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$4;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1135
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$4;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$4;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$4;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mReorderAnimators:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/launcher3/CellLayout$4;->val$lp:Lcom/android/launcher3/CellLayout$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    :cond_1
    return-void
.end method
