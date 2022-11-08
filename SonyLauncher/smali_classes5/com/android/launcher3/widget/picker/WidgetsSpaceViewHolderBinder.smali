.class public Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;
.super Ljava/lang/Object;
.source "WidgetsSpaceViewHolderBinder.java"

# interfaces
.implements Lcom/android/launcher3/recyclerview/ViewHolderBinder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/recyclerview/ViewHolderBinder<",
        "Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final mEmptySpaceHeightProvider:Ljava/util/function/IntSupplier;


# direct methods
.method public constructor <init>(Ljava/util/function/IntSupplier;)V
    .locals 0
    .param p1, "emptySpaceHeightProvider"    # Ljava/util/function/IntSupplier;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;->mEmptySpaceHeightProvider:Ljava/util/function/IntSupplier;

    .line 43
    return-void
.end method


# virtual methods
.method public bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;ILjava/util/List;)V
    .locals 2
    .param p1, "holder"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "data"    # Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            "Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 53
    .local p4, "payloads":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    iget-object v1, p0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;->mEmptySpaceHeightProvider:Ljava/util/function/IntSupplier;

    invoke-interface {v1}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;->setFixedHeight(I)Z

    .line 54
    return-void
.end method

.method public bridge synthetic bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/lang/Object;ILjava/util/List;)V
    .locals 0

    .line 36
    check-cast p2, Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;->bindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/android/launcher3/widget/model/WidgetListSpaceEntry;ILjava/util/List;)V

    return-void
.end method

.method public newViewHolder(Landroid/view/ViewGroup;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .line 47
    new-instance v0, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$1;

    new-instance v1, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView;-><init>(Landroid/content/Context;Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$EmptySpaceView-IA;)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder$1;-><init>(Lcom/android/launcher3/widget/picker/WidgetsSpaceViewHolderBinder;Landroid/view/View;)V

    return-object v0
.end method
