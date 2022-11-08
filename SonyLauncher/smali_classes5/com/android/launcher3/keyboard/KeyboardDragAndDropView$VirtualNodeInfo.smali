.class Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
.super Ljava/lang/Object;
.source "KeyboardDragAndDropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VirtualNodeInfo"
.end annotation


# instance fields
.field public final delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

.field public final id:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;I)V
    .locals 0
    .param p1, "delegate"    # Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;
    .param p2, "id"    # I

    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    iput p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    .line 297
    iput-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    .line 298
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 302
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 303
    return v0

    .line 305
    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 306
    return v2

    .line 308
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;

    .line 309
    .local v1, "that":Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;
    iget v3, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    iget v4, v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    iget-object v4, v1, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getBounds(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "nodeInfo"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 318
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    iget v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 319
    invoke-virtual {p1, p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 320
    return-void
.end method

.method public hashCode()I
    .locals 3

    .line 324
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public populate(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 2
    .param p1, "nodeInfo"    # Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    .line 313
    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->delegate:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    iget v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$VirtualNodeInfo;->id:I

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;->onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 314
    return-object p1
.end method
