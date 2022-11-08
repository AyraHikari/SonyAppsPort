.class Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PageIndicatorDots.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pageindicators/PageIndicatorDots;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationCycleListener"
.end annotation


# instance fields
.field private mCancelled:Z

.field final synthetic this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 324
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;-><init>(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    .line 329
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 333
    iget-boolean v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->mCancelled:Z

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-$$Nest$fputmAnimator(Lcom/android/launcher3/pageindicators/PageIndicatorDots;Landroid/animation/ObjectAnimator;)V

    .line 335
    iget-object v0, p0, Lcom/android/launcher3/pageindicators/PageIndicatorDots$AnimationCycleListener;->this$0:Lcom/android/launcher3/pageindicators/PageIndicatorDots;

    invoke-static {v0}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-$$Nest$fgetmFinalPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/pageindicators/PageIndicatorDots;->-$$Nest$manimateToPosition(Lcom/android/launcher3/pageindicators/PageIndicatorDots;F)V

    .line 337
    :cond_0
    return-void
.end method
