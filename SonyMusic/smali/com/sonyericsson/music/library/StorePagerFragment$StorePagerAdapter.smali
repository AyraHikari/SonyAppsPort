.class Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "StorePagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/library/StorePagerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorePagerAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFragmentTag:Ljava/lang/String;

.field private final mStorePages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sonyericsson/music/library/store/StorePage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 161
    iput-object p2, p0, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;->mContext:Landroid/content/Context;

    .line 162
    iput-object p3, p0, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;->mStorePages:Ljava/util/List;

    .line 163
    iput-object p4, p0, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;->mFragmentTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;->mStorePages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 2

    const-string v0, "mora_charts"

    .line 169
    iget-object v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;->mFragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;->mStorePages:Ljava/util/List;

    .line 174
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/music/library/store/StorePage;

    invoke-virtual {v1}, Lcom/sonyericsson/music/library/store/StorePage;->getStorePageContent()Ljava/util/ArrayList;

    move-result-object v1

    .line 173
    invoke-static {p1, v1, v0}, Lcom/sonyericsson/music/library/store/StoreFragment;->newInstance(ILjava/util/ArrayList;Z)Lcom/sonyericsson/music/library/store/StoreFragment;

    move-result-object p1

    return-object p1
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sonyericsson/music/library/StorePagerFragment$StorePagerAdapter;->mStorePages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sonyericsson/music/library/store/StorePage;

    invoke-virtual {p1}, Lcom/sonyericsson/music/library/store/StorePage;->getTitleResId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
