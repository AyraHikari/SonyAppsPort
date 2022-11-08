.class public final synthetic Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

.field public final synthetic f$1:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    iput-object p2, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    iget-object v1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->lambda$getNextSelection$0$com-android-launcher3-keyboard-KeyboardDragAndDropView(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;Ljava/lang/Integer;)V

    return-void
.end method
