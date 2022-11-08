.class public Lcom/android/launcher3/PendingAddItemInfo;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "PendingAddItemInfo.java"


# instance fields
.field public componentName:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method protected dumpProperties()Ljava/lang/String;
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->dumpProperties()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " componentName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTargetComponent()Landroid/content/ComponentName;
    .locals 2

    .line 57
    invoke-super {p0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    return-object v0
.end method

.method public makeShallowCopy()Lcom/android/launcher3/model/data/ItemInfo;
    .locals 2

    .line 48
    new-instance v0, Lcom/android/launcher3/PendingAddItemInfo;

    invoke-direct {v0}, Lcom/android/launcher3/PendingAddItemInfo;-><init>()V

    .line 49
    .local v0, "itemInfo":Lcom/android/launcher3/PendingAddItemInfo;
    invoke-virtual {v0, p0}, Lcom/android/launcher3/PendingAddItemInfo;->copyFrom(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 50
    iget-object v1, p0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 51
    return-object v0
.end method
