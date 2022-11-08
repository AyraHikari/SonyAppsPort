.class public final synthetic Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView$$ExternalSyntheticLambda1;->f$0:Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;

    check-cast p1, Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/KeyboardDragAndDropView;->lambda$getNextSelection$1$com-android-launcher3-keyboard-KeyboardDragAndDropView(Lcom/android/launcher3/accessibility/DragAndDropAccessibilityDelegate;)V

    return-void
.end method
