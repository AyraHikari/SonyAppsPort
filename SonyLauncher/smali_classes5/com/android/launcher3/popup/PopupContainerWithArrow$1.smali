.class Lcom/android/launcher3/popup/PopupContainerWithArrow$1;
.super Ljava/lang/Object;
.source "PopupContainerWithArrow.java"

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/PopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field final synthetic val$updateIconUi:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 435
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow$1;, "Lcom/android/launcher3/popup/PopupContainerWithArrow$1;"
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iput-boolean p2, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->val$updateIconUi:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;
    .param p2, "dragStarted"    # Z

    .line 459
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow$1;, "Lcom/android/launcher3/popup/PopupContainerWithArrow$1;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->val$updateIconUi:Z

    if-nez v0, :cond_0

    .line 460
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    .line 463
    if-eqz p2, :cond_1

    .line 465
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 470
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-nez v0, :cond_2

    .line 472
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    .line 476
    :cond_2
    :goto_0
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 2
    .param p1, "dragObject"    # Lcom/android/launcher3/DropTarget$DragObject;

    .line 444
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow$1;, "Lcom/android/launcher3/popup/PopupContainerWithArrow$1;"
    iget-boolean v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->val$updateIconUi:Z

    if-nez v0, :cond_0

    .line 445
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-boolean v0, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mIsAboveIcon:Z

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    .line 450
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    goto :goto_0

    .line 453
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-$$Nest$fgetmOriginalIcon(Lcom/android/launcher3/popup/PopupContainerWithArrow;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setVisibility(I)V

    .line 455
    :goto_0
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 2
    .param p1, "distanceDragged"    # D

    .line 439
    .local p0, "this":Lcom/android/launcher3/popup/PopupContainerWithArrow$1;, "Lcom/android/launcher3/popup/PopupContainerWithArrow$1;"
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    invoke-static {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->-$$Nest$fgetmStartDragThreshold(Lcom/android/launcher3/popup/PopupContainerWithArrow;)I

    move-result v0

    int-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
