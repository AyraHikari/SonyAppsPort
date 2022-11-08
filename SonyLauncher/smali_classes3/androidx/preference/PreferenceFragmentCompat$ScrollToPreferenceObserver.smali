.class Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PreferenceFragmentCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/PreferenceFragmentCompat;
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
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Ljava/lang/String;)V
    .locals 0
    .param p1, "adapter"    # Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "list"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p3, "preference"    # Landroidx/preference/Preference;
    .param p4, "key"    # Ljava/lang/String;

    .line 748
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 749
    iput-object p1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 750
    iput-object p2, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 751
    iput-object p3, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    .line 752
    iput-object p4, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 753
    return-void
.end method

.method private scrollToPreference()V
    .locals 2

    .line 756
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 758
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 759
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v1, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    .line 760
    invoke-interface {v1, v0}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Landroidx/preference/Preference;)I

    move-result v0

    .local v0, "position":I
    goto :goto_0

    .line 762
    .end local v0    # "position":I
    :cond_0
    iget-object v0, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    check-cast v0, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;

    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mKey:Ljava/lang/String;

    .line 763
    invoke-interface {v0, v1}, Landroidx/preference/PreferenceGroup$PreferencePositionCallback;->getPreferenceAdapterPosition(Ljava/lang/String;)I

    move-result v0

    .line 765
    .restart local v0    # "position":I
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 766
    iget-object v1, p0, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->mList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 768
    :cond_1
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 772
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 773
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 777
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 778
    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 782
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 783
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 787
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 788
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 797
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 798
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 792
    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat$ScrollToPreferenceObserver;->scrollToPreference()V

    .line 793
    return-void
.end method
