.class Landroidx/viewpager/widget/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/ViewPager;)V
    .locals 0

    .line 3149
    iput-object p1, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 3150
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 3154
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 3155
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 3158
    iget-object v0, p0, Landroidx/viewpager/widget/ViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->dataSetChanged()V

    .line 3159
    return-void
.end method
