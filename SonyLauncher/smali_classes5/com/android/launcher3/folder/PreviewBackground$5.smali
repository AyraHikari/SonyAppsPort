.class Lcom/android/launcher3/folder/PreviewBackground$5;
.super Ljava/lang/Object;
.source "PreviewBackground.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/PreviewBackground;->animateScale(FLjava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/PreviewBackground;

.field final synthetic val$scale0:F

.field final synthetic val$scale1:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/PreviewBackground;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/PreviewBackground;

    .line 426
    iput-object p1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iput p2, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale1:F

    iput p3, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale0:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 429
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 430
    .local v0, "prog":F
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    iget v2, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale1:F

    mul-float/2addr v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v0

    iget v4, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->val$scale0:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/PreviewBackground;->mScale:F

    .line 431
    iget-object v1, p0, Lcom/android/launcher3/folder/PreviewBackground$5;->this$0:Lcom/android/launcher3/folder/PreviewBackground;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/PreviewBackground;->invalidate()V

    .line 432
    return-void
.end method
