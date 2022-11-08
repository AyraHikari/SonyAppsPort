.class public final synthetic Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(FFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;->f$0:F

    iput p2, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;->f$1:F

    iput p3, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;->f$2:F

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 3

    iget v0, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;->f$0:F

    iget v1, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;->f$1:F

    iget v2, p0, Lcom/android/quickstep/util/AnimatorControllerWithResistance$$ExternalSyntheticLambda0;->f$2:F

    invoke-static {v0, v1, v2, p1}, Lcom/android/quickstep/util/AnimatorControllerWithResistance;->lambda$createRecentsResistanceAnim$0(FFFF)F

    move-result p1

    return p1
.end method
