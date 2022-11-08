.class public final synthetic Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/dragndrop/DragView;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/dragndrop/DragView;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/dragndrop/DragView;

    iput p2, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;->f$1:F

    iput p3, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;->f$2:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;->f$0:Lcom/android/launcher3/dragndrop/DragView;

    iget v1, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;->f$1:F

    iget v2, p0, Lcom/android/launcher3/dragndrop/DragView$$ExternalSyntheticLambda3;->f$2:F

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/launcher3/dragndrop/DragView;->lambda$new$0$com-android-launcher3-dragndrop-DragView(FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
