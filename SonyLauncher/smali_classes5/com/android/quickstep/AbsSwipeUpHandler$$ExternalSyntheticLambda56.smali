.class public final synthetic Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda56;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/animation/ValueAnimator;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda56;->f$0:Landroid/animation/ValueAnimator;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/quickstep/AbsSwipeUpHandler$$ExternalSyntheticLambda56;->f$0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
