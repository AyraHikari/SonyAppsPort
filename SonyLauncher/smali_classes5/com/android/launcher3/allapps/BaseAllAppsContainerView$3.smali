.class Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseAllAppsContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->addSpringFromFlingUpdateListener(Landroid/animation/ValueAnimator;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

.field final synthetic val$progress:F

.field final synthetic val$velocity:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;FF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    .line 759
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;"
    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iput p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;->val$progress:F

    iput p3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;->val$velocity:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animator"    # Landroid/animation/Animator;

    .line 762
    .local p0, "this":Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;, "Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;"
    iget v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;->val$progress:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v1, v0

    .line 763
    .local v1, "distance":F
    nop

    .line 764
    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    long-to-float v0, v2

    const v2, 0x3fd9999a    # 1.7f

    mul-float/2addr v0, v2

    div-float v0, v1, v0

    iget v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;->val$velocity:F

    add-float/2addr v0, v2

    .line 763
    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 766
    .local v0, "settleVelocity":F
    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$3;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    const/high16 v3, 0x44960000    # 1200.0f

    mul-float/2addr v3, v0

    .line 767
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 766
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x3e8

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;I)V

    .line 768
    return-void
.end method
