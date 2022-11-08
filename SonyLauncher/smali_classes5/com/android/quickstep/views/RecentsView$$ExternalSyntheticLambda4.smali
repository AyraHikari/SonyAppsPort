.class public final synthetic Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/views/RecentsView;

.field public final synthetic f$1:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic f$2:Lcom/android/quickstep/util/SurfaceTransactionApplier;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;->f$0:Lcom/android/quickstep/views/RecentsView;

    iput-object p2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;->f$1:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;->f$2:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;->f$0:Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;->f$1:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object v2, p0, Lcom/android/quickstep/views/RecentsView$$ExternalSyntheticLambda4;->f$2:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/quickstep/views/RecentsView;->lambda$launchSideTaskInLiveTileMode$2$com-android-quickstep-views-RecentsView([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/animation/ValueAnimator;)V

    return-void
.end method
