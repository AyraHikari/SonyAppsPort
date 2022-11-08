.class Lcom/android/launcher3/dragndrop/DragController$1;
.super Ljava/lang/Object;
.source "DragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/DragController;->animateDragViewToOriginalPosition(Ljava/lang/Runnable;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragController;

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$originalIcon:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragController;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/dragndrop/DragController;

    .line 310
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController$1;, "Lcom/android/launcher3/dragndrop/DragController$1;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragController$1;->this$0:Lcom/android/launcher3/dragndrop/DragController;

    iput-object p2, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$originalIcon:Landroid/view/View;

    iput-object p3, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 313
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragController$1;, "Lcom/android/launcher3/dragndrop/DragController$1;"
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$originalIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 314
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragController$1;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 317
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 319
    :cond_1
    return-void
.end method
