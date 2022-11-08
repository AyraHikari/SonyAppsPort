.class public final synthetic Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda2;->f$0:I

    iput p2, p0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda2;->f$1:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda2;->f$0:I

    iget v1, p0, Lcom/android/launcher3/model/BaseLoaderResults$$ExternalSyntheticLambda2;->f$1:I

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v1, p1, p2}, Lcom/android/launcher3/model/BaseLoaderResults;->lambda$sortWorkspaceItemsSpatially$2(IILcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p1

    return p1
.end method
