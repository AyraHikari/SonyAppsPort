.class Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->animate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    .line 2218
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 2221
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->setInitialAnimationValuesToBaseline()V

    .line 2222
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation$1;->this$1:Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/CellLayout$ReorderPreviewAnimation;->repeating:Z

    .line 2223
    return-void
.end method
