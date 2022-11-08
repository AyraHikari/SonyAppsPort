.class public Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;
.super Ljava/lang/Object;
.source "WidgetsDiffReporter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WidgetsDiffReporter"


# instance fields
.field private final mIconCache:Lcom/android/launcher3/icons/IconCache;

.field private final mListener:Landroidx/recyclerview/widget/RecyclerView$Adapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/icons/IconCache;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0
    .param p1, "iconCache"    # Lcom/android/launcher3/icons/IconCache;
    .param p2, "listener"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->mListener:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 49
    return-void
.end method

.method private compareAppNameAndType(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;)I
    .locals 3
    .param p1, "curRow"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .param p2, "newRow"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .param p3, "comparator"    # Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;

    .line 142
    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot compare PackageItemInfo if both rows are null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 148
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_2
    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 150
    const/4 v0, -0x1

    return v0

    .line 152
    :cond_3
    invoke-virtual {p3, p1, p2}, Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;->compare(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)I

    move-result v0

    .line 153
    .local v0, "diff":I
    if-nez v0, :cond_4

    .line 154
    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->getRank()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->getRank()I

    move-result v2

    sub-int/2addr v1, v2

    return v1

    .line 156
    :cond_4
    return v0
.end method

.method private hasHeaderUpdated(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 2
    .param p1, "curRow"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .param p2, "newRow"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 177
    instance-of v0, p2, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 180
    :cond_0
    instance-of v0, p2, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    if-eqz v0, :cond_1

    .line 183
    return v1

    .line 185
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hasWidgetsListContentChanged(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z
    .locals 1
    .param p1, "curRow"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .param p2, "newRow"    # Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 165
    instance-of v0, p1, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/android/launcher3/widget/model/WidgetsListContentEntry;

    if-nez v0, :cond_0

    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 167
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSamePackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;Lcom/android/launcher3/model/data/PackageItemInfo;)Z
    .locals 3
    .param p1, "curInfo"    # Lcom/android/launcher3/model/data/PackageItemInfo;
    .param p2, "newInfo"    # Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 189
    iget-object v0, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v0, v0, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    iget-object v1, p2, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->mIconCache:Lcom/android/launcher3/icons/IconCache;

    iget-object v1, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v2, p1, Lcom/android/launcher3/model/data/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 190
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/icons/IconCache;->isDefaultIcon(Lcom/android/launcher3/icons/BitmapInfo;Landroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 189
    :goto_0
    return v0
.end method


# virtual methods
.method public process(Ljava/util/ArrayList;Ljava/util/List;Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;)V
    .locals 10
    .param p3, "comparator"    # Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;",
            ">;",
            "Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "currentEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    .local p2, "newEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 75
    :cond_0
    nop

    .line 76
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 77
    .local v0, "orgEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 78
    .local v1, "orgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 80
    .local v2, "newIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 81
    .local v3, "orgRowEntry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    .line 84
    .local v4, "newRowEntry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    :cond_1
    invoke-direct {p0, v3, v4, p3}, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->compareAppNameAndType(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/picker/WidgetsListAdapter$WidgetListBaseRowEntryComparator;)I

    move-result v5

    .line 90
    .local v5, "diff":I
    const/4 v6, -0x1

    .line 91
    .local v6, "index":I
    const/4 v7, 0x0

    if-gez v5, :cond_3

    .line 92
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 93
    iget-object v8, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->mListener:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    .line 98
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 99
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    :cond_2
    move-object v3, v7

    goto :goto_2

    .line 100
    :cond_3
    if-lez v5, :cond_6

    .line 101
    if-eqz v3, :cond_4

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    :goto_0
    move v6, v8

    .line 103
    invoke-virtual {p1, v6, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 108
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    :cond_5
    move-object v4, v7

    .line 109
    iget-object v7, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->mListener:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v7, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemInserted(I)V

    goto :goto_2

    .line 116
    :cond_6
    iget-object v8, v3, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    iget-object v9, v4, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->isSamePackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;Lcom/android/launcher3/model/data/PackageItemInfo;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 117
    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->hasHeaderUpdated(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 118
    invoke-direct {p0, v3, v4}, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->hasWidgetsListContentChanged(Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 119
    :cond_7
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 120
    invoke-virtual {p1, v6, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v8, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->mListener:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v8, v6}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 127
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    goto :goto_1

    :cond_9
    move-object v8, v7

    :goto_1
    move-object v3, v8

    .line 128
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;

    :cond_a
    move-object v4, v7

    .line 130
    .end local v5    # "diff":I
    .end local v6    # "index":I
    :goto_2
    if-nez v3, :cond_1

    if-nez v4, :cond_1

    .line 131
    return-void

    .line 68
    .end local v0    # "orgEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    .end local v1    # "orgIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    .end local v2    # "newIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;>;"
    .end local v3    # "orgRowEntry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    .end local v4    # "newRowEntry":Lcom/android/launcher3/widget/model/WidgetsListBaseEntry;
    :cond_b
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_c

    .line 69
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 70
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 71
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsDiffReporter;->mListener:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 73
    :cond_c
    return-void
.end method
