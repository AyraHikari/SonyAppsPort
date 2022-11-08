.class public final synthetic Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/launcher3/model/ModelWriter;

.field public final synthetic f$1:Lcom/android/launcher3/model/data/ItemInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/model/ModelWriter;Lcom/android/launcher3/model/data/ItemInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iput-object p2, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;->f$0:Lcom/android/launcher3/model/ModelWriter;

    iget-object v1, p0, Lcom/android/launcher3/model/ModelWriter$$ExternalSyntheticLambda4;->f$1:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/model/ModelWriter;->lambda$moveItemInDatabase$0$com-android-launcher3-model-ModelWriter(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    return-object v0
.end method
