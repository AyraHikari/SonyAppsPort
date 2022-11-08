.class public final synthetic Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/QuickstepTransitionManager;

.field public final synthetic f$1:Ljava/util/List;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/QuickstepTransitionManager;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iput-object p2, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;->f$0:Lcom/android/launcher3/QuickstepTransitionManager;

    iget-object v1, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;->f$1:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/launcher3/QuickstepTransitionManager$$ExternalSyntheticLambda9;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/QuickstepTransitionManager;->lambda$getLauncherContentAnimator$5$com-android-launcher3-QuickstepTransitionManager(Ljava/util/List;Z)V

    return-void
.end method
