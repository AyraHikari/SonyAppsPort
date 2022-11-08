.class Lcom/android/launcher3/CellLayout$2;
.super Ljava/lang/Object;
.source "CellLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/CellLayout;

.field final synthetic val$thisIndex:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/CellLayout;

    .line 291
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$2;->this$0:Lcom/android/launcher3/CellLayout;

    iput p2, p0, Lcom/android/launcher3/CellLayout$2;->val$thisIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 295
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$2;->this$0:Lcom/android/launcher3/CellLayout;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout;->mDragOutlineAlphas:[F

    iget v1, p0, Lcom/android/launcher3/CellLayout$2;->val$thisIndex:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$2;->this$0:Lcom/android/launcher3/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->invalidate()V

    .line 297
    return-void
.end method
