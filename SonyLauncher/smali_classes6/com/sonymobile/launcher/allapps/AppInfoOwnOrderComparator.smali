.class public Lcom/sonymobile/launcher/allapps/AppInfoOwnOrderComparator;
.super Ljava/lang/Object;
.source "AppInfoOwnOrderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/model/data/ItemInfo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I
    .locals 4
    .param p1, "a"    # Lcom/android/launcher3/model/data/ItemInfo;
    .param p2, "b"    # Lcom/android/launcher3/model/data/ItemInfo;

    .line 19
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v0, v0

    iget v2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    int-to-long v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 14
    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    check-cast p2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/sonymobile/launcher/allapps/AppInfoOwnOrderComparator;->compare(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result p1

    return p1
.end method
