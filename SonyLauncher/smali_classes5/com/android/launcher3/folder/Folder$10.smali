.class Lcom/android/launcher3/folder/Folder$10;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/Folder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 2
    .param p1, "lhs"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "rhs"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 1608
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    if-eq v0, v1, :cond_0

    .line 1609
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->rank:I

    sub-int/2addr v0, v1

    return v0

    .line 1610
    :cond_0
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_1

    .line 1611
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    sub-int/2addr v0, v1

    return v0

    .line 1613
    :cond_1
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1604
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/folder/Folder$10;->compare(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p1

    return p1
.end method
