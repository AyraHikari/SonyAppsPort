.class public Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
.super Ljava/lang/Object;
.source "BgDataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/model/BgDataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedContainerItems"
.end annotation


# instance fields
.field public final containerId:I

.field public final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "containerId"    # I

    .line 462
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    .line 463
    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 465
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput p1, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    .line 467
    iput-object p2, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    .line 468
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;
    .locals 4

    .line 472
    new-instance v0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    iget v1, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 456
    invoke-virtual {p0}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->clone()Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$setItems$0$com-android-launcher3-model-BgDataModel$FixedContainerItems(Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 1
    .param p1, "item"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 478
    iget v0, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->containerId:I

    iput v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    .line 479
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 476
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/model/data/ItemInfo;>;"
    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 477
    new-instance v0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 481
    return-void
.end method
