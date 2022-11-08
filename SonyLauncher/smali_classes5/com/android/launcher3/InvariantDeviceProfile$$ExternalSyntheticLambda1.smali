.class public final synthetic Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;->f$0:F

    iput p2, p0, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;->f$1:F

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;->f$0:F

    iget v1, p0, Lcom/android/launcher3/InvariantDeviceProfile$$ExternalSyntheticLambda1;->f$1:F

    check-cast p1, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    check-cast p2, Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/InvariantDeviceProfile;->lambda$invDistWeightedInterpolate$4(FFLcom/android/launcher3/InvariantDeviceProfile$DisplayOption;Lcom/android/launcher3/InvariantDeviceProfile$DisplayOption;)I

    move-result p1

    return p1
.end method
