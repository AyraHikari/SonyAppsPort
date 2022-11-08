.class Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "DragView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 537
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F
    .locals 1
    .param p1, "object"    # Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    .line 540
    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->-$$Nest$fgetmValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 537
    check-cast p1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;->getValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)V
    .locals 1
    .param p1, "object"    # Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;
    .param p2, "value"    # F

    .line 545
    invoke-static {p1, p2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->-$$Nest$fputmValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)V

    .line 546
    invoke-static {p1}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;->-$$Nest$fgetmView(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 547
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 537
    check-cast p1, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue$1;->setValue(Lcom/android/launcher3/dragndrop/DragView$SpringFloatValue;F)V

    return-void
.end method
