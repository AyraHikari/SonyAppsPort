.class Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;
.super Ljava/lang/Object;
.source "PageIndicatorDots.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/pageindicators/PageIndicatorDots;->playEntryAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    .line 192
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    iput p2, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .line 195
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-$$Nest$fgetmEntryAnimationRadiusFactors(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)[F

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->val$index:I

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    aput v2, v0, v1

    .line 196
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$2;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 197
    return-void
.end method
