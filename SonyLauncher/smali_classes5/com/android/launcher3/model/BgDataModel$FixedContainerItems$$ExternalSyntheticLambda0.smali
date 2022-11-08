.class public final synthetic Lcom/android/launcher3/model/BgDataModel$FixedContainerItems$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems$$ExternalSyntheticLambda0;->f$0:Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/model/BgDataModel$FixedContainerItems;->lambda$setItems$0$com-android-launcher3-model-BgDataModel$FixedContainerItems(Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method
