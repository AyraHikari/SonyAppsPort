.class Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PageIndicatorDots.java"


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


# direct methods
.method constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    .line 204
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 208
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-$$Nest$fputmEntryAnimationRadiusFactors(Lcom/android/launcher3/pageindicators/PageIndicatorDots;[F)V

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidateOutline()V

    .line 210
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$3;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-virtual {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->invalidate()V

    .line 211
    return-void
.end method
