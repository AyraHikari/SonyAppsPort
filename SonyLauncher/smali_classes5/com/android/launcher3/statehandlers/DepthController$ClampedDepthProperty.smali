.class public Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;
.super Landroid/util/FloatProperty;
.source "DepthController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/statehandlers/DepthController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClampedDepthProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "Lcom/android/launcher3/statehandlers/DepthController;",
        ">;"
    }
.end annotation


# instance fields
.field private final mMaxValue:F

.field private final mMinValue:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "minValue"    # F
    .param p2, "maxValue"    # F

    .line 79
    const-string v0, "depthClamped"

    invoke-direct {p0, v0}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 80
    iput p1, p0, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->mMinValue:F

    .line 81
    iput p2, p0, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->mMaxValue:F

    .line 82
    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/lang/Float;
    .locals 1
    .param p1, "depthController"    # Lcom/android/launcher3/statehandlers/DepthController;

    .line 91
    invoke-static {p1}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$fgetmDepth(Lcom/android/launcher3/statehandlers/DepthController;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    check-cast p1, Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->get(Lcom/android/launcher3/statehandlers/DepthController;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Lcom/android/launcher3/statehandlers/DepthController;F)V
    .locals 2
    .param p1, "depthController"    # Lcom/android/launcher3/statehandlers/DepthController;
    .param p2, "depth"    # F

    .line 86
    iget v0, p0, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->mMinValue:F

    iget v1, p0, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->mMaxValue:F

    invoke-static {p2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/statehandlers/DepthController;->-$$Nest$msetDepth(Lcom/android/launcher3/statehandlers/DepthController;F)V

    .line 87
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 74
    check-cast p1, Lcom/android/launcher3/statehandlers/DepthController;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/statehandlers/DepthController$ClampedDepthProperty;->setValue(Lcom/android/launcher3/statehandlers/DepthController;F)V

    return-void
.end method
