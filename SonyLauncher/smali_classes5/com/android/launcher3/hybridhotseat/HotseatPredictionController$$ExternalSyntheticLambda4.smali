.class public final synthetic Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

.field public final synthetic f$1:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iput-object p2, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;

    iget-object v1, p0, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/hybridhotseat/HotseatPredictionController;->lambda$setPredictedItems$4$com-android-launcher3-hybridhotseat-HotseatPredictionController(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;Ljava/lang/Boolean;)V

    return-void
.end method
