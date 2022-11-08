.class Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;
.super Landroid/util/FloatProperty;
.source "MultiAdditivePropertyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/MultiAdditivePropertyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiAdditiveProperty"
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

.field final synthetic this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;ILjava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/launcher3/util/MultiAdditivePropertyFactory;
    .param p2, "inx"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 69
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>.MultiAdditiveProperty;"
    iput-object p1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    .line 70
    invoke-direct {p0, p3}, Landroid/util/FloatProperty;-><init>(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->mValue:F

    .line 71
    iput p2, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->mInx:I

    .line 72
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

    .line 103
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>.MultiAdditiveProperty;"
    .local p1, "view":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->-$$Nest$fgetmProperty(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Landroid/util/Property;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>.MultiAdditiveProperty;"
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method synthetic lambda$setValue$0$com-android-launcher3-util-MultiAdditivePropertyFactory$MultiAdditiveProperty(Ljava/lang/Integer;Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Integer;
    .param p2, "property"    # Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;

    .line 79
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>.MultiAdditiveProperty;"
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->mInx:I

    if-eq v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->-$$Nest$fgetmAggregationOfOthers(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)F

    move-result v1

    iget v2, p2, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->mValue:F

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->-$$Nest$fputmAggregationOfOthers(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;F)V

    .line 82
    :cond_0
    return-void
.end method

.method public setValue(Landroid/view/View;F)V
    .locals 2
    .param p2, "newValue"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;F)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>.MultiAdditiveProperty;"
    .local p1, "obj":Landroid/view/View;, "TT;"
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->-$$Nest$fgetmLastIndexSet(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->mInx:I

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->-$$Nest$fputmAggregationOfOthers(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;F)V

    .line 78
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->-$$Nest$fgetmProperties(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)Landroid/util/ArrayMap;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;)V

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    iget v1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->mInx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->-$$Nest$fputmLastIndexSet(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;Ljava/lang/Integer;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    invoke-static {v0}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->-$$Nest$fgetmAggregationOfOthers(Lcom/android/launcher3/util/MultiAdditivePropertyFactory;)F

    move-result v0

    add-float/2addr v0, p2

    .line 86
    .local v0, "lastAggregatedValue":F
    iput p2, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->mValue:F

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->this$0:Lcom/android/launcher3/util/MultiAdditivePropertyFactory;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory;->apply(Landroid/view/View;F)V

    .line 94
    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 65
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>.MultiAdditiveProperty;"
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->setValue(Landroid/view/View;F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 108
    .local p0, "this":Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;, "Lcom/android/launcher3/util/MultiAdditivePropertyFactory<TT;>.MultiAdditiveProperty;"
    iget v0, p0, Lcom/android/launcher3/util/MultiAdditivePropertyFactory$MultiAdditiveProperty;->mValue:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
