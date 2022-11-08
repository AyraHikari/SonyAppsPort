.class Lcom/android/launcher3/QuickstepTransitionManager$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuickstepTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/QuickstepTransitionManager;->getOpeningWindowAnimatorsForWidget(Lcom/android/launcher3/widget/LauncherAppWidgetHostView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/graphics/Rect;Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field final synthetic val$openingTargets:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Lcom/android/quickstep/RemoteAnimationTargets;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/QuickstepTransitionManager;

    .line 953
    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$11;->this$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$11;->val$openingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .line 956
    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$11;->val$openingTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    .line 957
    return-void
.end method
