.class Lcom/android/launcher3/QuickstepTransitionManager$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getLauncherContentAnimator(ZIZ)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$appsView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 500
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$6;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$appsView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 503
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$6;->val$appsView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 504
    return-void
.end method
