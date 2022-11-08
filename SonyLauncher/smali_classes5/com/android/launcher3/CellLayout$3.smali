.class Lcom/android/launcher3/CellLayout$3;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$finalPreviewOffsetX:F

.field final synthetic val$finalPreviewOffsetY:F

.field final synthetic val$initPreviewOffsetX:F

.field final synthetic val$initPreviewOffsetY:F

.field final synthetic val$item:Lcom/android/launcher3/Reorderable;


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;FFFFLcom/android/launcher3/Reorderable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/CellLayout;

    .line 1115
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$3;->this$0:Lcom/android/launcher3/CellLayout;

    iput p2, p0, Lcom/android/launcher3/CellLayout$3;->val$initPreviewOffsetX:F

    iput p3, p0, Lcom/android/launcher3/CellLayout$3;->val$finalPreviewOffsetX:F

    iput p4, p0, Lcom/android/launcher3/CellLayout$3;->val$initPreviewOffsetY:F

    iput p5, p0, Lcom/android/launcher3/CellLayout$3;->val$finalPreviewOffsetY:F

    iput-object p6, p0, Lcom/android/launcher3/CellLayout$3;->val$item:Lcom/android/launcher3/Reorderable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 1118
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1119
    .local v0, "r":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$initPreviewOffsetX:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$finalPreviewOffsetX:F

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    .line 1120
    .local v2, "x":F
    sub-float/2addr v1, v0

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$initPreviewOffsetY:F

    mul-float/2addr v1, v3

    iget v3, p0, Lcom/android/launcher3/CellLayout$3;->val$finalPreviewOffsetY:F

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    .line 1121
    .local v1, "y":F
    iget-object v3, p0, Lcom/android/launcher3/CellLayout$3;->val$item:Lcom/android/launcher3/Reorderable;

    invoke-interface {v3, v2, v1}, Lcom/android/launcher3/Reorderable;->setReorderPreviewOffset(FF)V

    .line 1122
    return-void
.end method
