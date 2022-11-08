.class public final synthetic Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

.field public final synthetic f$1:Lcom/android/launcher3/anim/AnimatorPlaybackController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;Lcom/android/launcher3/anim/AnimatorPlaybackController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    iput-object p2, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$$ExternalSyntheticLambda0;->f$0:Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;

    iget-object v1, p0, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory$$ExternalSyntheticLambda0;->f$1:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    invoke-virtual {v0, v1}, Lcom/android/quickstep/BaseActivityInterface$DefaultAnimationFactory;->lambda$createActivityInterface$0$com-android-quickstep-BaseActivityInterface$DefaultAnimationFactory(Lcom/android/launcher3/anim/AnimatorPlaybackController;)V

    return-void
.end method
