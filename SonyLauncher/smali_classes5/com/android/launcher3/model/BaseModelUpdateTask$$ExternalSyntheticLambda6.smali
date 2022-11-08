.class public final synthetic Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/util/IntSparseArrayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/util/IntSparseArrayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/util/IntSparseArrayMap;

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/BaseModelUpdateTask$$ExternalSyntheticLambda6;->f$0:Lcom/android/launcher3/util/IntSparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    return-object p1
.end method
