.class public final synthetic Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/anim/AnimatorPlaybackController$ProgressMapper;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/anim/AnimatorPlaybackController;FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iput p2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;->f$1:F

    iput p3, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;->f$2:F

    return-void
.end method


# virtual methods
.method public final getProgress(FF)F
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;->f$0:Lcom/android/launcher3/anim/AnimatorPlaybackController;

    iget v1, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;->f$1:F

    iget v2, p0, Lcom/android/launcher3/anim/AnimatorPlaybackController$$ExternalSyntheticLambda5;->f$2:F

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/android/launcher3/anim/AnimatorPlaybackController;->lambda$startWithVelocity$0$com-android-launcher3-anim-AnimatorPlaybackController(FFFF)F

    move-result p1

    return p1
.end method
