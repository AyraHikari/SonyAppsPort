.class public final Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;
.super Ljava/lang/Object;
.source "WidgetsListSearchHeaderViewHolderBinder.java"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;",
        "Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;",
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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p2, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->mOnHeaderClickListener:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

    .line 43
    iput-object p3, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->mListDrawableFactory:Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    .line 44
    return-void
.end method


# virtual methods
.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;

    check-cast p2, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;ILjava/util/List;)V

    return-void
.end method

.method public bindViewHolder(Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;ILjava/util/List;)V
    .locals 5
    .param p1, "viewHolder"    # Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;
    .param p2, "data"    # Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;",
            "Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;->mWidgetsListHeader:Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 58
    .local v0, "widgetsListHeader":Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    invoke-virtual {v0, p2}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->applyFromItemInfoWithIcon(Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V

    .line 59
    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->isWidgetListShown()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setExpanded(Z)V

    .line 60
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

    .line 64
    :cond_1
    invoke-virtual {p2}, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->isWidgetListShown()Z

    move-result v3

    .line 61
    invoke-static {v1, v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;->obtain(ZZZ)Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;

    move-result-object v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setListDrawableState(Lcom/android/launcher3/widget/picker/WidgetsListDrawableState;)V

    .line 65
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2}, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setOnExpandChangeListener(Lcom/android/launcher3/widget/picker/WidgetsListHeader$OnExpansionChangeListener;)V

    .line 68
    return-void
.end method

.method synthetic lambda$bindViewHolder$0$com-android-launcher3-widget-picker-WidgetsListSearchHeaderViewHolderBinder(Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;Z)V
    .locals 2
    .param p1, "data"    # Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;
    .param p2, "isExpanded"    # Z

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->mOnHeaderClickListener:Lcom/android/launcher3/widget/picker/OnHeaderClickListener;

    iget-object v1, p1, Lcom/android/launcher3/widget/model/WidgetsListSearchHeaderEntry;->mPkgItem:Lcom/android/launcher3/model/data/PackageItemInfo;

    .line 67
    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromPackageItemInfo(Lcom/android/launcher3/model/data/PackageItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    .line 66
    invoke-interface {v0, p2, v1}, Lcom/android/launcher3/widget/picker/OnHeaderClickListener;->onHeaderClicked(ZLcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method public bridge synthetic newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;

    move-result-object p1

    return-object p1
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 48
    iget-object v0, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/launcher3/R$layout;->widgets_list_row_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsListHeader;

    .line 50
    .local v0, "header":Lcom/android/launcher3/widget/picker/WidgetsListHeader;
    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderViewHolderBinder;->mListDrawableFactory:Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/picker/WidgetsListDrawableFactory;->createHeaderBackgroundDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsListHeader;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/picker/WidgetsListSearchHeaderHolder;-><init>(Lcom/android/launcher3/widget/picker/WidgetsListHeader;)V

    return-object v1
.end method
