.class Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;
.super Landroid/util/FloatProperty;
.source "PredictedAppIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/uioverrides/PredictedAppIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/uioverrides/PredictedAppIcon;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/String;

    .line 98
    invoke-direct {p0, p1}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)Ljava/lang/Float;
    .locals 1
    .param p1, "predictedAppIcon"    # Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    .line 107
    invoke-static {p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->-$$Nest$fgetmSlotMachineIconTranslationY(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 98
    check-cast p1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;->get(Lcom/android/launcher3/uioverrides/PredictedAppIcon;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/uioverrides/PredictedAppIcon;F)V
    .locals 0
    .param p1, "predictedAppIcon"    # Lcom/android/launcher3/uioverrides/PredictedAppIcon;
    .param p2, "transY"    # F

    .line 101
    invoke-static {p1, p2}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->-$$Nest$fputmSlotMachineIconTranslationY(Lcom/android/launcher3/uioverrides/PredictedAppIcon;F)V

    .line 102
    invoke-virtual {p1}, Lcom/android/launcher3/uioverrides/PredictedAppIcon;->invalidate()V

    .line 103
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 98
    check-cast p1, Lcom/android/launcher3/uioverrides/PredictedAppIcon;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/uioverrides/PredictedAppIcon$1;->setValue(Lcom/android/launcher3/uioverrides/PredictedAppIcon;F)V

    return-void
.end method
