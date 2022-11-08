.class Lcom/android/launcher3/touch/ItemLongClickListener$1;
.super Ljava/lang/Object;
.source "ItemLongClickListener.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/touch/ItemLongClickListener;->onAllAppsItemLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$dragController:Lcom/android/launcher3/dragndrop/DragController;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/launcher3/touch/ItemLongClickListener$1;->val$v:Landroid/view/View;

    iput-object p2, p0, Lcom/android/launcher3/touch/ItemLongClickListener$1;->val$dragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDragEnd()V
    .locals 4

    .line 116
    const/4 v0, 0x1

    .line 117
    .local v0, "visible":Z
    iget-object v1, p0, Lcom/android/launcher3/touch/ItemLongClickListener$1;->val$v:Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/BubbleTextView;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 118
    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    .line 119
    .local v1, "itemView":Lcom/android/launcher3/BubbleTextView;
    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->shouldBeSetToInvisibleOnDragEnd()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    invoke-virtual {v1, v3}, Lcom/android/launcher3/BubbleTextView;->setToInvisibleOnDragEnd(Z)V

    .line 121
    const/4 v0, 0x0

    .line 125
    .end local v1    # "itemView":Lcom/android/launcher3/BubbleTextView;
    :cond_0
    if-eqz v0, :cond_1

    .line 126
    iget-object v1, p0, Lcom/android/launcher3/touch/ItemLongClickListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/touch/ItemLongClickListener$1;->val$dragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/dragndrop/DragController;->removeDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    .line 130
    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "options"    # Lcom/android/launcher3/dragndrop/DragOptions;

    .line 111
    iget-object v0, p0, Lcom/android/launcher3/touch/ItemLongClickListener$1;->val$v:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    return-void
.end method
