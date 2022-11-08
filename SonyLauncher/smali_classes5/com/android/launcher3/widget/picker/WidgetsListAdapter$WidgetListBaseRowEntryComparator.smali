.class public Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;
.super Ljava/lang/Object;
.source "WidgetsListAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/picker/WidgetsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WidgetListBaseRowEntryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final mComparator:Lcom/android/launcher3/util/LabelComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    new-instance v0, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v0}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->mComparator:Lcom/android/launcher3/util/LabelComparator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)I
    .locals 3
    .param p1, "a"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .param p2, "b"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 459
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->mComparator:Lcom/android/launcher3/util/LabelComparator;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 460
    .local v0, "i":I
    if-eqz v0, :cond_0

    .line 461
    return v0

    .line 464
    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    iget-object v2, p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    return v1

    .line 465
    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    return v1

    .line 466
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 452
    check-cast p1, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->compare(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)I

    move-result p1

    return p1
.end method
