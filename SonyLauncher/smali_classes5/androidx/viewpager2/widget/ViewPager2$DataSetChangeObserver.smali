.class abstract Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "ViewPager2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager2/widget/ViewPager2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "DataSetChangeObserver"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1659
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/viewpager2/widget/ViewPager2$1;)V
    .locals 0
    .param p1, "x0"    # Landroidx/viewpager2/widget/ViewPager2$1;

    .line 1659
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onChanged()V
.end method

.method public final onItemRangeChanged(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 1665
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    .line 1666
    return-void
.end method

.method public final onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 1671
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    .line 1672
    return-void
.end method

.method public final onItemRangeInserted(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 1676
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    .line 1677
    return-void
.end method

.method public final onItemRangeMoved(III)V
    .locals 0
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I
    .param p3, "itemCount"    # I

    .line 1686
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    .line 1687
    return-void
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 1681
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2$DataSetChangeObserver;->onChanged()V

    .line 1682
    return-void
.end method
