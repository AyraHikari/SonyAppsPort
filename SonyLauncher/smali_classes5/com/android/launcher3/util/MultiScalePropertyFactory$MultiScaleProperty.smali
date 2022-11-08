.class Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;
.super Landroid/util/FloatProperty;
.source "MultiScalePropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/MultiScalePropertyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiScaleProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/FloatProperty<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final mInx:I

.field private mValue:F

.field final synthetic this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/MultiScalePropertyFactory;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/util/MultiScalePropertyFactory;
    .param p2, "inx"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 71
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>.MultiScaleProperty;"
    iput-object p1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    .line 72
    invoke-direct {p0, p3}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    .line 73
    iput p2, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mInx:I

    .line 74
    return-void
.end method


# virtual methods
.method public get(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .line 112
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>.MultiScaleProperty;"
    .local p1, "view":Landroid/view/View;, "TT;"
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 67
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>.MultiScaleProperty;"
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setValue$0$com-android-launcher3-util-MultiScalePropertyFactory$MultiScaleProperty(Ljava/lang/Integer;Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "property"    # Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;

    .line 83
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>.MultiScaleProperty;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mInx:I

    if-eq v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmMinOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v1

    iget v2, p2, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fputmMinOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    .line 85
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmMaxOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v1

    iget v2, p2, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fputmMaxOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmMultiplicationOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v1

    iget v2, p2, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fputmMultiplicationOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    .line 88
    :cond_0
    return-void
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 5
    .param p2, "newValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>.MultiScaleProperty;"
    .local p1, "obj":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmLastIndexSet(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mInx:I

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fputmMinOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fputmMaxOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fputmMultiplicationOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    .line 82
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmProperties(Lcom/android/launcher3/util/MultiScalePropertyFactory;)Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 89
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    iget v1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mInx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fputmLastIndexSet(Lcom/android/launcher3/util/MultiScalePropertyFactory;Ljava/lang/Integer;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmMinOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 92
    .local v0, "minValue":F
    iget-object v1, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v1}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmMaxOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 93
    .local v1, "maxValue":F
    iget-object v2, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v2}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmMultiplicationOfOthers(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v2

    mul-float/2addr v2, p2

    .line 94
    .local v2, "multValue":F
    iget-object v3, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(FFF)F

    move-result v4

    invoke-static {v3, v4}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fputmLastAggregatedValue(Lcom/android/launcher3/util/MultiScalePropertyFactory;F)V

    .line 95
    iput p2, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    .line 96
    iget-object v3, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->this$0:Lcom/android/launcher3/util/MultiScalePropertyFactory;

    invoke-static {v3}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->-$$Nest$fgetmLastAggregatedValue(Lcom/android/launcher3/util/MultiScalePropertyFactory;)F

    move-result v4

    invoke-virtual {v3, p1, v4}, Lcom/android/launcher3/util/MultiScalePropertyFactory;->apply(Landroid/view/View;F)V

    .line 103
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 67
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>.MultiScaleProperty;"
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 117
    .local p0, "this":Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;, "Lcom/android/launcher3/util/MultiScalePropertyFactory<TT;>.MultiScaleProperty;"
    iget v0, p0, Lcom/android/launcher3/util/MultiScalePropertyFactory$MultiScaleProperty;->mValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
