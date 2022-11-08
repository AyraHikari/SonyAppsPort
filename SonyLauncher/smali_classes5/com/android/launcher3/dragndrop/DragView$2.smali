.class Lcom/android/launcher3/dragndrop/DragView$2;
.super Ljava/lang/Object;
.source "DragView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/dragndrop/DragView;->animateShift(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/dragndrop/DragView;

.field final synthetic val$shiftX:I

.field final synthetic val$shiftY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/dragndrop/DragView;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/dragndrop/DragView;

    .line 446
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView$2;, "Lcom/android/launcher3/dragndrop/DragView$2;"
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView$2;->val$shiftX:I

    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView$2;->val$shiftY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 449
    .local p0, "this":Lcom/android/launcher3/dragndrop/DragView$2;, "Lcom/android/launcher3/dragndrop/DragView$2;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    .line 450
    .local v1, "fraction":F
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView$2;->val$shiftX:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/android/launcher3/dragndrop/DragView;->-$$Nest$fputmAnimatedShiftX(Lcom/android/launcher3/dragndrop/DragView;I)V

    .line 451
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView$2;->val$shiftY:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v0, v2}, Lcom/android/launcher3/dragndrop/DragView;->-$$Nest$fputmAnimatedShiftY(Lcom/android/launcher3/dragndrop/DragView;I)V

    .line 452
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$2;->this$0:Lcom/android/launcher3/dragndrop/DragView;

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/DragView;->-$$Nest$mapplyTranslation(Lcom/android/launcher3/dragndrop/DragView;)V

    .line 453
    return-void
.end method
