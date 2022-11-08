.class Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScrollToPreferenceObserver"
.end annotation


# instance fields
.field private final mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final mKey:Ljava/lang/String;

.field private final mList:Landroidx/recyclerview/widget/RecyclerView;

.field private final mPreference:Landroidx/preference/Preference;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "list"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "preference"    # Landroidx/preference/Preference;
    .param p4, "key"    # Ljava/lang/String;

    .line 761
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 762
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 763
    iput-object p2, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 764
    iput-object p3, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    .line 765
    iput-object p4, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 766
    return-void
.end method

.method private scrollToPreference()V
    .locals 2

    .line 769
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 771
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 772
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 773
    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v0

    .local v0, "position":I
    goto :goto_0

    .line 775
    .end local v0    # "position":I
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 776
    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .line 778
    .restart local v0    # "position":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 779
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 781
    :cond_1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 785
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 786
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 790
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 791
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 795
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 796
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 800
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 801
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 810
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 811
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 805
    invoke-direct {p0}, Landroidx/preference/PreferenceFragment$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 806
    return-void
.end method
