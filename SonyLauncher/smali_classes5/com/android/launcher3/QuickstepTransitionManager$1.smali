.class Lcom/android/launcher3/QuickstepTransitionManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/QuickstepTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 218
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$1;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$1;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->clearForceInvisibleFlag(I)V

    .line 227
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$1;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v0, v0, Lcom/android/launcher3/QuickstepTransitionManager;->mLauncher:Lcom/android/launcher3/BaseQuickstepLauncher;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseQuickstepLauncher;->addForceInvisibleFlag(I)V

    .line 222
    return-void
.end method
