.class public final synthetic Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/android/launcher3/util/SafeCloseable;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

.field public final synthetic f$1:Lcom/android/launcher3/util/SafeCloseable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/uioverrides/PredictedAppIcon;Lcom/android/launcher3/util/SafeCloseable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iput-object p2, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/util/SafeCloseable;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    iget-object v1, p0, Lcom/android/launcher3/uioverrides/PredictedAppIcon$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/util/SafeCloseable;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->lambda$prepareDrawDragView$3$com-android-launcher3-uioverrides-PredictedAppIcon(Lcom/android/launcher3/util/SafeCloseable;)V

    return-void
.end method
