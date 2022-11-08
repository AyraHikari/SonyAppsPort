.class public final synthetic Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/app/prediction/AppPredictor$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/QuickstepModelDelegate;

.field public final synthetic f$1:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/QuickstepModelDelegate;Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/model/QuickstepModelDelegate;

    iput-object p2, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    return-void
.end method


# virtual methods
.method public final onTargetsAvailable(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda2;->f$0:Lcom/android/launcher3/model/QuickstepModelDelegate;

    iget-object v1, p0, Lcom/android/launcher3/model/QuickstepModelDelegate$$ExternalSyntheticLambda2;->f$1:Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/model/QuickstepModelDelegate;->lambda$registerPredictor$1$com-android-launcher3-model-QuickstepModelDelegate(Lcom/android/launcher3/model/QuickstepModelDelegate$PredictorState;Ljava/util/List;)V

    return-void
.end method
