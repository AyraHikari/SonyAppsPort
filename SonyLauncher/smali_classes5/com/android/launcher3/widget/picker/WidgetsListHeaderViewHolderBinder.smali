.class public final Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;
.super Ljava/lang/Object;
.source "WidgetsListHeaderViewHolderBinder.java"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
        "Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mListDrawableFactory:Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

.field private final mOnHeaderClickListener:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater;Lcom/android/launcher3/widget/picker/OnHeaderClickListener;Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;)V
    .locals 0
    .param p1, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p2, "onHeaderClickListener"    # Lcom/android/launcher3/widget/picker/OnHeaderClickListener;
    .param p3, "listDrawableFactory"    # Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 41
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mOnHeaderClickListener:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

    .line 42
    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mListDrawableFactory:Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    .line 43
    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;ILjava/util/List;)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;
    .param p2, "data"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;",
            "Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 56
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;->mWidgetsListHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 57
    .local v0, "widgetsListHeader":Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    .line 58
    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 59
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    and-int/lit8 v4, p3, 0x2

    if-eqz v4, :cond_1

    move v2, v3

    .line 63
    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->isWidgetListShown()Z

    move-result v3

    .line 60
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->obtain(ZZZ)Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    .line 64
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setOnExpandChangeListener(Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;)V

    .line 67
    return-void
.end method

.method synthetic lambda$bindViewHolder$0$com-android-launcher3-widget-picker-WidgetsListHeaderViewHolderBinder(Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;Z)V
    .locals 2
    .param p1, "data"    # Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;
    .param p2, "isExpanded"    # Z

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mOnHeaderClickListener:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 66
    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    .line 65
    invoke-interface {v0, p2, v1}, Lcom/android/launcher3/widget/picker/OnHeaderClickListener;->onHeaderClicked(ZLcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;

    move-result-object p1

    return-object p1
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 47
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/launcher3/R$layout;->widgets_list_row_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 49
    .local v0, "header":Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListHeaderViewHolderBinder;->mListDrawableFactory:Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createHeaderBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 50
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListHeaderHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V

    return-object v1
.end method
