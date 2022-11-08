.class public final synthetic Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator$$ExternalSyntheticLambda1;->f$0:Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;

    check-cast p1, Landroid/view/View;

    invoke-virtual {v0, p1}, Lcom/android/quickstep/util/UnfoldMoveFromCenterWorkspaceAnimator;->lambda$onTransitionFinished$1$com-android-quickstep-util-UnfoldMoveFromCenterWorkspaceAnimator(Landroid/view/View;)V

    return-void
.end method
