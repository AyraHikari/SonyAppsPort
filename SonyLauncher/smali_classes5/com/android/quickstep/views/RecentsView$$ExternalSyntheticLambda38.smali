.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic f$1:I

.field public final synthetic f$2:[Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;I[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput p2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;->f$1:I

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;->f$2:[Z

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget v1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;->f$1:I

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda38;->f$2:[Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$createTaskLaunchAnimation$26$com-android-quickstep-views-RecentsView(I[ZLandroid/animation/ValueAnimator;)V

    return-void
.end method
